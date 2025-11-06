clear;clc;

%x = rand(2668, 2489);
%mean(mean(sin(x)./(1+power(x, 3))))

key = 'stolek';
text = 'AHOJJAJSEMTVUJSUPERPOMOCNIK';
%šifrovaní původní funkcí
disp('Sifrovany vystup funkce cipher_for(text,key):')
cipher_for_var = cipher_for(text,key);
disp(cipher_for_var);
disp(newline)

disp('Sifrovany vystup vasi funkce cipher_task(text,key):')
cipher = cipher_task(text, key);
disp(cipher)

function cipher = cipher_task(text,key)
    keyNums = double(key);
    [~, numbers] = sort(keyNums);

    L = length(text);
    K = length(key);
    extra = mod(K - mod(L, K), K);
    if extra ~= 0
        text = pad(text, L + extra, 'right');
    end
    
    M = reshape(text, size(key, 2), [])';
    
    M_cipher = M(:, numbers);
    cipher = reshape(M_cipher, 1, []);
end

function cipher = cipher_for(text,key)

    keyNums = double(key);
    [keySorted, numbers] = sort(keyNums);
    
    k = 1;
    l = 1;
    for i = 1:size(text, 2)
        M(k, l) = text(i);
        l = l + 1;
        if mod(i, length(key)) == 0
            k = k+1;
            l = 1;
        end
    end
    
    for i = 1:ceil(length(text)/length(key))
        for j = 1:length(key)
            M_cipher(i,j) = M(i,numbers(j));
        end
    end

    for k = 1:numel(M_cipher)
        cipher(1,k) = M_cipher(k);
    end

end