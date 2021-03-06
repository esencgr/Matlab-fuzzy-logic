% alt ve ust : ��gen bulan�k alt k�mesinin i�inde bulundu�u evrensel
% kumenin s�n�rlar�
% a,c,b : ��genin ba�lang�c tepe ve biti� noktalar�
% xi: X evrensel k�mesindeki bir eleman
% mu_X: x evrensel k�mesindeki elemanlar�n ��gene �yelik dereceleri
% mu_xi: xi nin ��gene �yelik derecesi

function ucgen(alt,a,c,d,b,ust,xi);

global X  mu_X  mu_xi ;    %bu de�i�kenler ba�ka programlarda da ayn�

% a,c,b noktalar�na g�re grafik �izme
alfa = 1 ;
X1 = alt:0.001:a-0.001;
X2 = a:0.001:c-0.001;
X3 = c:0.001:d-0.001; 
X4 = d:0.001:b-0.001; 
X5 = b:0.001:ust;

mu_X1= zeros(size(X1));
mu_X2= alfa*(X2-a)/(c-a);
mu_X3= alfa*ones (size(X3));
mu_X4= alfa*(X4-b)/(d-b);
mu_X5= zeros(size(X5));

X=[X1 X2 X3 X4 X5];
mu_X=[mu_X1 mu_X2 mu_X3 mu_X4 mu_X5];
plot (X, mu_X)

%xi eleman�n�n uyel�k derecesini bulur
        if xi>=a & xi<=c
           mu_xi= alfa*(xi-a)/(c-a)
        else if xi>=c & xi<=d
           mu_xi=alfa
        else if  xi>=d & xi<=b
           mu_xi=alfa*(xi-b)/(d-b)
        else
                mu_xi=0
            end
            end
 end
    