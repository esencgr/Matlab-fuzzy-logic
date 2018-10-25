% alt ve ust : ��gen bulan�k alt k�mesinin i�inde bulundu�u evrensel
% kumenin s�n�rlar�
% a,c,b : ��genin ba�lang�c tepe ve biti� noktalar�
% xi: X evrensel k�mesindeki bir eleman
% mu_X: x evrensel k�mesindeki elemanlar�n ��gene �yelik dereceleri
% mu_xi: xi nin ��gene �yelik derecesi

function ucgenFISGiris(alt,a,c,b,ust,giris);

global mu_giris  CIKIS  mu_CIKIS ;    %bu de�i�kenler ba�ka programlarda da ayn�

% a,c,b noktalar�na g�re grafik �izme
alfa = 1 ;

%xi eleman�n�n uyel�k derecesini bulur
        if giris>=a & giris<=c
           mu_giris= alfa*(giris-a)/(c-a)
        else if giris>=c & giris<=b
           mu_giris= alfa*(giris-b)/(c-b)
        else mu_giris=0
        end
end
    
