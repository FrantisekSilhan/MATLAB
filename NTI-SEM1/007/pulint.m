#Funkce_z_prednasky 
#pulint(1,10, @log, 1e-6)
function x = pulint(a, b, g, eps) 
  while b-a>eps 
      s = (a+b)/2;
      if g(a)*g(s)>0
          a = s;
      else 
          b = s;
      end 
  end 
  x= (a+b)/2;
end 
