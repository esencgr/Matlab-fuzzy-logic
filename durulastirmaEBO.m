global mu_birlestirme x
BirlestirmeMax 
k = find(mu_birlestirme== max(mu_birlestirme))

% mu_birlestirme uyelik dercelerinin i�inden en buyuk uyelik decelerinin
% indislerini  bulur bir vekt�r olarak saklar 

Z_buyukler= x(k) 
% bunlar�n z eksenindeki hangi de�erler oldu�unu bulur 

a=min (Z_buyukler)
b=max (Z_buyukler)

z=(a+b)/2

line (z,0:0.01:1)