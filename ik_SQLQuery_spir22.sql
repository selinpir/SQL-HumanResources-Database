--CREATE TABLE Personel (
--    personel_id INT PRIMARY KEY identity(1,1),
--    ad VARCHAR(70) NOT NULL,
--    soyad VARCHAR(70) NOT NULL,
--    tc VARCHAR(11) UNIQUE NOT NULL,
--    ise_giris_tarihi DATE NOT NULL,
--    isten_cikis_tarihi DATE,
--    telefon VARCHAR(20) NOT NULL
--);

--CREATE TABLE PersonelEkBilgi (
--    ID INT PRIMARY KEY identity(1,1),
--    personel_ID INT,
--    EhliyetTuruID tinyint,
--    askerlik VARCHAR(50),
--    medeniDurum VARCHAR(20),
--    SGK VARCHAR(50),
--    cinsiyet CHAR(1),
--    dogumTarihi DATE,
--    Tecrube int,
--    CalismaTuruID tinyint,
--    maas DECIMAL(10,2),
--    FOREIGN KEY (Personel_ID) REFERENCES Personel(personel_id),
--    FOREIGN KEY (EhliyetTuruID) REFERENCES  EhliyetTuru(ID),
--    FOREIGN KEY (CalismaTuruID) REFERENCES CalismaTuru(ID)
--);

--CREATE TABLE CalismaTuru (
--    ID tinyint PRIMARY KEY identity(1,1),
--    turu VARCHAR(50)
--);

--CREATE TABLE EhliyetTuru (
--    ID tinyint PRIMARY KEY identity(1,1),
--    turu VARCHAR(50)
--);

--CREATE TABLE Departman (
--    d_ID tinyint PRIMARY KEY identity(1,1),
--    d_adi VARCHAR(50)
--);

--CREATE TABLE Pozisyon (
--    p_ID tinyint PRIMARY KEY identity(1,1),
--    p_adi VARCHAR(50),
--	DepartmanID tinyint,
--    FOREIGN KEY (DepartmanID) REFERENCES Departman(d_ID)
--);

--CREATE TABLE IzinTuru (
--    i_ID tinyint PRIMARY KEY identity(1,1),
--    i_turu VARCHAR(50)	
--);


--CREATE TABLE Izinler (
--    izin_ID tinyint PRIMARY KEY identity(1,1),
--    izinTuruID tinyint,
--	izinBaslangicTarihi date,
--	izinBitistarihi date,
--	Personel_ID int,
--    FOREIGN KEY (izinTuruID) REFERENCES IzinTuru(i_ID),
--	FOREIGN KEY (Personel_ID) REFERENCES Personel(personel_id)
--);

--CREATE TABLE PersonelEgitim(
--	pEgitim_ID int PRIMARY KEY identity(1,1),
--	Personel_ID int,
--	universite varchar(100),
--	bolum varchar(100),
--	mezuniyetYýlý int,
--	diplomaNotu float,
--FOREIGN KEY (Personel_ID) REFERENCES Personel(personel_id)
--);

--create table PersonPozisyon (
--	ID int PRIMARY KEY identity(1,1),
--	PozisyonID tinyint,
--	Personel_ID int,
--	FOREIGN KEY (PozisyonID) REFERENCES Pozisyon(p_ID),
--	FOREIGN KEY (Personel_ID) REFERENCES Personel(personel_id)
--);
----------------------------------------------------------------------------------------------------------

--INSERT INTO	Personel  (ad, soyad, tc, ise_giris_tarihi, isten_cikis_tarihi, telefon) VALUES

