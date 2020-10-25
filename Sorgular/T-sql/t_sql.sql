/*1)Bekar sayýsý durumuna göre az,orta veya çok deðerlerini döndürelim*/

declare @toplam tinyint
select @toplam=count(ogretmen_medeni_hal) from ogretmen_veri where ogretmen_medeni_hal='Bekar'

if(@toplam<=3)
begin
print 'Bekar sayýsý az' + cast(@toplam as nvarchar(2))+' kiþi'
end

else if(@toplam >3 and @toplam <10)
begin
print 'Bekar sayýsý orta ' + cast(@toplam as nvarchar(2))+' kiþi'
end

else
begin
print 'Bekar sayýsý çok '+ cast(@toplam as nvarchar(2))+' kiþi'
end

/*2)Dershanemizdeki öðrencilerin diplomasýna göre baþarý deðerlerini döndürelim*/
declare @basari tinyint
select @basari=count(ogrenci_diploma) from ogrenci_ver where ogrenci_diploma<100

if(@basari<50)
begin
print 'Diploma puanlarý düþük '+cast(@basari as nvarchar(2))+ ' adet'
end

else if(@basari>50 and 75<@basari)
begin
print 'Diploma puanlarý orta '+cast(@basari as nvarchar(2))+ ' adet '
end

else
begin
print 'Diploma puanlarý yüksek '+cast(@basari as nvarchar(2))+ ' adet'
end
/*3)Öðrencilerin sýnýf_id sine göre sözel ve sayýsal olarak adlandýralým*/
select ogrenci_adi,ogrenci_soyadi,sube_id,'Sýnýf/Alan'=
case sube_id
when 1 then 'A (Sayýsal)'
when 2 then 'B (Sayýsal)'
when 3 then 'C (Sayýsal)'
when 4 then 'D (Eþit Aðýrlýk)'
when 5 then 'E (Eþit Aðýrlýk)'
when 6 then 'F (Eþit Aðýrlýk)'
else 'Sözel'
end
from ogrenci_ver

/*4)Diploma puanlarýný secerek baþarý oranlarýnýn karþýlýklarýný yazalým*/
select ogrenci_adi,ogrenci_soyadi,ogrenci_diploma,"BAÞARI"=
case
when ogrenci_diploma<50 then'Baþarýsýz'
when ogrenci_diploma<=60 then'Geçerli'
when ogrenci_diploma<70 then'Ýyi '
when ogrenci_diploma<85 then'Orta'
when ogrenci_diploma<=100 then'Çok iyi'
end
from ogrenci_ver
/*5)Derslerin alan bilgisini verelim.(Örn:Matematik ==> Hem sayýsal Hem Eþit aðýrlýk*/
select ders_adý,'Alaný'=
case
when ders_id=1 then 'Hem Sayýsal Hem E.Aðýrlýk'
when ders_id=2 then 'Sayýsal '
when ders_id=3 then 'Sayýsal '
when ders_id=4 then 'Sayýsal'
when ders_id=5 then 'Hem Sayýsal Hem E.Aðýrlýk '
when ders_id=6 then 'Hem Sayýsal Hem E.Aðýrlýk'
when ders_id=7 then 'Eþit Aðýrlýk '
when ders_id=8 then 'Eþit Aðýrlýk '
when ders_id=9 then 'Eþit Aðýrlýk '
when ders_id=10 then 'Eþit Aðýrlýk '
end
from ders_veri