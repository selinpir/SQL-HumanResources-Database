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
--	mezuniyetY�l� int,
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
--('Azat', 'CO�KUNY�REK', '74789296130', '2019-04-06', '2020-03-14', '(0322) 2235724'),
--('Kemal', 'TEKY���T', '86856513494', '2017-01-20', '2018-08-05', '(0322) 2338441'),
--('B�nyamin', 'OKTAYO�LU', '50190579600', '2015-03-29', NULL, '(0322) 2235714'),
--('Ferhat', 'CINAR', '26046030220', '2018-10-19', '2020-04-19', '(0322) 2339074'),
--('Tayfun', '�END�L', '67221555969', '2015-02-06', '2017-07-12', '(0322) 2235363'),
--('Selin', 'P�R', '43691911318', '2019-07-26', '2020-05-18', '(0322) 2339785'),
--('Deniz', 'ERAVCI', '84870496920', '2018-07-25', '2019-09-16', '(0322) 2231829'),
--('An�l', 'H��DURMAZ', '80011834707', '2018-06-13', NULL, '(0322) 2335630'),
--('Burhan', 'TOROSLUO�LU', '64660973116', '2015-10-21', '2019-04-03', '(0322) 2232544'),
--('Meliha', '��RVANLI', '60820106615', '2017-07-01', '2018-11-30', '(0322) 2232020'),
--('Engin', 'HACI�BRAH�MOGLU', '79689059342', '2018-03-14', '2019-01-02', '(0322) 2232587'),
--('�i�dem', 'G�LSU', '74659763913', '2016-07-13', NULL, '(0322) 2334530'),
--('Zerda', 'K�T�KO�LU', '77720855989', '2019-04-28', NULL, '(0322) 2237695'),
--('M�nevver', 'MUTAF', '32764684197', '2016-08-26', NULL, '(0322) 2336133'),
--('Zahide', 'CAYMAZ', '43712644333', '2015-03-22', '2019-09-06', '(0322) 2234715'),
--('Nazar', 'KAYNAK�I', '44598988456', '2016-04-21', NULL, '(0322) 2333791'),
--('Naime', 'SULTANO�LU', '64470369238', '2017-04-13', NULL, '(0322) 2237349'),
--('F�rat', 'BOZDA�', '17962652584', '2019-08-13', '2020-01-31', '(0322) 2333944'),
--('Fevzi', 'DURAKLI', '85386916675', '2016-03-03', NULL, '(0322) 2334552'),
--('Canan', '�ZYURDU', '35677373835', '2019-08-26', NULL, '(0322) 2333757'),
--('Sultan', '�ATIKKA�', '66057751352', '2015-07-05', NULL, '(0322) 2239572'),
--('Mevl�t', 'BA�DAN', '11649792744', '2016-08-21', NULL, '(0322) 2338538'),
--('Mevl�t', 'EKMEK��O�LU', '57029788734', '2015-05-22', '2018-01-14', '(0322) 2333035'),
--('Sel�uk', 'AL�KO�', '54507469357', '2018-11-04', NULL, '(0322) 2332203'),
--('Ada', 'AKTA�', '51932468250', '2017-02-19', '2019-11-19', '(0322) 2332214'),
--('Semanur', 'DEM�RYAKAN', '67605551162', '2019-06-21', '2020-01-22', '(0322) 2239526'),
--('Ece', '��MTAN', '73245261346', '2015-02-05', NULL, '(0322) 2234568'),
--('Asl�', 'KARAKAYACI', '30388652964', '2015-09-16', NULL, '(0322) 2234058'),
--('Egemen', 'DULGERO�LU', '72069160815', '2016-12-19', NULL, '(0322) 2333884'),
--('G�ne�', 'UZANDA�', '70250847099', '2015-10-13', '2016-11-16', '(0322) 2235613'),
--('Baran', '�AKU', '74289736447', '2016-10-18', NULL, '(0322) 2332838'),
--('Necati', 'TANYEL�', '17644497324', '2017-09-15', '2017-09-23', '(0322) 2231460'),
--('�lhan', 'KARAMUSTAFAO�LU', '53475314899', '2018-04-22', '2020-04-27', '(0322) 2333910'),
--('T�rkan', '��KAN', '33280373389', '2016-10-20', NULL, '(0322) 2335782'),
--('Tolga', 'YA�IZYILMAZ', '65514513990', '2018-04-05', NULL, '(0322) 2235272'),
--('Veysel', '�EL�KG�L', '75392652275', '2016-03-27', NULL, '(0322) 2339432'),
--('Derya', 'T�FEK', '67200360522', '2016-11-22', NULL, '(0322) 2336048'),
--('Muammer', '�ZTAL', '37625020863', '2018-03-12', '2020-03-11', '(0322) 2234244'),
--('Metin', '�L�K', '33809404972', '2016-12-23', NULL, '(0322) 2234221'),
--('Onur', 'KINAK', '36632207875', '2017-10-10', NULL, '(0322) 2233533'),
--('Berkay', '�AKALO�LU', '55195889709', '2019-12-04', NULL, '(0322) 2237876'),
--('�smail', 'SOYTORUN', '20285018051', '2015-02-07', '2016-07-27', '(0322) 2239846'),
--('Polat', 'BAYRAKTAR', '65202401705', '2018-12-07', NULL, '(0322) 2336024'),
--('Muhammed Talha', 'K�R�K', '26491895261', '2015-05-02', '2020-01-06', '(0322) 2338283'),
--('Y�ld�z', 'BEYTA�', '88745863880', '2019-03-25', NULL, '(0322) 2239747'),
--('G�l�ah', 'D�NER', '20353262169', '2016-11-16', NULL, '(0322) 2230189'),
--('Havin', '�SP�RO�LU', '37605017157', '2016-04-15', '2016-08-24', '(0322) 2331544'),
--('Aylin', 'G�LL�CE', '11963169229', '2015-05-24', NULL, '(0322) 2231049'),
--('Damla', 'SEY�TOVA', '74577244032', '2019-03-17', NULL, '(0322) 2237741'),
--('Feyza', 'KO�K�RL�', '76739714801', '2017-06-09', NULL, '(0322) 2238459'),
--('Esra', 'G�NGE�', '30082612279', '2018-12-01', '2019-07-14', '(0322) 2231006'),
--('Sedat', '�ZDO�RU', '97145974938', '2016-04-24', NULL, '(0322) 2334434'),
--('Aynur', 'MA�ARACI', '79576777794', '2018-09-30', NULL, '(0322) 2230278'),
--('�kranur', 'T�FT�K', '55960130916', '2017-02-04', NULL, '(0322) 2337817'),
--('�eyma', 'TEKDEN', '48360628368', '2019-11-11', NULL, '(0322) 2337804'),
--('Selda', 'KAHRIMAN', '73737020787', '2019-05-19', NULL, '(0322) 2233185'),
--('Yunus Emre', 'MERS�NL�O�LU', '51937342075', '2015-12-17', NULL, '(0322) 2238298'),
--('Sebahat', 'TOPCUOGLU', '51754390856', '2016-12-07', NULL, '(0322) 2333588'),
--('An�l', 'ABU�KA', '18961878525', '2016-12-29', '2019-10-02', '(0322) 2337290'),
--('Tu��e', 'OTACI', '71119319247', '2017-12-17', '2019-10-05', '(0322) 2339500'),
--('M�nevver', '�ALI�CI', '82411069982', '2017-11-03', NULL, '(0322) 2237153'),
--('Leyla', 'C�HANOGLU', '71408717789', '2017-01-03', NULL, '(0322) 2333963'),
--('Sava�', 'KIZILATE�', '43499469521', '2018-04-09', NULL, '(0322) 2234924'),
--('Z�beyde', '�ALIM', '11058023365', '2015-11-25', NULL, '(0322) 2336250

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

--INSERT INTO IzinTuru(i_turu) VALUES ('y�ll�k izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('�cretli izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('�cretsiz izin');
--INSERT INTO IzinTuru(i_turu) VALUES ('do�um izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('s�t izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('babal�k izni');
--INSERT INTO IzinTuru(i_turu) VALUES ('hastal�k izni ');

--INSERT INTO Departman(d_adi) VALUES ('Uygulama G�venli�i Departman�');
--INSERT INTO Departman(d_adi) VALUES ('A� G�venli�i Departman�');
--INSERT INTO Departman(d_adi) VALUES ('Web Geli�tirme Departman�');
--INSERT INTO Departman(d_adi) VALUES ('Yaz�l�m M�hendisli�i Departman�');
--INSERT INTO Departman(d_adi) VALUES ('Oyun Geli�tirme Departman�');

--INSERT INTO Pozisyon(p_adi) VALUES ('Uygulama G�venli�i Test M�hendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Uygulama G�venli�i Uzman�');
--INSERT INTO Pozisyon(p_adi) VALUES ('A� G�venli�i M�hendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Penetrasyon Testi Uzman�');
--INSERT INTO Pozisyon(p_adi) VALUES ('UI/UX Tasar�mc�s�');
--INSERT INTO Pozisyon(p_adi) VALUES ('Web Proje Y�neticisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('E-Ticaret Uygulama Geli�tiricisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Veri Taban� M�hendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Yaz�l�m Test M�hendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Programc�s�');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Tasar�mc�s�');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Test M�hendisi');
--INSERT INTO Pozisyon(p_adi) VALUES ('Oyun Proje Y�neticisi');
----------------------------------------------------------------------------------------------------------

--1 hala �al��an personeller ve buyuk ad soyadlar�
--tum 65  / hala �al��an 41
	SELECT UPPER(CONCAT(ad, ' ', soyad)) AS ad_soyad 
	FROM Personel 
	WHERE isten_cikis_tarihi IS NULL;

--2
	Select LOWER(p_adi) from Pozisyon

--3 �al��anlardan �al��ma t�r� 1 ve 4 olanlar gelsin
	SELECT P.ad, P.soyad, peb.CalismaTuruID
	FROM Personel AS P
	JOIN PersonelEkBilgi AS peb ON P.personel_id = peb.ID 
	WHERE peb.CalismaTuruID IN (1, 4);

--4 �al��anlardan �al��ma t�r� yaz�l�
	SELECT P.ad, P.soyad, CalismaTuru.turu
	FROM PersonelEkBilgi peb
	JOIN Personel AS P ON P.personel_id = peb.ID
	JOIN CalismaTuru ON peb.CalismaTuruID=CalismaTuru.ID
	--WHERE peb.CalismaTuruID IN (1, 4);


-- 5- LIKE kullan�m� 
	Select *From Personel Where ad like '%e'
	Select *From Personel Where ad like 'e%'
	Select *From Personel Where ad like '%e%'
	Select *From Personel Where ad like '%e%e'
	Select *From Personel Where ad like 'halil%'
	Select Reverse (ad) From Personel Where ad like 'selin%'

--6
	Select *From Personel order by ad
	Select *From PersonelEgitim  order by diplomaNotu

--7 diploma notuna g�re s�ralama
	Select p.ad,p.soyad, pe.diplomaNotu,pe.bolum
	FROM Personel  as p
	JOIN PersonelEgitim as pe  on pe.pEgitim_ID=p.personel_id order by diplomaNotu

-- INNER JOIN SORGU 1
	SELECT p.ad,p.soyad,pe.mezuniyetY�l�,pe.bolum,peb.maas
	FROM
	Personel P
	INNER JOIN PersonPozisyon pp ON P.personel_id=pp.ID
	INNER JOIN PersonelEgitim pe ON P.personel_id=pe.pEgitim_ID
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 2
	SELECT p.ad AS AD,	p.soyad AS SOYAD,
	peb.cinsiyet AS C�NS�YET, peb.medeniDurum AS MEDEN�_DURUM,
	peb.askerlik AS ASKERL�K, peb.EhliyetTuruID AS EHL�YET_T,
	peb.SGK, peb.Tecrube 
	FROM Personel P
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 3- �STEN �IKMI� �Z�N ALANLAR
	SELECT p.ad AD,p.soyad SOYAD,P.ise_giris_tarihi,P.isten_cikis_tarihi,
	peb.maas MAAS,I.izinBaslangicTarihi,I.izinBitistarihi
	FROM
	Personel P
	INNER JOIN PersonelEkBilgi peb ON P.personel_id=peb.ID
	INNER JOIN Izinler I ON P.personel_id=I.izin_ID
	where p.isten_cikis_tarihi is NOT null

-- INNER JOIN SORGU 4- �ALI�ANLAR �Z�N ALANLAR
	SELECT p.ad AD,p.soyad SOYAD,P.ise_giris_tarihi,P.isten_cikis_tarihi,
	I.izinBaslangicTarihi,I.izinBitistarihi
	FROM
	Personel P
	INNER JOIN PersonPozisyon pp ON P.personel_id=pp.ID
	INNER JOIN Izinler I ON P.personel_id=I.izin_ID
	where p.isten_cikis_tarihi is null

-- INNER JOIN SORGU 5- T�M �ALI�ANLAR �Z�N ALANLAR
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
	
--UPDATE do�um izni idi eskiden
    SELECT *FROM  IzinTuru where  i_ID=4
	UPDATE IzinTuru
	SET i_turu= 'Do�um �zni(anne i�in)'
	WHERE i_ID=4

--UPDATE medeni durum de�i�ti
--SELECT *FROM  PersonelEkBilgi 
    SELECT *FROM  PersonelEkBilgi where  personel_ID=12
	UPDATE PersonelEkBilgi
	SET medeniDurum= 'evli'
	WHERE personel_ID=12
----------------------------------------------------------------------------------------------------------
--DELETE
	--  i�ten ��kan ki�iyi personpozisyon tablosundan silme
	-- CALI�TIRDI�IM ���N VER�LER S�L�ND� !! YOK :(  24 ki�i silindi 
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
		-- V�EW --
		----------
---- **view kullan�m� ornegi 1 **
--CREATE VIEW genelBakis AS 
--SELECT p.personel_id, p.ad, p.soyad, p.ise_giris_tarihi, 
--PEK.Tecrube, 
--PP.PozisyonID
--FROM PersonPozisyon pp
--INNER JOIN PersonelEkBilgi PEK ON pp.Personel_ID = PEK.personel_ID
--INNER JOIN Personel p ON pp.Personel_ID = p.personel_id 

---- **view kullan�m� ornegi 2 **
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
	-- view kullanarak aylara g�re i�e giren say�s� bulma
SELECT 
    MONTH(ise_giris_tarihi) AS ay,
    COUNT(*) AS personel_sayisi
FROM 
    genelBakis
GROUP BY 
    MONTH(ise_giris_tarihi)
ORDER BY 
    MONTH(ise_giris_tarihi)
	
-- view t�rlere g�re �al��an say�lar�
	SELECT
    CalismaTuruID,
    CalisanSayisi
	FROM
    CalismaTuruIstatistik;
----------------------------------------------------------------------------------------------------------
        ----------------------------
		-- SCALAR-VALUED FUNCTION --
		----------------------------
-- Dogum tarihini al�p ya� donduren scalar-valued fonksiyon 1

			--CREATE FUNCTION DBO.YAS (@dg_tarihi AS DATE)
			--RETURNS INT
			--AS 
			--BEGIN
			--DECLARE @sonuc AS INT
			--SET @sonuc = DATEDIFF(YEAR,@dg_tarihi,GETDATE())
			--RETURN @sonuc
			--END

-- SCALAR VALUED CEK�M�
SELECT DBO.YAS(dogumTarihi) AS P_YAS
FROM PersonelEkBilgi

----------------------------------------------------------------------------------------------------------
        ----------------------------
		--	TABLE-VALUED FUNCTION --
		----------------------------
--belli bir aral�kta i�e giren ��kan ki�ileri listeleme table valued function 1
		--CREATE FUNCTION CalismaTarihi (@baslangi�T DATE, @bitisT DATE)
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
		--    p.ise_giris_tarihi BETWEEN @baslangi�T AND @bitisT
		--    AND p.isten_cikis_tarihi BETWEEN @baslangi�T AND @bitisT
		--);

SELECT * FROM CalismaTarihi('2015-01-01', '2019-12-31');

----------------------------------------------------------------------------------------------------------
        ----------------------------
		--	STORED PROCEDURE      --
		----------------------------
Select *from GunlukGirisCikis

-- her personelin kartnosu kendine �zel normal olarak 
-- cal��anlar�n g�nl�k �irkete veya sisteme girdi ��kt� bilgilerini g�sterir(daha fazla veri olmas� gerekir ama eklemedim)

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
		    --STORED PROCEDURE OLU�TURMA--
			------------------------------
			--CREATE Procedure barkodKontrol
			--@personelKartNo AS varchar(50)
			--AS 
			--BEGIN
			--SELECT * FROM GunlukGirisCikis WHERE personelKartNo=@personelKartNo
			--END
			----------------------------
		    --STORED PROCEDURE �A�IRMA--
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
			--		SELECT 'PERSONEL KART NO DO�RU'
			--	END
			--	ELSE
			--	BEGIN
			--		SELECT 'PERSONEL KART NO YANLI�'
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
	--	SELECT 'Personel Ek Bilgileri G�ncellendi'
	--END

	UPDATE PersonelEkBilgi SET askerlik ='yapt�' where personel_ID=37
	UPDATE PersonelEkBilgi SET medeniDurum ='evli' where personel_ID=19
	UPDATE PersonelEkBilgi SET CalismaTuruID ='3' where personel_ID=16
	------------------------------------------
	 

