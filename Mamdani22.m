global  mu_giris CIKIS mu_CIKIS ;
alt_x=0  ; ust_x=100;
alt_y=-5 ; ust_y=15;
alt_z=-10; ust_z=35;

%numerik giri�ler
x=30; y=3; z=0;

%bulanik k�melerin tan�mlanmas�

%1.SSD Giri�ine ait uyelik fonksiyonlar� ve bula��kla�t�rma 
ucgenFISGiris(alt_x,0,25,50,ust_x,x); 
 mu_x_I=mu_giris
ucgenFISGiris(alt_x,25,50,75,ust_x,x); 
 mu_x_S=mu_giris

%2.SD Giri�ine ait uyelik fonksiyonlar� ve bula��kla�t�rma 
ucgenFISGiris(alt_y,-5,0,5,ust_y,y); 
 mu_y_D=mu_giris
ucgenFISGiris(alt_y,0,5,10,ust_y,y); 
 mu_y_A=mu_giris

%3.SSVTS �IKI�INA  ait uyelik fonksiyonlar� ve bula��kla�t�rma 
ucgenFISGiris(alt_z,-10,0,10,ust_z);
Z=CIKIS;  mu_SC=mu_CIKIS;
ucgenFISGiris(alt_z,0,10,20,ust_z);
  mu_AZ=mu_CIKIS;
ucgenFISGiris(alt_z,10,20,30,ust_z);
  mu_O=mu_CIKIS;
ucgenFISGiris(alt_z,10,20,30,ust_z);
  mu_O=mu_CIKIS;
ucgenFISGiris(alt_z,20,30,35,ust_z);
  mu_C=mu_CIKIS;

%Kurallar�n giri� k�sm�ndaki �nc�l �nermelerini ba�layan norm ba�lac� VE BA�LACI olarak min operat�r� kullan�lm��t�r

%1.kuraal= SSD=I VE SD=D �SE
mu_kural1=min(mu_x_I,mu_y_D)

%2.kuraal= SSD=I VE SD=A �SE
mu_kural2=min(mu_x_I,mu_y_A)

%3.kuraal= SSD=S VE SD=D �SE
mu_kural3=min(mu_x_S,mu_y_D)

%4.kuraal= SSD=S VE SD=A �SE
mu_kural4=min(mu_x_S,mu_y_A)

%GEREKT�RME operat�r� olarak prod(*) kullan�lm�t�r

%1.kuraal ise O halde SSSVTS = SC ait sonu�
mu_sonuc1=mu_kural1*mu_SC;
%2.kuraal=ise O halde SSSVTS = AZ ait sonu�
mu_sonuc2=mu_kural2*mu_AZ;
%3.kuraal=ise O halde SSSVTS = O ait sonu�
mu_sonuc3=mu_kural3*mu_O;
%4.kuraal=ise O halde SSSVTS = C ait sonu�
mu_sonuc4=mu_kural4*mu_C;

plot (z,mu_sonuc1,z,mu_sonuc2,z,mu_sonuc3,z,mu_sonuc4)

%B�RLE�T�RME Operat�r� olarak max 
mu_birlestirme=max(max(mu_sonuc1,mu_sonuc2),max(mu_sonuc3,mu_sonuc4));
plot (Z,mu_birlestirme);

%DURULAST�RMA operat�r� olarak a��rl�k merkezi kullan�lm��t�r 
toplam_alan = sum (mu_birlestirme)

if toplam_alan==0 
    
    'A��rl�k merkezi y�nteminde alan s�f�r'
end 

z=sum(mu_birlestirme.*Z)/ toplam_alan
line (z, 0:0.01:1)











