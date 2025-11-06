key = 'STOLEK';
cipher = 'UESSDL KTUTMI OAEZIBGUKAARJ N ';

disp('Desifrovany vystup funkce decipher_for(text,key):')
text = decipher_for(cipher, key);
disp(text)

disp('Desifrovany vystup vasi funkce decipher_task(text,key):')
text = decipher_task(cipher, key);
disp(text)

function text = decipher_task(cipher,key)
    keyNums = double(key);
    [~, numbers] = sort(keyNums);

    M_cipher = reshape(cipher, [], size(key, 2));

    M = M_cipher(:, numbers)';

    text = reshape(M, 1, []);
end

function text = decipher_for(cipher,key)

    keyNums = double(key);
    [keySorted, numbers] = sort(keyNums);
    
    k = 1;
    l = 1;
    for i = 1:size(cipher, 2)
        M_cipher(l, k) = cipher(i);
        l = l + 1;
        if mod(i, length(cipher)/length(key)) == 0
            k = k+1;
            l = 1;
        end
    end
    
    for i = 1:ceil(length(cipher)/length(key))
        for j = 1:length(key)
            M(i,j) = M_cipher(i,numbers(j));
        end
    end

    M = M';

    for k = 1:numel(M_cipher)
        text(1,k) = M(k);
    end

end