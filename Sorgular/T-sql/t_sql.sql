/*1)Bekar say�s� durumuna g�re az,orta veya �ok de�erlerini d�nd�relim*/

declare @toplam tinyint
select @toplam=count(ogretmen_medeni_hal) from ogretmen_veri where ogretmen_medeni_hal='Bekar'

if(@toplam<=3)
begin
print 'Bekar say�s� az' + cast(@toplam as nvarchar(2))+' ki�i'
end

else if(@toplam >3 and @toplam <10)
begin
print 'Bekar say�s� orta ' + cast(@toplam as nvarchar(2))+' ki�i'
end

else
begin
print 'Bekar say�s� �ok '+ cast(@toplam as nvarchar(2))+' ki�i'
end

/*2)Dershanemizdeki ��rencilerin diplomas�na g�re ba�ar� de�erlerini d�nd�relim*/
declare @basari tinyint
select @basari=count(ogrenci_diploma) from ogrenci_ver where ogrenci_diploma<100

if(@basari<50)
begin
print 'Diploma puanlar� d���k '+cast(@basari as nvarchar(2))+ ' adet'
end

else if(@basari>50 and 75<@basari)
begin
print 'Diploma puanlar� orta '+cast(@basari as nvarchar(2))+ ' adet '
end

else
begin
print 'Diploma puanlar� y�ksek '+cast(@basari as nvarchar(2))+ ' adet'
end
/*3)��rencilerin s�n�f_id sine g�re s�zel ve say�sal olarak adland�ral�m*/
select ogrenci_adi,ogrenci_soyadi,sube_id,'S�n�f/Alan'=
case sube_id
when 1 then 'A (Say�sal)'
when 2 then 'B (Say�sal)'
when 3 then 'C (Say�sal)'
when 4 then 'D (E�it A��rl�k)'
when 5 then 'E (E�it A��rl�k)'
when 6 then 'F (E�it A��rl�k)'
else 'S�zel'
end
from ogrenci_ver

/*4)Diploma puanlar�n� secerek ba�ar� oranlar�n�n kar��l�klar�n� yazal�m*/
select ogrenci_adi,ogrenci_soyadi,ogrenci_diploma,"BA�ARI"=
case
when ogrenci_diploma<50 then'Ba�ar�s�z'
when ogrenci_diploma<=60 then'Ge�erli'
when ogrenci_diploma<70 then'�yi '
when ogrenci_diploma<85 then'Orta'
when ogrenci_diploma<=100 then'�ok iyi'
end
from ogrenci_ver
/*5)Derslerin alan bilgisini verelim.(�rn:Matematik ==> Hem say�sal Hem E�it a��rl�k*/
select ders_ad�,'Alan�'=
case
when ders_id=1 then 'Hem Say�sal Hem E.A��rl�k'
when ders_id=2 then 'Say�sal '
when ders_id=3 then 'Say�sal '
when ders_id=4 then 'Say�sal'
when ders_id=5 then 'Hem Say�sal Hem E.A��rl�k '
when ders_id=6 then 'Hem Say�sal Hem E.A��rl�k'
when ders_id=7 then 'E�it A��rl�k '
when ders_id=8 then 'E�it A��rl�k '
when ders_id=9 then 'E�it A��rl�k '
when ders_id=10 then 'E�it A��rl�k '
end
from ders_veri