--('Halil', 'KARAKAYA', '42074151323', '2018-07-28', NULL, '(0322) 2335275'),
--('Azat', 'COÞKUNYÜREK', '74789296130', '2019-04-06', '2020-03-14', '(0322) 2235724'),
--('Kemal', 'TEKYÝÐÝT', '86856513494', '2017-01-20', '2018-08-05', '(0322) 2338441'),
--('Bünyamin', 'OKTAYOÐLU', '50190579600', '2015-03-29', NULL, '(0322) 2235714'),
--('Ferhat', 'CINAR', '26046030220', '2018-10-19', '2020-04-19', '(0322) 2339074'),
--('Tayfun', 'ÞENDÝL', '67221555969', '2015-02-06', '2017-07-12', '(0322) 2235363'),
--('Selin', 'PÝR', '43691911318', '2019-07-26', '2020-05-18', '(0322) 2339785'),
--('Deniz', 'ERAVCI', '84870496920', '2018-07-25', '2019-09-16', '(0322) 2231829'),
--('Anýl', 'HÝÇDURMAZ', '80011834707', '2018-06-13', NULL, '(0322) 2335630'),
--('Burhan', 'TOROSLUOÐLU', '64660973116', '2015-10-21', '2019-04-03', '(0322) 2232544'),
--('Meliha', 'ÞÝRVANLI', '60820106615', '2017-07-01', '2018-11-30', '(0322) 2232020'),
--('Engin', 'HACIÝBRAHÝMOGLU', '79689059342', '2018-03-14', '2019-01-02', '(0322) 2232587'),
--('Çiðdem', 'GÜLSU', '74659763913', '2016-07-13', NULL, '(0322) 2334530'),
--('Zerda', 'KÜTÜKOÐLU', '77720855989', '2019-04-28', NULL, '(0322) 2237695'),
--('Münevver', 'MUTAF', '32764684197', '2016-08-26', NULL, '(0322) 2336133'),
--('Zahide', 'CAYMAZ', '43712644333', '2015-03-22', '2019-09-06', '(0322) 2234715'),
--('Nazar', 'KAYNAKÇI', '44598988456', '2016-04-21', NULL, '(0322) 2333791'),
--('Naime', 'SULTANOÐLU', '64470369238', '2017-04-13', NULL, '(0322) 2237349'),
--('Fýrat', 'BOZDAÐ', '17962652584', '2019-08-13', '2020-01-31', '(0322) 2333944'),
--('Fevzi', 'DURAKLI', '85386916675', '2016-03-03', NULL, '(0322) 2334552'),
--('Canan', 'ÝZYURDU', '35677373835', '2019-08-26', NULL, '(0322) 2333757'),
--('Sultan', 'ÇATIKKAÞ', '66057751352', '2015-07-05', NULL, '(0322) 2239572'),
--('Mevlüt', 'BAÞDAN', '11649792744', '2016-08-21', NULL, '(0322) 2338538'),
--('Mevlüt', 'EKMEKÇÝOÐLU', '57029788734', '2015-05-22', '2018-01-14', '(0322) 2333035'),
--('Selçuk', 'ALÝKOÇ', '54507469357', '2018-11-04', NULL, '(0322) 2332203'),
--('Ada', 'AKTAÐ', '51932468250', '2017-02-19', '2019-11-19', '(0322) 2332214'),
--('Semanur', 'DEMÝRYAKAN', '67605551162', '2019-06-21', '2020-01-22', '(0322) 2239526'),
--('Ece', 'ÇÝMTAN', '73245261346', '2015-02-05', NULL, '(0322) 2234568'),
--('Aslý', 'KARAKAYACI', '30388652964', '2015-09-16', NULL, '(0322) 2234058'),
--('Egemen', 'DULGEROÐLU', '72069160815', '2016-12-19', NULL, '(0322) 2333884'),
--('Güneþ', 'UZANDAÇ', '70250847099', '2015-10-13', '2016-11-16', '(0322) 2235613'),
--('Baran', 'ÞAKU', '74289736447', '2016-10-18', NULL, '(0322) 2332838'),
--('Necati', 'TANYELÝ', '17644497324', '2017-09-15', '2017-09-23', '(0322) 2231460'),
--('Ýlhan', 'KARAMUSTAFAOÐLU', '53475314899', '2018-04-22', '2020-04-27', '(0322) 2333910'),
--('Türkan', 'ÜÇKAN', '33280373389', '2016-10-20', NULL, '(0322) 2335782'),
--('Tolga', 'YAÐIZYILMAZ', '65514513990', '2018-04-05', NULL, '(0322) 2235272'),
--('Veysel', 'ÇELÝKGÝL', '75392652275', '2016-03-27', NULL, '(0322) 2339432'),
--('Derya', 'TÜFEK', '67200360522', '2016-11-22', NULL, '(0322) 2336048'),
--('Muammer', 'ÖZTAL', '37625020863', '2018-03-12', '2020-03-11', '(0322) 2234244'),
--('Metin', 'ÝLÝK', '33809404972', '2016-12-23', NULL, '(0322) 2234221'),
--('Onur', 'KINAK', '36632207875', '2017-10-10', NULL, '(0322) 2233533'),
--('Berkay', 'ÇAKALOÐLU', '55195889709', '2019-12-04', NULL, '(0322) 2237876'),
--('Ýsmail', 'SOYTORUN', '20285018051', '2015-02-07', '2016-07-27', '(0322) 2239846'),
--('Polat', 'BAYRAKTAR', '65202401705', '2018-12-07', NULL, '(0322) 2336024'),
--('Muhammed Talha', 'KÖRÜK', '26491895261', '2015-05-02', '2020-01-06', '(0322) 2338283'),
--('Yýldýz', 'BEYTAÞ', '88745863880', '2019-03-25', NULL, '(0322) 2239747'),
--('Gülþah', 'DÝNER', '20353262169', '2016-11-16', NULL, '(0322) 2230189'),
--('Havin', 'ÝSPÝROÐLU', '37605017157', '2016-04-15', '2016-08-24', '(0322) 2331544'),
--('Aylin', 'GÜLLÜCE', '11963169229', '2015-05-24', NULL, '(0322) 2231049'),
--('Damla', 'SEYÝTOVA', '74577244032', '2019-03-17', NULL, '(0322) 2237741'),
--('Feyza', 'KOÇKÝRLÝ', '76739714801', '2017-06-09', NULL, '(0322) 2238459'),
--('Esra', 'GÜNGEÇ', '30082612279', '2018-12-01', '2019-07-14', '(0322) 2231006'),
--('Sedat', 'ÖZDOÐRU', '97145974938', '2016-04-24', NULL, '(0322) 2334434'),
--('Aynur', 'MAÐARACI', '79576777794', '2018-09-30', NULL, '(0322) 2230278'),
--('Ýkranur', 'TÝFTÝK', '55960130916', '2017-02-04', NULL, '(0322) 2337817'),
--('Þeyma', 'TEKDEN', '48360628368', '2019-11-11', NULL, '(0322) 2337804'),
--('Selda', 'KAHRIMAN', '73737020787', '2019-05-19', NULL, '(0322) 2233185'),
--('Yunus Emre', 'MERSÝNLÝOÐLU', '51937342075', '2015-12-17', NULL, '(0322) 2238298'),
--('Sebahat', 'TOPCUOGLU', '51754390856', '2016-12-07', NULL, '(0322) 2333588'),
--('Anýl', 'ABUÞKA', '18961878525', '2016-12-29', '2019-10-02', '(0322) 2337290'),
--('Tuðçe', 'OTACI', '71119319247', '2017-12-17', '2019-10-05', '(0322) 2339500'),
--('Münevver', 'ÇALIÞCI', '82411069982', '2017-11-03', NULL, '(0322) 2237153'),
--('Leyla', 'CÝHANOGLU', '71408717789', '2017-01-03', NULL, '(0322) 2333963'),
--('Savaþ', 'KIZILATEÞ', '43499469521', '2018-04-09', NULL, '(0322) 2234924'),
--('Zübeyde', 'ÇALIM', '11058023365', '2015-11-25', NULL, '(0322) 2336250

----------------------------------------------------------------------------------------------------------
--INSERT INTO EhliyetTuru(turu) VALUES ('A1 Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('A2 Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('A Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('B Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('B1 Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('C Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('D Ehliyet');
--INSERT INTO EhliyetTuru(turu) VALUES ('E Ehliyet');

--INSERT INTO CalismaTuru(turu) VALUES ('stajyer');
--INSERT INTO CalismaTuru(turu) VALUES ('hybrid');
--INSERT INTO CalismaTuru(turu) VALUES ('remote');
--INSERT INTO CalismaTuru(turu) VALUES ('ofiste');

--INSERT INTO IzinTuru(i_turu) VALUES ('yýllýk izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('ücretli izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('ücretsiz izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('doðum izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('süt izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('babalýk izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('hastalýk izni ');

--INSERT INTO Departman(d_adi) VALUES ('Uygulama Güvenliði Departmaný');
--INSERT INTO Departman(d_adi) VALUES ('Að Güvenliði Departmaný');
--INSERT INTO Departman(d_adi) VALUES ('Web Geliþtirme Departmaný');
--INSERT INTO Departman(d_adi) VALUES ('Yazýlým Mühendisliði Departmaný');
--INSERT INTO Departman(d_adi) VALUES ('Oyun Geliþtirme Departmaný');

--INSERT INTO Pozisyon(p_adi) VALUES ('Uygulama Güvenliði Test Mühendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Uygulama Güvenliði Uzmaný');
--INSERT INTO Pozisyon(p_adi) VALUES ('Að Güvenliði Mühendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Penetrasyon Testi Uzmaný');
--INSERT INTO Pozisyon(p_adi) VALUES ('UI/UX Tasarýmcýsý');
--INSERT INTO Pozisyon(p_adi) VALUES ('Web Proje Yöneticisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('E-Ticaret Uygulama Geliþtiricisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Veri Tabaný Mühendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Yazýlým Test Mühendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Programcýsý');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Tasarýmcýsý');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Test Mühendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Proje Yöneticisi');
----------------------------------------------------------------------------------------------------------

--1 hala çalýþan personeller ve buyuk ad soyadlarý
--tum 65  / hala çalýþan 41
	SELECT UPPER(CONCAT(ad, ' ', soyad)) AS ad_soyad 
	FROM Personel 
	WHERE isten_cikis_tarihi IS NULL;

--2
	Select LOWER(p_adi) from Pozisyon

--3 Çalýþanlardan çalýþma türü 1 ve 4 olanlar gelsin
	SELECT P.ad, P.soyad, peb.CalismaTuruID
	FROM Personel AS P
	JOIN PersonelEkBilgi AS peb ON P.personel_id = peb.ID 
	WHERE peb.CalismaTuruID IN (1, 4);

--4 Çalýþanlardan çalýþma türü yazýlý
	SELECT P.ad, P.soyad, CalismaTuru.turu
	FROM PersonelEkBilgi peb
	JOIN Personel AS P ON P.personel_id = peb.ID
	JOIN CalismaTuru ON peb.CalismaTuruID=CalismaTuru.ID
	--WHERE peb.CalismaTuruID IN (1, 4);


-- 5- LIKE kullanýmý 
	Select *From Personel Where ad like '%e'
	Select *From Personel Where ad like 'e%'
	Select *From Personel Where ad like '%e%'
	Select *From Personel Where ad like '%e%e'
	Select *From Personel Where ad like 'halil%'
	Select Reverse (ad) From Personel Where ad like 'selin%'

--6
	Select *From Personel order by ad
	Select *From PersonelEgitim  order by diplomaNotu

--7 diploma notuna göre sýralama
	Select p.ad,p.soyad, pe.diplomaNotu,pe.bolum
	FROM Personel  as p
	JOIN PersonelEgitim as pe  on pe.pEgitim_ID=p.personel_id order by diplomaNotu

-- INNER JOIN SORGU 1
	SELECT p.ad,p.soyad,pe.mezuniyetYýlý,pe.bolum,peb.maas
	FROM
	Personel P
	INNER JOIN PersonPozisyon pp ON P.personel_id=pp.ID
	INNER JOIN PersonelEgitim pe ON P.personel_id=pe.pEgitim_ID
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 2
	SELECT p.ad AS AD,	p.soyad AS SOYAD,
	peb.cinsiyet AS CÝNSÝYET, peb.medeniDurum AS MEDENÝ_DURUM,
	peb.askerlik AS ASKERLÝK, peb.EhliyetTuruID AS EHLÝYET_T,
	peb.SGK, peb.Tecrube 
	FROM Personel P
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 3- ÝSTEN ÇIKMIÞ ÝZÝN ALANLAR
	SELECT p.ad AD,p.soyad SOYAD,P.ise_giris_tarihi,P.isten_cikis_tarihi,
	peb.maas MAAS,I.izinBaslangicTarihi,I.izinBitistarihi
	FROM
	Personel P
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	INNER JOIN Izinler I ON P.personel_id=I.izin_ID
	where p.isten_cikis_tarihi is NOT null

-- INNER JOIN SORGU 4- ÇALIÞANLAR ÝZÝN ALANLAR
	SELECT p.ad AD,p.soyad SOYAD,P.ise_giris_tarihi,P.isten_cikis_tarihi,
	I.izinBaslangicTarihi,I.izinBitistarihi
	FROM
	Personel P
	INNER JOIN PersonPozisyon pp ON P.personel_id=pp.ID
	INNER JOIN Izinler I ON P.personel_id=I.izin_ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 5- TÜM ÇALIÞANLAR ÝZÝN ALANLAR
	SELECT p.ad AD,p.soyad SOYAD,P.ise_giris_tarihi,P.isten_cikis_tarihi,
	I.izinBaslangicTarihi,I.izinBitistarihi
	FROM
	Personel P
	INNER JOIN PersonPozisyon pp ON P.personel_id=pp.ID
	INNER JOIN Izinler I ON P.personel_id=I.izin_ID
----------------------------------------------------------------------------------------------------------
--UPDATE--
--dikkat stajyerlere 1000 tl promosyon ekleniyor
	SELECT *FROM PersonelEkBilgi where CalismaTuruID=1 
	UPDATE PersonelEkBilgi
	SET MAAS +=1000
	WHERE CalismaTuruID=1 
	
--UPDATE doðum izni idi eskiden
    SELECT *FROM  IzinTuru where  i_ID=4
	UPDATE IzinTuru
	SET i_turu= 'Doðum Ýzni(anne için)'
	WHERE i_ID=4

--UPDATE medeni durum deðiþti
--SELECT *FROM  PersonelEkBilgi 
    SELECT *FROM  PersonelEkBilgi where  personel_ID=12
	UPDATE PersonelEkBilgi
	SET medeniDurum= 'evli'
	WHERE personel_ID=12
----------------------------------------------------------------------------------------------------------
--DELETE
	--  iþten çýkan kiþiyi personpozisyon tablosundan silme
	-- CALIÞTIRDIÐIM ÝÇÝN VERÝLER SÝLÝNDÝ !! YOK :(  24 kiþi silindi 
	DELETE FROM PersonPozisyon
	WHERE ID IN (
    SELECT pp.ID
    FROM Personel p
    INNER JOIN PersonPozisyon pp ON p.personel_id = pp.ID
    WHERE p.isten_cikis_tarihi IS NOT NULL
	);
	-- listeleme	
	SELECT *FROM PersonPozisyon
	SELECT personel_id FROM Personel WHERE isten_cikis_tarihi IS NOT NULL --24
	SELECT personel_id FROM Personel WHERE isten_cikis_tarihi IS NULL --41
----------------------------------------------------------------------------------------------------------
        ----------
		-- VÝEW --
		----------
---- **view kullanýmý ornegi 1 **
--CREATE VIEW genelBakis AS 
--SELECT p.personel_id, p.ad, p.soyad, p.ise_giris_tarihi, 
--PEK.Tecrube, 
--PP.PozisyonID
--FROM PersonPozisyon pp
--INNER JOIN PersonelEkBilgi PEK ON pp.Personel_ID = PEK.personel_ID
--INNER JOIN Personel p ON pp.Personel_ID = p.personel_id 

---- **view kullanýmý ornegi 2 **
--CREATE VIEW CalismaTuruIstatistik AS
--SELECT
--    pek.CalismaTuruID,
--    COUNT(p.personel_id) AS CalisanSayisi
--FROM
--    PersonelEkBilgi pek
--LEFT JOIN
--    Personel p ON  pek.CalismaTuruID = p.personel_id
--GROUP BY
--    pek.CalismaTuruID

----------------------------------------------------------------------------------------------------------
	-- view kullanarak aylara göre iþe giren sayýsý bulma
SELECT 
    MONTH(ise_giris_tarihi) AS ay,
    COUNT(*) AS personel_sayisi
FROM 
    genelBakis
GROUP BY 
    MONTH(ise_giris_tarihi)
ORDER BY 
    MONTH(ise_giris_tarihi)
	
-- view türlere göre çalýþan sayýlarý
	SELECT
    CalismaTuruID,
    CalisanSayisi
	FROM
    CalismaTuruIstatistik;
----------------------------------------------------------------------------------------------------------
        ----------------------------
		-- SCALAR-VALUED FUNCTION --
		----------------------------
-- Dogum tarihini alýp yaþ donduren scalar-valued fonksiyon 1

			--CREATE FUNCTION DBO.YAS (@dg_tarihi AS DATE)
			--RETURNS INT
			--AS 
			--BEGIN
			--DECLARE @sonuc AS INT
			--SET @sonuc = DATEDIFF(YEAR,@dg_tarihi,GETDATE())
			--RETURN @sonuc
			--END

-- SCALAR VALUED CEKÝMÝ
SELECT DBO.YAS(dogumTarihi) AS P_YAS
FROM PersonelEkBilgi

----------------------------------------------------------------------------------------------------------
        ----------------------------
		--	TABLE-VALUED FUNCTION --
		----------------------------
--belli bir aralýkta iþe giren çýkan kiþileri listeleme table valued function 1
		--CREATE FUNCTION CalismaTarihi (@baslangiçT DATE, @bitisT DATE)
		--RETURNS TABLE
		--AS
		--RETURN
		--(
		--    SELECT 
		--	    P.personel_id,
		--        P.ad,
		--        P.soyad,    
		--        pe.PozisyonID,
		--        p.ise_giris_tarihi,
		--		p.isten_cikis_tarihi
		--    FROM 
		--        Personel P
		--    INNER JOIN 
		--        PersonPozisyon  pe ON pe.Personel_ID = p.personel_id
		--    WHERE 
		--    p.ise_giris_tarihi BETWEEN @baslangiçT AND @bitisT
		--    AND p.isten_cikis_tarihi BETWEEN @baslangiçT AND @bitisT
		--);

SELECT * FROM CalismaTarihi('2015-01-01', '2019-12-31');

----------------------------------------------------------------------------------------------------------
        ----------------------------
		--	STORED PROCEDURE      --
		----------------------------
Select *from GunlukGirisCikis

-- her personelin kartnosu kendine özel normal olarak 
-- calýþanlarýn günlük þirkete veya sisteme girdi çýktý bilgilerini gösterir(daha fazla veri olmasý gerekir ama eklemedim)

--INSERT INTO GunlukGirisCikis
--([personel_ID], [personelKartNo], [islemTur], [islemTarih_])
--VALUES
--('1', NEWID(), 'giris', '2018-05-21 08:12:34'),
--('2', NEWID(), 'giris', '2019-05-22 08:12:35'),
--('37', NEWID(), 'cikis', '2016-03-22 08:12:35')

			--INSERT INTO GunlukGirisCikis
			--([personel_ID], [personelKartNo])
			--VALUES
			--('11', NEWID()),
			--('12', NEWID()),
			--('3', NEWID()),
			--('4', NEWID()),
			--('5', NEWID()),
			--('6', NEWID()),
			--('7', NEWID()),
			--('8', NEWID()),
			--('9', NEWID()),
			--('10', NEWID()),
			--('13', NEWID()),
			--('14', NEWID()),
			--('15', NEWID()),
			--('16', NEWID()),
			--('17', NEWID()),
			--('19', NEWID()),
			--('20', NEWID()),
			--('21', NEWID()),
			--('22', NEWID()),
			--('23', NEWID()),
			--('24', NEWID()),
			--('25', NEWID()),
			--('26', NEWID()),
			--('27', NEWID()),
			--('28', NEWID()),
			--('29', NEWID()),
			--('30', NEWID()),
			--('31', NEWID()),
			--('32', NEWID()),
			--('33', NEWID()),
			--('34', NEWID()),
			--('35', NEWID()),
			--('36', NEWID()),
			--('38', NEWID()),
			--('39', NEWID()),
			--('40', NEWID()),
			--('41', NEWID()),
			--('42', NEWID()),
			--('43', NEWID()),
			--('44', NEWID()),
			--('45', NEWID()),
			--('46', NEWID()),
			--('47', NEWID()),
			--('48', NEWID()),
			--('49', NEWID()),
			--('50', NEWID()),
			--('51', NEWID()),
			--('52', NEWID()),
			--('53', NEWID()),
			--('54', NEWID()),
			--('55', NEWID()),
			--('56', NEWID()),
			--('57', NEWID()),
			--('58', NEWID()),
			--('59', NEWID()),
			--('60', NEWID()),
			--('62', NEWID()),
			--('63', NEWID()),
			--('64', NEWID()),
			--('65', NEWID())

			------------------------------
		    --STORED PROCEDURE OLUÞTURMA--
			------------------------------
			--CREATE Procedure barkodKontrol
			--@personelKartNo AS varchar(50)
			--AS 
			--BEGIN
			--SELECT * FROM GunlukGirisCikis WHERE personelKartNo=@personelKartNo
			--END
			----------------------------
		    --STORED PROCEDURE ÇAÐIRMA--
			----------------------------
			Select *from GunlukGirisCikis where personelKartNo= 'deade2dc-1c92-4b1e-850d-612d9e5e07d7'	 --ya da
			EXEC barkodKontrol @personelKartNo = 'deade2dc-1c92-4b1e-850d-612d9e5e07d7'

			Select *from GunlukGirisCikis where personelKartNo= '344f931e-a40b-4663-80b2-59f48e5155fc'
			----------------------------
			--ALTER Procedure barkodKontrol
			--@personelKartNo AS varchar(50)
			--AS 
			--BEGIN
			--	IF EXISTS (SELECT * FROM GunlukGirisCikis WHERE personelKartNo=@personelKartNo)
			--	BEGIN
			--		SELECT 'PERSONEL KART NO DOÐRU'
			--	END
			--	ELSE
			--	BEGIN
			--		SELECT 'PERSONEL KART NO YANLIÞ'
			--	END
			--END
			----------------------------
			EXEC barkodKontrol @personelKartNo = 'deade2dc-1c92-4b1e-850d-612d9e5e07d7'

			-------------
		    -- TRIGGER --
			-------------
   	------------------------------------------
	--CREATE TRIGGER PersonelEkle
	--ON Personel
	--AFTER INSERT
	--AS
	--BEGIN
	--	SELECT 'Yeni Personel Eklendi'
	--END
	------------------------------------------
	INSERT INTO Personel 
	VALUES ('Arel', 'Have', '12345678910', '2024-05-23',NULL,'(0530) 2335375')
	------------------------------------------
	INSERT INTO Personel 
	VALUES ('Root', 'INTEREST', '22325678910', '2024-05-23',NULL,'(0531) 2335375')
	------------------------------------------
	--CREATE TRIGGER PersonelGuncelle
	--ON PersonelEkBilgi
	--AFTER UPDATE
	--AS
	--BEGIN
	--	SELECT 'Personel Ek Bilgileri Güncellendi'
	--END

	UPDATE PersonelEkBilgi SET askerlik ='yaptý' where personel_ID=37
	UPDATE PersonelEkBilgi SET medeniDurum ='evli' where personel_ID=19
	UPDATE PersonelEkBilgi SET CalismaTuruID ='3' where personel_ID=16
	------------------------------------------
	 

