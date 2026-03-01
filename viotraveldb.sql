-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-travel:3306
-- Generation Time: Mar 01, 2026 at 06:25 AM
-- Server version: 8.0.45
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viotraveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `id` int NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `expiry` datetime DEFAULT NULL,
  `ad_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `href`, `seo`, `is_active`, `expiry`, `ad_image`, `created_at`) VALUES
(1, 'rfgdfr', 'fdgffg', 1, '2025-09-25 00:00:00', '68caf61144a7b.jpg', '2025-09-17 17:55:29'),
(2, 'ftgh', 'fdgh', 1, '2025-09-26 12:34:00', '68cb0caa4b74f.jpg', '2025-09-17 19:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `ad_attraction`
--

CREATE TABLE `ad_attraction` (
  `ad_id` int NOT NULL,
  `attraction_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_county`
--

CREATE TABLE `ad_county` (
  `ad_id` int NOT NULL,
  `county_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_county`
--

INSERT INTO `ad_county` (`ad_id`, `county_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_sub_category`
--

CREATE TABLE `ad_sub_category` (
  `ad_id` int NOT NULL,
  `sub_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_sub_category`
--

INSERT INTO `ad_sub_category` (`ad_id`, `sub_category_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `id` int NOT NULL,
  `title` varchar(750) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `midle_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `at_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_seo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clip` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`id`, `title`, `short_text`, `midle_text`, `body_text`, `at_image`, `image_seo`, `clip`, `views`, `created_at`, `updated_at`) VALUES
(2, 'sdsw', 'asdsa', 'sdsad', 'asd', '68cc2d742df24.jpg', '[\"asda\"]', 'asdas', 2, '2025-09-18 16:04:04', '2025-09-18 16:04:04'),
(3, 'sda', 'asda', 'asd', 'asd', '68cc2d8fea8b6.jpg', '[\"asdd\"]', 'asd', 2, '2025-09-18 16:04:31', '2025-09-18 16:04:31'),
(4, 'Atölye Mor Sanat Akademi', 'Bale | Cimnastik | Modern Dans | Hip Hop | Piyano |\r\nDrama | Müzik | Workshop | Atölye | Etkinlik', 'Çoucklar  ve genler için Bale ,Cimnastik ,Modern Dans, Hip Hop ,Piyano,\r\nDrama , Müzik, Workshop,  Atölye, Etkinlikleri', 'Çağlayan Mahallesi 2009 Sokak No:7 Muratpaşa, Antalya, Turkey 07100\r\nTelefon 090 5317052606', '68fbc271e5302.jpg', '[\"cimnastik\"]', NULL, 1, '2025-10-24 18:16:17', '2025-10-26 16:10:22'),
(5, 'Tam Sanat Akademi', 'Resim/Seramik Müzik Bale Drama', 'T.C. MEB Onaylı Özel Kurs Antalya\r\nTam Sanat Akademi Yetenek Kursu', 'Adres : Fener mahallesi 1989 sokak No:25, Antalya, Turkey\r\nTelefon: 05324852965\r\nEmail: www.tamsanatakademi.com', '68fbc79d883ff.jpg', '[\"yetenek kursu\"]', NULL, 1, '2025-10-24 18:38:21', '2025-10-26 16:10:35'),
(6, 'ACT Sanat Akademi', 'Tiyatro | Dans | Bale | Resim | Yaratıcı Drama | Seramik', 'ACT Sanat Okulu\r\nYaratıcı Sanat Merkezi\r\nAct Sanat Okulu, Antalya Konyaaltı\'nda yer alan, tiyatro, dans, bale, resim, yaratıcı drama, seramik gibi sanat dallarında eğitim veren yaratıcı bir sanat eğitim kurumudur.', 'Pınarbaşı Mah. 702 Sk. Öz Ödül Sitesi B Blok No:1 Konyaaltı / ANTALYA, Antalya, Turkey 07000\r\nTelefon:  0532 369 28 32\r\nWeb Sitesi: actsanat.com', '68fbca14c534e.jpg', '[\"Tiyatro, Dans , Bale , Resim,  Yaratıcı Drama , Seramik\"]', NULL, 1, '2025-10-24 18:48:52', '2025-10-26 16:10:49'),
(7, 'Nota 8 academy', 'Müzik  | Tiyatro | Dans | Bale | Resim | Yaratıcı Drama | Seramik', 'Nota Sekiz, yenilikçi ve vizyoner bir yaklaşımla tüm yaş gruplarına ve yetenek seviyelerine hitap eden kapsamlı bir sanat eğitimi sunmayı hedefliyor. Farklı sanat dallarında uzmanlaşmış deneyimli ve tutkulu eğitmenlerimizle öğrencilerimize hem teknik hem de yaratıcı gelişim fırsatları sağlıyoruz.', 'Her yaşa ve yetenek düzeyine hitap eden kapsamlı bir sanat eğitimi.\r\nNota 8 Akademi, Antalya’nın en kapsamlı sanat ve gelişim merkezlerinden biridir. MEB onaylı eğitim yapısıyla bale kursu, dans eğitimi, müzik dersi, resim atölyesi, tiyatro ve drama kursu, çocuklar için satranç, konuşma odaklı İngilizce ve pilates dersleri gibi birçok alanda profesyonel eğitim sunar. Antalya Muratpaşa’daki modern stüdyosunda her yaş grubuna özel programlar hazırlayan Nota 8 Akademi, öğrencilerinin yaratıcılığını, özgüvenini ve disiplinini geliştirmeyi amaçlar. Sanatı, sporu ve eğitimi birleştiren bu akademide; çocuklar ve gençler için bale zarafeti, dansın enerjisi, müziğin ritmi ve resmin renkleriyle dolu bir öğrenme deneyimi seni bekliyor.\r\n\r\nTelefon : +90 533 508 66 82\r\nE-Posta: notasekiz@gmail.com\r\nAddress: Kızıltoprak Mahallesi 937 sk, Oyak Sitesi No:6, 07100 Muratpaşa/Antalya', '68fbcd0a33a65.png', '[\"bale tiyatro\"]', NULL, 1, '2025-10-24 19:01:30', '2025-10-26 16:11:01'),
(8, 'Acapella Sanat Evi', 'Sanatta gelişim, MEB sertifikası ve uluslararası sanat okullarına hazırlık eğitimi sunuyoruz.', '\"acapella sanat evi olarak sanatın her dalında sertifikalı eğitimler veriyoruz. Birebir enstürman eğitimlerimiz , bireysel ve grup resim derslerimiz, drama ve tiyatro derslerimiz, bale ve modern dans derslerimiz, müzik ve resim güzel sanatlar yetenek sınavlarına hazırlık kurslarımız ve uluslar arası london college of music sınavlarına hazırlık kurslarımızla çocuk ve yetişkin olmak üzere uzman kadromuzla sanat severlerin yanındayız. okulumuza bekleriz.\"', 'Adres: Güzeloba Mah. Çağlayangil Cad. No:19/A, Muratpaşa, Antalya, Turkey\r\nTelelefon: 0554 577 23 24\r\nEmail: info@acapellasanatevi.com', '68fbd03853982.jpg', '[\"sanat tiyatro\"]', NULL, 1, '2025-10-24 19:15:04', '2025-10-26 16:11:12'),
(9, 'Özel Önder Altıntaş Sanat Akademi', '\"Özel Önder Altıntaş Sanat Merkezi Resim Bale ve Müzik Kursu olarak amacımız sadece sanatçı olmak isteyenleri yetiştirmek değil, sanatı seven ve sanat kültürünü algılayan bireyler yetiştirmektir.', 'Çocuklarımızın sanat eğitimi ile kazandığı yaratıcılık, ifade özgürlüğü,el becerileri ve kültür birikimleri ile onların kendi kendine karar verebilmesi,sorumluluk alabilmesi,iletişim kurabilmesi ve sosyalleşmesi çok önemlidir.\r\n\r\nBizler, öğrencilerimizi sadece başarı için hedeflenen düzeylere ulaştırabilmek için değil, onları üretken, teknolojiyi takip eden, çözüm sahibi, ahlaklı, anlayışlı, öğrenmeyi hedef edinmiş,\r\nbireyler şeklinde yetiştirmek için de varız.\r\n\r\nAntalya da Resim Bale ve Müzik Kursu alanlarında, profesyonel eğitim ve personel kadromuzla, hijyenik ve uygun fiziki yapımızla en kaliteli eğitimi veriyor olmanın gururuyla yolumuza devam ediyor olacağız.\"', 'Önder ALTINTAŞ', '68fe45430fcf4.png', '[]', NULL, 1, '2025-10-26 15:58:59', '2025-11-12 19:46:50'),
(10, 'Antalya Cimnastik Spor Kulübü', '\"Cimnastik, Modern Dans, Bale \"2013 yılı itibarı ile ATATÜRK ilke ve inkılapları doğrultusunda gece gündüz demeden sporcu ahlakı ve disiplinini amaç edinerek başarılı sporcular yetiştirmekteyiz. ..', '2024 yılında açılan 2. şubemizde eğitimlere başladık.Mevcut şubelerimizde 965 kız sporcuyu ritmik cimnastik ile 178 erkek sporcuyu temel cimnastik ile tanıştırdık. Erkek çocuklarını farklı branşlara yönlendirdik. Kız çocukları seviye seviye ilerlediler. Lisanslı sporcular oldular. Ne mutlu ki bizlere ilimizde ses getiren sosyal sorumluluk projelerimiz ile 51 özel durumda olan çocuklarımıza ulaştık. Hedefimiz 2025 yılında farklı projeler ile daha büyük bir kitleye ulaşmak ve yeni şubeler açarak ilimizde cimnastik branşını hak ettiği yere taşımaktır. Sağlıklı bol sporlu günler geçirmemiz umudu ile birlik ve beraberliğimizin daim olması dileklerimizle.\"\r\n\r\n\"Vatanı korumak çocukları korumakla başlar. Elimizin ulaştığı,gözümüzün gördüğü her çocuğa faydalı olabilmek adına sosyal sorumluluk projelerimiz dahilindeki çocuklarımıza 2025 yılında’da ücretsiz cimnastik eğitimlerine devam ediyoruz.\"', 'Antalya Cimnastik Spor Kulübü Derneği Mart 2013 yılında sportif etkinliklerle çocuklarımızın sağlıklı bireyler olarak yetişmelerine destek vermek amacı ile kurulmuştur. Tamamı profesyonel antrenörlerle uygulanan eğitim içeriği Türkiye Cimnastik Federasyonuna paralel olarak yürütülmektedir.\r\nAdres: Mahallesi, Avcıoğlu Sitesi 10 F Villa, 1964. Sk. No:2, 07160 Muratpaşa/Antalya\r\nAdres:  Mahallesi Atatürk Caddesi No 38 Döşemealtı/Antalya\r\nAdres: Aspendos Şube: Kızıltoprak Mahallesi Aspendos Bulvarı No: 43\r\nWeb Sitesi: www.antalyacimnastiksporkulubu.org', '68fe545e90c19.jpg', '[]', NULL, 1, '2025-10-26 17:03:26', '2025-11-12 19:47:39'),
(11, 'Antalya Cimnastik Kursu', '\"Antalya cimnastik kursu olarak, 3-16 yaş arası çocuk ve gençlerin fiziksel, zihinsel ve sosyal gelişimine katkıda bulunmayı hedefliyoruz...', 'Temel cimnastik, ritmik cimnastik ve artistik cimnastik branşlarında sunduğumuz profesyonel eğitim programlarıyla çocuğunuzun yeteneklerini keşfetmesine ve hayallerine ulaşmasına destek oluyoruz.  Deneyimli ve güler yüzlü eğitmenlerimiz eşliğinde, modern ve güvenli tesislerimizde çocuğunuzun cimnastikle dolu bir dünyaya adım atmasını sağlıyoruz.\"\r\n\r\nKonyaaltı Jimnastik Kursu’nun Sunduğu Avantajlar:\r\n\r\nKonyaaltı Cimnastik Kursu, sadece cimnastik eğitimiyle sınırlı kalmayıp, katılımcılara ve ailelerine birçok avantaj sunar:\r\n\r\nVeliler için Cafe: Çocuklarını cimnastik kursuna getiren veliler, bekleme sürelerini keyifli bir ortamda geçirebilirler. AquaWave’in şık ve konforlu kafesi, veliler için ideal bir buluşma noktasıdır.\r\nSpor Salonunda Spor Yapma İmkanı: Cimnastik kursuna katılanlar, AquaWave’in modern spor salonundan da faydalanabilirler. Çeşitli fitness ekipmanları ve grup dersleriyle sağlıklı yaşam hedeflerine ulaşmak daha kolay.\r\nDersleri İzleme İmkanı: AquaWave Konyaaltı Cimnastik Kursu, velilerin dersleri izleyebileceği özel bir alana sahiptir. Çocuklarının gelişimini yakından takip etmek isteyen veliler için bu imkan büyük bir avantajdır.\r\nÜcretsiz Otopark: AquaWave’e ulaşım son derece kolaydır ve geniş bir otopark alanı mevcuttur. Araçlarıyla gelen katılımcılar, park yeri arama stresinden uzak, rahat bir şekilde kursa ulaşabilirler.\r\nKolay Ulaşım: Konyaaltı’nın merkezi bir noktasında bulunan cimnastik kursumuz, toplu taşıma araçlarıyla da kolayca ulaşılabilir bir konumdadır. Bu sayede, kursa ulaşım konusunda herhangi bir zorluk yaşanmaz.\r\nAquaWave Konyaaltı Cimnastik Kursu, Antalya’da cimnastik eğitimi almak isteyenler için en doğru adrestir. Uzman hocalarımız eşliğinde, güvenli ve keyifli bir ortamda cimnastik becerilerinizi geliştirirken, aynı zamanda sağlıklı bir yaşam tarzını benimseyebilirsiniz. AquaWave ailesine katılın, cimnastiğin büyülü dünyasına adım atın!', 'Çocuklar hareket eğitimi alırken eğleniyorlar\r\n\r\nUzman eğitmenlerimiz eşliğinde, çocuklarınız yaşlarına uygun olarak hazırlanmış oyunlar ve egzersizlerle temel hareket becerilerini geliştirecek, denge, koordinasyon ve motor becerilerini güçlendirecekler.\r\n\r\nAntalya hareket eğitimi programımızda;\r\n\r\nTemel jimnastik hareketleri: Esneklik, çeviklik ve dayanıklılıklarını artıracak egzersizler.\r\nDenge ve koordinasyon çalışmaları: Denge tahtası, top gibi araçlarla eğlenceli aktiviteler.\r\nRitim ve müzik eşliğinde oyunlar: Müzikle hareketlerini koordine etmeyi ve ritim duygusunu geliştirmeyi amaçlayan oyunlar.\r\nTakım çalışmaları: Sosyalleşme becerilerini geliştiren grup oyunları.\r\nÇocuklar hareket eğitiminde takım çalışması yapıyorlar\r\nAdres: Konyaaltı / Öğretmenevleri Mah.\r\nTelefon: 0505 092 58 04', '68fe5dff6a418.webp', '[\"antalya\"]', NULL, 1, '2025-10-26 17:44:31', '2025-11-12 19:48:41'),
(12, 'Antalya Ritmik Cimnastik Spor Kulübü Derneği', '\"Antalya\'da ritmik cimnastik eğitimi konusunda profesyonel eğitim sunuyoruz. Milli sporcular yetiştirmeyi hedefliyoruz.\"', '\"Antalya Ritmik Cimnastik SK olarak 3 yaştan itibaren cimnastik eğitimi vermek üzere bütün çocukları davet ediyoruz.\r\nElif Zeynep Celep, 2017 Dünya Şampiyonası finalisti,2017 Fransa Grand Prix Altın madalya kazananı,2017 Almanya Dünya Kupası bronz madalya kazananı,2016 Rio Olimpiyat Seçmeleri 4.sü, Azerbaycan ve Türkiye Şampiyonu; çocuklar için en popüler ve temel branş olan cimnastiğin yanı sıra kız çocukları için en güzel ve zarif branş olan ritmik cimnastiğe bütün çocukları davet ediyor.\r\nCimnastik, her spor dalı için altyapı görevi gören spordur. Doğru eğitim programı uygulanarak, motorik özelliklerin gelişmesini ve ilerletilmesini sağlar. Ayrıca fiziksel uyumun sağlanması için ideal spordur.\r\nBunun yanında ‘Olimpik’ branş olan ‘Ritmik Cimnastik’ koordinasyon,kuvvet,sürat,hareketlilik ve dayanıklılığa ek olarak estetiğe önem verir. Mekansal oryantasyonu geliştirir.Yapılacakların önceden belirlenmesi gereken bir spor türü olduğu için hafıza ve dikkat gelişir.Müzik eşliğinde gerçekleştirilen çalışmaların özellikle sayısal zekaya katkısını vurgulayan uzmanlar, analitik düşünebilme,problem çözebilme,duygusal gelişim ve değişimlerde küçük yaşlarda alınan eğitimin olumlu etkilerini gözlemlediklerini belirtiyorlar. Bu branş tüm vücudu çalıştıran bir egzersizdir.\r\nHer çocuk rekreaktif çalışmaya uygundur. Fiziksel gelişimin doğru ve hızlı olmasını sağlamak, sporu sevdirmek,alışkanlık haline getirmek, yaşam kalitesini arttırmak Antalya Ritmik Cimastik SK olarak ilk önceliğimizdir.\r\nBu kapsamda hedefimiz; lisanslı sporcu sayımızı artırıp, etkin özellikleri değerlendirerek altyapı,hazırlık ve yarışmacı gruplarımızla ulusal ve uluslararası tecrübeler edinerek, olimpik düzeyde sporcular yetiştirmektir.\"', '\"Atatürk ilke ve düşüncelerini benimsendiği ve bireysel farklılıkların önemsendiği bir ortamda,\r\n\r\nDünya’da ve Türkiye’de tercih edilen, ülke geleceğine olumlu katkılarda bulunacak,\r\n\r\nEn gelişmiş eğitim yöntemleriyle birleştirilmiş ve Dünya merkezli eğitim ile tutkulu ve sorumluluk sahibi geleceğin bireylerini yetiştirmektir.\r\n\r\nTürk cimnastiğine, dünya çapında sporcular yetiştirmek ve alanında lider olmaktır.\"\r\nAdres: Uncalı Mahallesi Toroslar Caddesi No:76/B City Life 2 D Blok Kat:4 Daire:13 Konyaaltı/ANTALYA\r\nEmail: info@ritmikcimnastik.com\r\nTelefon: 05536539929', '68fe5ff0f11a0.jpg', '[\"cimnastik\"]', NULL, 1, '2025-10-26 17:52:48', '2025-10-26 17:52:48'),
(13, 'Antalya Denge Cimnastik', 'Cimnastik kursu', 'Cimnastik', 'Telefon: 0506 055 35 72', '68fe613f4ae08.jpg', '[\"istanbul\"]', NULL, 1, '2025-10-26 17:58:23', '2025-10-26 17:58:23'),
(14, 'Konyaaltı Cimnastik Kursu', 'Konyaaltı Cimnastik Kursu Çocuklar için Jimnastik Okulu\r\nYaş ve Seviyelere Ayrılmış Gruplarda 12 Ay Boyunca Uzman Eğitmenler Eşliğinde Temel Cİmnastik Dersleri!', '\"Antalya Konyaaltı Cimnastik Kursu\r\nÇocuklarınızın enerjilerini doğru yönlendirmeleri ve fiziksel gelişimlerini desteklemeleri için ideal bir ortam sunuyor. Çocuklar için özel olarak tasarlanmış temel cimnastik eğitimlerimiz, onların motor becerilerini, koordinasyonlarını, esnekliklerini ve güçlerini artırmayı hedefliyor.\r\n\r\nUzman eğitmenlerimiz eşliğinde, güvenli ve eğlenceli bir ortamda gerçekleştirilen derslerimiz, çocuklarınızın özgüvenlerini kazanmalarına ve sosyal becerilerini geliştirmelerine de yardımcı oluyor. Aynı zamanda, alternatif gün ve saat seçeneklerimiz sayesinde, yoğun programlarınıza uyum sağlayarak çocuklarınızın cimnastikle tanışmasını kolaylaştırıyoruz.\"', '\"Yaş ve Seviyelere Ayrılmış Gruplar\r\n\r\nYaş ve Seviyelere Ayrılmış Gruplar\r\n\r\nÇocuklarınızın cimnastik dünyasına adım atmaları için mükemmel bir ortam sunuyoruz! 3 yaşından itibaren her seviyeye uygun gruplarımızla, temel cimnastik eğitimlerinden beceri ve koordinasyon gelişimine kadar tüm ihtiyaçları karşılıyoruz. Konyaaltı’ndaki modern tesisimizde, kolay ulaşım imkanı ve veliler için konforlu bekleme alanları da mevcut. Çocuklarınız eğlenirken siz de rahat edin!\"\r\nAdres: Konyaalti Antalya\r\nTelefon: 05050925804', '68fe63b11eab3.jpg', '[\"cimnastik\"]', NULL, 1, '2025-10-26 18:08:49', '2025-10-26 18:08:49'),
(15, 'Antalya Dans Akademi', 'Dans Öğretmenin Basit ve Etkili Adımları', '\"Antalya Dans Akademi, dansın büyüleyici dünyasını herkese açmak amacıyla kurulmuş, profesyonel ve samimi bir dans okuludur. Amacımız, dansı sadece bir hobi olarak değil, aynı zamanda bir yaşam biçimi ve ifade biçimi olarak benimsetmek; her yaştan ve seviyeden katılımcıya bu sanatın keyfini doyasıya yaşatmaktır. Alanında uzman, sahne tecrübesi olan eğitmen kadromuzla; salsa, bachata, tango, hip hop, zumba, modern dans, çocuk bale ve daha birçok branşta bireysel veya grup dersleri sunuyoruz. Eğitimlerimizde hem teknik altyapı hem de ritim, özgüven ve sahne hakimiyeti üzerine yoğunlaşıyoruz. \"', '\"Antalya\'nın merkezinde yer alan modern stüdyomuz, konforlu alanı ve enerjik atmosferiyle dansseverlerin ikinci evi olmayı hedefliyor. Katılımcılarımız sadece dans etmeyi öğrenmiyor; aynı zamanda yeni arkadaşlıklar kuruyor, stresten uzaklaşıyor ve özgüven kazanıyorlar. Her bireyin dans edebileceğine inanıyoruz. Çünkü bizce, dans insanın ruhunu özgürleştirir. Antalya Dans Akademi ailesine katılın, siz de kendinizi müziğin ritmine bırakın.\"\r\nAdres: Arapsuyu Mh. 621. Sk. B Blok No:2 Süyek Seçkinler Sitesi, 07070\r\nTelefon: +90 531 780 33 61 \r\nWeb Sitesi: www.antalyadansakademi.com', '68fe66a22ad3d.png', '[\"antalya\"]', NULL, 1, '2025-10-26 18:21:22', '2025-10-26 18:23:57'),
(16, 'Antalya Dans Kursu Dancelife', 'Antalya Dans Kursu Konyaaltı Danslı hayat sloganıyla dansın büyülü dünyasına bekliyoruz.', 'Dans Kursu', 'Antalya Dans Kursu Konyaaltı Danslı hayat sloganıyla dansın büyülü dünyasına bekliyoruz.\r\nTelefon: 05355511695', '68fe68a29b821.jpg', '[\"antalya\"]', NULL, 1, '2025-10-26 18:29:54', '2025-10-26 18:29:54'),
(17, 'Antalya Müzesi', 'Arkoloji  Müzesi', 'ntalya’da ilk müze, 1922 yılında Antalya ve çevresinde derlenen arkeolojik eserlerin Alaaddin Camii’nde depo edilmesiyle kurulmuştur.', '1934 yılında buradaki eserler Yivli Minare ve külliyesine taşınarak, 1937 yılında ziyarete açılmıştır. 1972 yılında bugünkü binasında hizmet vermeye başlayan müze 1988 yılında “Avrupa Konseyi Özel Ödülü”nü kazanmıştır.\r\nAntalya Müzesi 13 teşhir salonu, çocuk bölümü ve açık hava teşhiriyle bölgenin tarihini kronolojik olarak yansıtmaktadır. \r\nAddress: Bahçelievler, Konyaaltı Cd. No:88, 07050 Muratpaşa/Antalyag', '690100a4da7ed.jpg', '[\"istanbul\"]', NULL, 1, '2025-10-28 17:43:00', '2025-10-28 17:43:00'),
(18, 'Side Müzesi', 'Manavgat İlçesi\'ne bağlı Side Beldesi\'ndedir. Manavgat\'a 8 km. uzaklıktadır. Roma Devrine ait agoranın karşısında bulunan, M.S 5-6.yüzyıldan kalma antik agoranın hamamı 1960/61 yıllarında restore edilerek müze haline getirilmiştir.', 'Müzede sergilenen eserlerin büyük bir bölümü, Prof. Dr. Arif Müfid Mansel tarafından,1947-1967 yılları arasında Side antik kentinde yapılan kazılarda, çıkarılan buluntulardır. Hellenistik, Roma ve Bizans Devrinden; yazıtlar, silah kabartmaları, Roma Devrinden yapılmış Grek orijinallerinin kopyası olan heykeller, torsolar, lahitler, portreler, ostotekler, amphoralar, sunaklar, mezar stelleri, sütun başlıkları ve sütun kaideleri', 'Antalya İli, Manavgat İlçesi, Side Mahallesi, Side Antik Kentinde M.S. 2.yüzyıla tarihlenen ve M.S. 5-6. yüzyıllardaki ilave ve değişikliklerle günümüze kadar gelen  Antik bir hamam binası (Agora Hamamı) içinde yer almaktadır.\r\nAdres: Side, Liman Cd., 07330 Manavgat/Antalya\r\nTelefon: (0242) 280 23 00', '69086dce60e73.jpg', '[\"antalya\"]', NULL, 1, '2025-11-03 08:54:38', '2025-11-12 20:05:30'),
(19, 'Alanya Atatürk Evi Müzesi', 'Alanya Atatürk evi devrin kereste tüccarlarından m. Tevfik Azakoğlu tarafından yaptırılmış olup, ev Alanya’nın şekerhane mahallesi azaklar sokağında bulunmaktadır.', '235 metrekarelik alanı kaplayan yapı 826 metrekarelik bir saha içerisinde üç katlı konak tipinde olup, karnıyarık plana sahip, kargir olarak inşa edilmiştir. Yapının birinci ve zemin katı moloz taş ahşap hatıllı olup, ikinci kat ahşap çatkılı bağdadi tarzında yapılmıştır. İçi dışı sıvalı badanalı olan ev geniş saçaklı, piramidal tarzda çatıyla kaplanmış üstü Marsilya kiremidi ile örtülmüştür.\r\n\r\nBinanın kuzeyindeki çamaşırlık, Mutfak ile batı cephesindeki banyo ve tuvalet kısmı sonradan ilave edilmiştir. Eve güney cephedeki bahçe girişinden iki kanatlı demir Bir kapı ile girilmekte, kare döşemeli bir zemin ile taş basamaklı, merdivenle birinci kata çıkılır.', 'Zemin katın tabanı toprak olup zamanında ahır ve depo olarak kullanılmıştır. Zemin kat ve çamaşırlık içerden kuzey cepheden taş bir merdivenle birinci katla irtibatlı bulunmaktadır.\r\n\r\nBirinci ve ikinci kat planı hemen hemen birbirinin aynıdır. Her katta beş oda ve bir sandık odası vardır. Üç oda doğu iki oda batı cephesindedir. Her iki kat düz tavanlı olup, yükseklikleri beş metredir. Ev Alanya’nın iklim özellikleri göz önünde bulundurularak, rahat yaşama imkânlarına göre inşaa edilmiştir. Ön cephesi tarihi Alanya Kalesine bakmaktadır.\r\n\r\nAlanya Atatürk evi daha önce onarılmış esas sahibi M. Tevfik Azakoğlu’nun ölümünden sonra mirasçısı kardeşinin oğlu Rıfat Azakoğlu’na kalmıştır. Ev Rıfat Azakoğlu tarafından 8 Haziran 1981 günü Atatürk evi ve Müzesi olarak kullanılmak şartı ile tapusu hazineye verilmiş tahsisi Kültür ve Turizm Bakanlığı’na yapılmıştır.\r\n\r\nAtatürk evinin önemi büyük önder Atatürk’ ün 18 Şubat 1938 yılında deniz yoluyla Alanya’yı ziyaretlerinde bir müddet kalıp dinlendiği ve bu evin çanaklığında çekilmiş tarihi fotoğraflarının bulunmasıdır.\r\nAdres: Şekerhane, Anzaklar Sok, 07400 Alanya/Antalya', '6908714823823.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 09:07:33', '2025-11-03 09:09:28'),
(20, 'Antalya Atatürk Evi ve Müzesi', 'Antalya Atatürk Evi Müzesi, Antalya şehir merkezinde, Işıklar Caddesi üzerinde yer almaktadır. Bu müze, Ulu Önder Mustafa Kemal Atatürk\'ün 6 Mart 1930 tarihinde Antalya\'yı ziyareti sırasında konakladığı evin restore edilmesiyle oluşturulmuştur.', 'Türkiye Cumhuriyeti\'nin kurucusunun hatırasını yaşatan bu yapı, şehrin kültürel mirasının önemli bir parçasıdır. Tarihi İnceleme: Müze, Atatürk’ün Antalya ziyaretine dair çeşitli belgeler, fotoğraflar ve özel eşyalar sergilemektedir. Atatürk’ün yaşamına dair detaylı bilgi edinebilirsiniz.\r\n\r\nKültürel Gezi: Cumhuriyet dönemi tarihini ve Antalya\'nın bu dönemdeki önemini anlamak için ideal bir mekandır.\r\n\r\nSanat ve Mimari: Restorasyonu yapılan evin mimari detaylarını ve dönemin dekorasyon tarzını inceleyebilirsiniz.\r\n\r\nKaleiçi Turu: Müzeyi ziyaret ettikten sonra Kaleiçi bölgesini gezebilir, tarihi sokaklarda yürüyüş yapabilirsiniz.', '1930 yılı Mart ayının başlarında Atatürk İzmir\'deydi. Havalar soğuk gidiyordu. Antalya\'nın ılık ikliminde bir hafta dinlenmeyi düşündü. 4 Mart 1930 günü, İzmir’den Aydın treni ile hareket eden Atatürk, 5 Mart 1930’da Aydın’a geldi. Aynı gün akşam Denizli’ye hareket eden Mustafa Kemal Isparta, Burdur ve ardından 6 Mart 1930 günü öğleden sonra,16.00’da Antalya’ya geldi.\r\n\r\nAtatürk’ün geleceği haberi kentte büyük sevinç yaratmıştı. Sokaklar aydınlatılmış temizlenmiş birçok yere zafer takları kurulmuştu. Kepez\'den şehre kadar halk, yolun iki yanını doldurmuştu. Mustafa Kemal Atatürk’ü taşıyan otomobil durduğunda “Hoş geldin. Sefalar getirdin. Yaşa, Varol Gazi” sesleri kapladı. Ata’larına çok şey borçlu olan halk onu yakından görmenin sevincini heyecanını yaşıyordu. Yeni Kapı’da Valiliğe ait iki katlı köşk Ata’nın ikametine ayrılmış ve halk köşkü elbirliği ile baştanbaşa sade ama temiz eşyalarla donatılmıştı. Karşılama töreni bittiğinde köşke geçildi. Köşkün önünde biriken halkın bitmeyen sevgi gösterileri nedeniyle, Atatürk balkona çıkarak halkı bir kez daha selamladı.\r\n\r\nAkşam onuruna verilen akşam yemeği sırasında Türk Ocağının düzenlediği gösterileri izledi. 07 Mart 1930 Cuma günü tüm ilçe ve köylerden Gazi’yi görmek, saygılarını sunmak için gelen heyetler köşkün etrafını doldurmuştu. Köşkü balkonundan Antalyalılara kısa bir konuşma yaptı. Akşam üzeri şehirde otomobil ile bir gezinti yapıldı ve Tophane yolu ile buz fabrikası ve Türk Ocağı’na gitti. Ocak kütüphanesi, sinema ve diğer salonları gezerek, ocak reisinden durumları ile ilgili bilgiler aldı.\r\n\r\n08 Mart Cumartesi günü Arap suyunda pirinç ziraatı yapılan Mursi çiftliğine gidildi. O tarihte henüz Konyaaltında yol olmadığı için buraya Rüstemiye Gemisi ile gidilmişti. Ata’mızın yanında, Dahiliye Vekili Şükrü Kaya, Ordu Müfettişi Fahrettin Paşa, Vali Faiz Bey ve mebuslar bulunuyordu. Burada öğle yemeği yenildi. Ardından Gazi ve yanındakiler vapur ile Antalya sahillerini gezdi ve özellikle büyük şelaleyi gördüler.\r\n\r\nDaha sonra karadan bugünkü Lara yolu üzerinde Rumkuş mevkiine gidildi. Atatürk oradan denizi, karşı sahilleri, karla örtülü Beydağları’nı uzun uzun seyretti ve “Hiç şüphesiz ki Antalya dünyanın en güzel yeridir” demekten kendini alamadı. Bulunduğu yerin adını yanındakilere sorduğunda “Rumkuş” olduğunu öğrenince Türk topraklarında Türkçe adın olması gerektiğini söyleyerek adının “Erenkuş” olarak değiştirilmesini istedi.\r\n\r\n09 Mart Pazar günü öğleye doğru tarihe ve eski eserlere son derece önem veren Atatürk Serik, Büyükbelkıs Köyün’deki Aspendos Antik Tiyatrosunu görmeye gitti. Serik ve Belkıs’ta toplanan halkın sevgi gösterileri arasında Aspendos’a ulaşıldı. Tiyatronun önüne Yörük çadırı kurulmuş, her taraf bayraklarla donatılmıştı. Tiyatro, Antalya Müzesi Müdürü Süleyman Fikri Bey’in rehberliğinde gezildi. Atatürk tiyatronun dünyadaki benzerleriyle karşılaştırmasını yaparken Sanat Tarihi ve Arkeoloji alanında sahip olduğu engin bilgilerini ortaya koyuyordu. Aspendos Tiyatrosunun derhal onarılarak ziyarete açılması için direktifler verdi. Dönüşte yol üzerinde bulunan Osman Ağa’nın narenciye bahçesini gezdi, çalışmaları yakından izledi ve bu çalışmalar Atatürk tarafından takdirle karşılandı. Akşam Yeni Kapı’da halk Ata’mızın onuruna oyunlar oynadı, türküler söyledi.\r\n\r\n10 Mart Pazartesi gününü Atatürk, köşkte, Antalya Müzesin’den getirilen birkaç el yazması tarih kitabını ve Kuran-ı Kerimi incelemekle geçirdi. 11 Mart Salı günü Atatürk deniz yoluyla devam edeceği yurt gezisine, program değişikliği nedeniyle son vererek, Burdur üzerinden kara yoluyla dönüş hazırlığına başlanıldı ve 12 Mart’da Gazi yanındaki heyetle birlikte Ankara’ya uğurlandı. Yapılan uğurlama töreninde Atatürk, Antalya’ya tekrar geleceğine söz verdi.\r\n\r\nAtatürk’ün Antalya’yı ikinci ziyareti 26 Ocak 1931 tarihinde başladığı yurt gezisinin bir parçası dâhilinde geçekleşmiştir. Seyahati, 1929 dünya buhranı ve Serbest Cumhuriyet Fıkrasının kapatılması sonuçlarını uzman bir heyet ile yerinde tetkik etmek ve yapılması gereken işleri tespit edilmek üzere yapılmıştı. Bu amaçla 8 Şubat 1931 de Ege Vapuru ile İzmir’den Antalya’ya yola çıktı. Ege Vapuru 10 Şubat 1931’de sabah Antalya’ya geldi. Öğleden sonra deniz motoru ile iskeleye çıkan Atatürk buradan alay karargâhına giderek askeri birlikleri teftiş etti. Alaydan hükümet konağına geçerek Vali beyden mahalli işler hakkında bilgi aldı. Daha sonra, Belediye ve Cumhuriyet Halk Fıkrasını ziyaret ederek, memleket işleri üzerinde uzun uzun görüşüldü. Cumhuriyet Halk Fırkasında ise memleketin iktisadi durumu üzerine konuşuldu. Vali beyden mahalli işler hakkında bilgi aldı. Atatürk bu sohbet sırasında esaslı bir zirai kredi ve satış kooperatifinin teşkilinin önemini ve örgütlenmesi gerektiğini belirtti. . Aynı gün akşamüzeri vapura dönerek, Silifke’ye doğru gitmek için Ege Vapuru ile hareket etti.\r\n\r\nAta’mızın Antalya’ya üçüncü gelişleri 18 Şubat 1935 tarihindedir.. İstanbul’dan Ege Vapuru ile hareket eden Mustafa Kemal Atatürk, 16 Şubat 1935 tarihinde Çeşme önlerinde Zafer torpidosuna geçti. Aynı torpido ile Alanya’ya doğru hareket etti. Zafer torpidosunu Adatepe torpidosu takip ediyordu. 18 Şubat 1935’de sabah Zafer torpidosu ile Alanya’ya girdi. Burada üç saat kadar kaldıktan sonra öğleye doğru Antalya’ya geldi. Gazi’yi iskelede Kazım Özalp, Vali Saip Örge, Belediye başkanı, Antalya milletvekilleri okullar ve binlerce Antalyalı karşıladı. Kendi için hazırlanan faytona binerek, önce tophaneye, daha sonra kendisine ayrılan köşke gitti. Akşamüzeri çok beğendiği ve adını kendisinin koyduğu Erenkuş’a giderek Antalya’nın doğal güzelliklerini bir kez daha seyretti. O gece onuruna fener alayı düzenlendi. Büyük kurtarıcı ile beraber olan halk heyecanlı ve sevinçliydi. Eresi gün Afet Hanım ve beraberindeki heyetle halkın sevgi ve sıcak gösterileriyle Ege vapuru ile Antalya’dan ayrıldı. 1938 yılında tekrar Antalya’yı gelmek istedi ise de sağlık durumu iyi olmadığı için bu geziyi gerçekleştiremedi.\r\n\r\nAtatürk’ün Antalya’yı ziyaretleri Antalyalılar için çok büyük önem taşıması nedeniyle her yıl 06 Mart’ da onun anısına törenler yapılmaktadır. Cumhuriyetin ilk yıllarında Valiliğe ait olan ve Antalya’yı ziyaretlerinde Atatürk’e tahsis edilmiş olan köşk, Atatürk Müzesi yapılmak ve onun anılarını yaşatmak üzere 1984 yılında Kültür Bakanlığına tahsis edilmiştir. Şehrin yeni imar planı uygulaması sırasında caddede kaldığı için yıkılmış ve yıkılan binanın aynısı Kepez Elektrik şirketi tarafından biraz geri çekilerek yeniden yaptırılmıştır. Dikdörtgen planlı, iki katlı, iki cepheli, üzeri kiremit örtülü kırma çatılı taş- tuğla duvarlı olan bina 1986 yılından beri Atatürk Evi ve Müzesi olarak hizmet vermektedir.\r\n\r\nMüzede alt katta; Atatürk’ün Antalya’ya gelişleri ile ilgili gazete kupürleri ve resimlerin yer aldığı resim sergisi, Atatürk ve Antalya konulu belgeselin izlenebileceği Barkovizyon odası, büro ile girişteki holde yemek odası, Üst katta ise; yatak odası, iki adet çalışma odası, Atatürk’ün şahsi eşyalarının sergilendiği Müze Odası adı verilen bölüm ile Cumhuriyetin Kuruluşundan günümüze kadar basılan madeni ve kağıt paralar ile pular ve hatıra paraların sergilendiği ayrı bir bölüm daha yer almaktadır.\r\n\r\nMüzeye şehir merkezinden kolaylıkla ulaşabilirsiniz. Toplu taşıma araçları, özel araçlar veya yürüyerek müzeye erişmek mümkündür. Müze, Kaleiçi’ne oldukça yakın bir konumda yer aldığından turistler için kolay ulaşılabilir bir noktadadır. Yakın çevrede otopark imkanı da bulunmaktadır.\r\nAdres: Haşimişcan, Fevzi Çakmak Cd. No:11, 07100 Muratpaşa/Antalya\r\nTelefon:  (0242) 241 15 27', '690878300d4ac.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 09:38:56', '2025-11-03 09:38:56'),
(21, 'Alanya Kızılkule Etnografya Müzesi', 'Askerî amaçla ve limanı kontrol altında tutmak için 1226 yılında yapılmış olan bu anıtsal yapı..', 'Askerî amaçla ve limanı kontrol altında tutmak için 1226 yılında yapılmış olan bu anıtsal yapı, Selçuklu sanatının eşsiz örneklerinden olup; Alanya\'nın simgesi durumundadır. 1951–1953 yıllarında onarıldıktan sonra 1979\'da yapının giriş katında Alanya yöresine özgü, halı, kilim, giysi, mutfak gereçleri, silahlar, tartı aletleri, aydınlatma aletleri, dokuma tezgâhı ve Yörük kültürünü yansıtan çadır gibi etnografik nitelikte eserler sergilenerek, yapıya etnografya müzesi işlevi kazandırılmıştır.', 'Selçuklu sanatının eşsiz örneklerinden biri olan yapı, Alanya’nın simgesi durumundadır. Ticaretin yapıldığı limanı korumak ve karadan kaleye gelebilecek saldırıları önlemek amacıyla yapılmış bir savunma ve gözetleme yapısıdır.\r\n \r\nKuzey cephede bulunan kitabesine göre, Selçuklu Sultanı Alâeddin Keykubat tarafından 1226 yılında, Halepli Ebu Ali isimli bir mimara yaptırılmıştır. Yapının güney cephesindeki kitabede ise Alâeddin Keykubat “milletlerin hâkimi, dünya sultanlarının sultanı, adaletin himayecisi, kara ve iki denizin sultanı, Müslümanların yardımcısı” gibi vasıflar atfedilerek övülmektedir.\r\n\r\nYapı, 29 metre çapında ve 33 metre yüksekliğinde olup sekizgen planda, taş ve tuğla malzeme ile inşa edilmiştir. Dıştan sade görüntüsünün aksine, içeride oldukça karmaşık bir plana sahiptir. Beş katlı yapının her bir katının planı farklıdır. Merkezde bulunan ve yapının ana taşıyıcısı konumundaki sekizgen ayağın üstünde, birinci katın yüksekliği boyunca bir sarnıç oturtulmuştur. Her katta savunma amacıyla yapılmış, dışarıya açılan şevli gözetleme mazgalları ve önleri siperlikli açıklıklar bulunmaktadır. Zemin ve birinci katlarda tonoz örtülü koridorlara açılan yine tonoz örtülü eyvan biçiminde mekânlar yer almaktadır. Birinci katın üstünde, yapıyı çevreleyen dar ve basık bir koridor ve buna açılan küçük odalardan oluşan bir asma kat bulunmaktadır. İkinci, üçüncü ve dördüncü katlar açık teraslar şeklindedir. Asma katın üzerinde yer alan ikinci katta, sekizgenin her bir yüzünde ikişer adet olmak üzere büyük tonozlu mekânlarla kuşatılmış üstü açık avlu yer alır. Üçüncü katta, her yüzde üçer adet küçük mekân ve bunların açıldığı teras bulunur. Dördüncü kat ise savunma amacıyla yapılmış siperlik ve açıklıklardan oluşan dendanlar ve yürümeye imkân sağlayan bir terastan ibarettir.\r\n \r\nKızılkule aynı zamanda Etnografya Müzesi olarak kullanılmaktadır. Beş katlı kulenin giriş ve birinci katı müze olarak düzenlenmiştir. Tarihi yapıda zaman zaman resim sergisi, klasik müzik konseri gibi kültür ve sanat etkinlikleri de gerçekleştirilmektedir. Kulenin en üst katından, kentin doğu yakasının büyüleyici manzarası ile tarihi yarımadanın yerleşim dokusu seyredilebilmektedir.\r\n \r\n \r\nKaynak: \"Kızılkule Etnografya Müzesi\", Dünden Bugüne Antalya [II. Cilt], Antalya İl Kültür ve Turizm Müdürlüğü (2012) - \"K. Sonkaya, \"Kızılkule Etnografya Müzesi\", Alanya Tanıtım Kitapçığı [içinde], T.C. Kültür ve Turizm Bakanlığı, Tanıtma Genel Müdürlüğü (2016)\r\n\r\n Adres: İskele Mevkii, Tersane Sk, Çarşı, Alanya / Antalya', '69087ade27aca.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 09:50:22', '2025-11-03 09:50:22'),
(22, 'Alanya Arkeoloji Müzesi', 'Arkeolojik ve etnoğrafik eserlerin korunması ve sergilenmesine yönelik olarak 1967 yılında iki seksiyon halinde müze ziyarete açılmıştır.', 'Müzenin ilk açılışında bölgede henüz kalıntılarına rastlamadığımız ancak Anadolu Kronolojisini ziyaretçilere anlatmak açısından Eski Tunç, Urartu, Frig ve Lidya Dönemlerine ait eserler Ankara Anadolu Medeniyetler Müzesinden getirilerek Arkeoloji seksiyonunda sergiye sunulmuştur. Alanya yakınlarındaki Laertes Antik Kentinden bulunup müzeye bağışlanan İ.Ö. 625 yılına tarihlenen Fenike dilindeki yazıt, bölgenin en erken eseri olma özelliğini taşır. Bu eser gri renkli yerel taştan olup, üç tarafında da yazı yer almaktadır. Yazıtta bir valinin hizmetkârına bağışladığı arsadan ve bununla ilgili gelişen problemlerden söz edilmektedir. Aynı alanda Roma İmparatoru S. Severus’un Syedra (Seki Köyü yakınlarında bir antik kent) halkına göndermiş olduğu teşekkür mektubunu içeren 46 satırlık M.S. 2 y.y la tarihlenen bir diğer yazıt ve Karamanlıca dilindeki iki yazıtlar da bu bölümün eserlerindendir.\r\n\r\nBunların yanı sıra Helenistik, Roma ve Bizans Dönemlerine ait pişmiş toprak, mermer, bronz, cam ve mozaik buluntular arkeoloji seksiyonunda sergilenmektedir. Ayrıca Müze koleksiyonunda yer alan ve İ.Ö. 7.-5. yy’lara tarihlenen Arkaik dönemden başlayan ve Cumhuriyet dönemine kadar uzanan zaman diliminde kullanılan sikkeler de sergilenmektedir.', 'Müzenin simgesi durumundaki çok iyi koruna gelmiş olan İ.S. 2. yy’a tarihlenen 52 cm yüksekliğindeki bronz Herakles Heykeli ise ayrı bir salonda sergilenmektedir. Herakles salonun da sergilenen bir diğer eser Hylas Mozaiğidir. Mozaik üzerinde Hylas’ın (Herakles’in arkadaşı) su perileri tarafında kaçırılması sahnesi betimlenmiştir. Salonun duvarlarında ise heykelin bulunuş öyküsü ve Herakles’in mitolojideki yeri resimli panolar ile anlatılmaktadır.\r\n\r\nMüzenin diğer seksiyonun da ise etnoğrafik eserler sergilenmektedir. Yöremizde çokça kullanılan heybeler, çuvallar, çeşitli ev eşyaları ve Alanya’ya özgü gelin başı takıçları sergilenmektedir. Alanya’nın eski evlerinin içini canlandıran bir oda da aslına uygun olarak döşenmiş olup, bu bölümde yer almaktadır. Alanya’da düğün konusu ise maketler ile anlatılmaktadır.\r\n\r\nMüzenin bahçesi açık teşhir olarak düzenlenmiş olup; bölgeye özgü ostoteklerle (kemik-kül muhafaza kutusu) Roma dönemi nekropolleri anlatılmak istenmiştir. Ostotekler, müze koleksiyonunun önemli bir bölümünü oluşturmakta olup, burada özgün örnekleri görmek mümkündür.\r\nAyrıca Selçuklu, Osmanlı ve Cumhuriyetin ilk yıllarına ait İslami mezar taşları, Roma dönemi sütun başlıkları ve İslami dönem yazıtlar da sergilenmektedir. Bahçemizin diğer bir köşesinde ise Roma döneminde zeytinyağı üretimini anlatan ve tarımda kullanılan aletlerin yer aldığı “tarım köşesi” bulunmaktadır.\r\n\r\nHer ayın ilk pazartesi günü Halk Günü uygulaması nedeniyle ücretsizdir. Pazartesi günleri hariç her gün açıktır.\r\nAlanya Arkeoloji Müzesi, Antalya\'nın Alanya ilçesinde, şehir merkezine yakın bir konumda bulunmaktadır. Müze, hem yerli hem de yabancı turistlerin sıkça ziyaret ettiği önemli bir kültürel mekandır.\r\n\r\nAddress: Saray, İsmet Hilmi Balcı Cd. No:2, 07400, 07400 Alanya/Antalya\r\nTelefon:  (0242) 513 12 28', '69087dcd413c9.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 10:02:53', '2025-11-03 10:02:53'),
(23, 'Antalya Etnografya Müzesi', '19. Yüzyıla tarihlenen iki konakta teşhir edilecek Antalya Etnografya Müzesi, Antalya İli, Muratpaşa İlçesi, Kaleiçi Kentsel ve III. Derece Arkeolojik Sit alanı içerisinde yer almaktadır.', 'Yapılar, eğimli bir alanda farklı kotlarda yer almaktadır.  Alt ve Üst Konak olmak üzere iki ayrı konseptin oluşturulduğu binalarda,  Osmanlı Dönemi mimari özellikleri karşımıza çıkmaktadır.\r\n\r\nBir no’lu konakta Türk-İslam Eserleri, iki no’lu konakta ise Antalya’nın Osmanlı dönemi ev yaşamını yansıtan oda düzenlemeleri ile aynı dönemde kullanılan eşyalar ve mimari parçalar teşhir edilmektedir.\r\n\r\nAlt kotta kalan ve Türk İslam Eserleri konseptli bir no’lu konağın ilk katında Selçuklu Döneminde kışlık saray haline getirilen Aspendos Tiyatrosu’ndan gelen Selçuklu çini kaplama parçaları ve Osmanlı Dönemi çinileri; 16.yy- 20.yy arası İznik-Kütahya ve Çanakkale üretimi Osmanlı seramikleri, camdan yapılmış gaz lambaları ile laledanlar, güldanlar, şerbetlikler sergilenmektedir. Aynı katta Kaleiçi’nde gerçekleştirilen kazılarda ele geçen objelerin sergilendiği bölüm de yer almaktadır.', 'İkinci katta Osmanlı dönemi silahlarından, ok, yay, zıhgir, kılıç, kapsüllü ve çakmaklı tabanca ve tüfekler, barutluk ve yağdanlıklar ile madalya ve nişanlar, mühürler, hamaylı, vefk, köstekli saatlerden oluşan teşhir yer almaktadır. Bu katın duvarlarını hilye ve icazet gibi hat sanatının örnekleri süslemektedir. Aynı katta yer alan Dinler Odası’nda Teke Sancağı Mütesellimi Hacı Osmanzade Hacı Muhammed Ağa’nın vakfına ait Tekelioğlu Kur’an–ı Kerim’i özgün yerel bir eser olarak karşımıza çıkmaktadır. Aynı odada Osmanlı Dönemi Kaleiçi tebaası içinde var olan farklı dine mensup insanların kutsal kitapları İncil ve Tevrat’ta yer almaktadır.\r\n\r\nBir no’lu konaktan daha yüksek kotta bulunan ikinci konağa, bahçe merdivenlerinden çıkılarak geçiş yapılmaktadır. Her iki konakta bir cepheleri ile sokağa bakarken bir cepheleri ile bahçeye açılmaktadırlar.\r\n\r\nİkinci Konağın birinci katında Osmanlı Dönemi ahşap tavan, kapı, pencere kanatları, kapı tokmakları ve anahtarları;  heybe, çuval, iğlik kilim gibi dokuma örnekleri ile yöresel müzik aletleri teşhiri yer almaktadır. Ayrıca bölgenin özgün Döşemealtı Halısı dokuma tezgâhı ve halı örnekleri ile Osmanlı Dönemi küçük bir Antalya Mutfağı canlandırması yine bu katta bulunmaktadır.\r\n\r\nKonağın ikinci katında,  Osmanlı dönemi Kaleiçi ev yaşamını canlandıran misafirlerin ağırlandığı başoda,  hane halkının gün içinde ihtiyaçları doğrultusunda yemek -oturma odası olarak şekillendirilen mütevazı oturma odası, yatak odası, banyo yer almaktadır. Bu katta Osmanlı Dönemini yansıtan giyim örnekleri ve kahve kültürü teşhiri de bulunmaktadır.\r\n\r\nBahçe teşhirinde 13. yüzyıla ait Selçuklu Burç Kitabesi ile fetih kitabeleri özgün eserler olarak karşımıza çıkmaktadır.  Diğer bahçe eserlerini, Osmanlı Dönemi kitabeleri mezar taşları top ve gülleler oluşturmaktadır.\r\n\r\nAdres: Kılınçarslan Mahallesi, Mermerli Banyo Sokak, No:17 \r\nE-mail: antalyamuzesi@kultur.gov.tr\r\nTel 1: 0242 244 64 01', '6908803e18989.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 10:13:18', '2025-11-03 10:13:18'),
(24, 'Antalya Deniz Biyolojisi Müzesi', 'Antalya Deniz Biyolojisi Müzesi, Antalya\'nın merkezinde, Kaleiçi bölgesinde yer almaktadır. Bu konum, müzeyi turistler ve yerli ziyaretçiler için kolay erişilebilir kılar.', 'Müze, deniz yaşamını ve su altı dünyasını anlatan çeşitli sergiler ve multimedya gösterimleri sunmaktadır. Ziyaretçiler, deniz yaşamını daha yakından tanıma fırsatı bulurlar.\r\nAntalya Deniz Biyolojisi Müzesi, deniz biyolojisi araştırmaları ve deniz ekosistemlerinin korunması konusunda çalışmalar yapmaktadır. Ziyaretçiler, bu çalışmalar hakkında bilgi alabilir ve destek verebilirler.\r\nAntalya Deniz Biyolojisi Müzesi, deniz yaşamına ilgi duyan herkes için harika bir ziyaret noktasıdır. Hem yerel halk hem de turistler için eğitici ve eğlenceli bir deneyim sunar. Müze, deniz ekosistemlerinin korunmasının önemini vurgulayarak, ziyaretçilere çevre bilinci kazandırmayı amaçlamaktadır. Antalya\'da deniz yaşamını keşfetmek isteyen herkesin mutlaka ziyaret etmesi gereken bir yerdir.', 'Müze, deniz biyolojisi ve ekosistemleri hakkında interaktif sergiler ve eğitim programları sunmaktadır. Özellikle çocuklar ve öğrenciler için eğitici etkinlikler bulunmaktadır.\r\nMüzede, Akdeniz ve çevresindeki denizlerde yaşayan çeşitli deniz canlıları sergilenmektedir. Balıklar, kabuklular, yumuşakçalar ve diğer deniz organizmaları hakkında bilgi edinebilirsiniz.\r\n\r\nAdres: Selçuk, Selçuk Mah, 07100 Muratpaşa/Antalya\r\nTelefon: (0242) 243 28 27', '690885f742cf4.jpg', '[\"istanbul\"]', NULL, 1, '2025-11-03 10:37:43', '2025-11-03 10:37:43'),
(25, 'Antalya Mevlevihane Müzesi', 'Müze, Mevlevi kültürünü ve tarihini yansıtan zengin bir koleksiyona sahiptir. Mevlevi dervişlerine ait giysiler, el yazmaları, müzik aletleri ve diğer ritüel eşyaları görebilirsiniz.', 'Müze, belirli günlerde sema gösterileri düzenlemektedir. Bu mistik dans gösterileri, Mevlevi dervişlerinin ruhani yolculuklarını ve ritüellerini gözler önüne serer.\r\nMevlevi kültürüne dair eğitim programları ve atölye çalışmaları düzenlemektedir. Bu etkinlikler, ziyaretçilere Mevlevi öğretisini ve geleneklerini daha yakından tanıma fırsatı sunar.', 'Müze, Mevlevi kültürünü ve tarihini yansıtan zengin bir koleksiyona sahiptir. Mevlevi dervişlerine ait giysiler, el yazmaları, müzik aletleri ve diğer ritüel eşyaları görebilirsiniz. Antalya Mevlevihane Müzesi, Antalya\'nın Kaleiçi semtinde, tarihi bir yapının içinde yer almaktadır. Şehir merkezine yakın konumda bulunan müze, Osmanlı dönemi Mevlevihane\'sinin atmosferini yansıtır.\r\n\r\nAntalya şehir merkezinden müzeye yürüyerek ulaşabilirsiniz. Toplu taşıma araçlarıyla da Kaleiçi\'ne kolayca ulaşabilirsiniz. Kaleiçi\'ne ulaştığınızda, müze tabelalarını takip ederek kısa bir yürüyüşle müzeye varabilirsiniz.\r\n\r\nMüze, ziyaretçilere rehberli turlar sunarak koleksiyonlar hakkında daha detaylı bilgi edinme imkanı sağlar. Bu turlar, müzedeki eserlerin tarihini ve kültürel önemini daha iyi anlamanıza yardımcı olur.\r\nAntalya Mevlevihane Müzesi, Mevlevi kültürünün derinliklerine inen zengin koleksiyonları ve mistik atmosferi ile ziyaretçilerine tarih ve kültür dolu bir deneyim sunar. Müzeyi ziyaret ederek, Mevlevi öğretisinin izinde ruhani bir yolculuğa çıkabilir ve Osmanlı dönemi Mevlevihane\'sinin atmosferini deneyimleyebilirsiniz.\r\n\r\nAdres: Selçuk, Selçuk Mah No:36, 07100 Muratpaşa/Antalya', '6908909b61ba4.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 11:23:07', '2025-11-03 11:23:07'),
(26, 'Antalya Nekropol Müzesi', 'Antalya Nekropol Müzesi, geçmişin izlerini günümüze taşıyan ve Antalya’nın tarihi zenginliklerini gözler önüne seren önemli bir arkeolojik mekandır.', 'Antalya Nekropol Müzesi, geçmişin izlerini günümüze taşıyan ve Antalya’nın tarihi zenginliklerini gözler önüne seren önemli bir arkeolojik mekandır. Antik dönemlerden kalma mezar alanlarının sergilendiği müze, ziyaretçilerine benzersiz bir kültürel deneyim sunmaktadır.\r\n\r\nAntik dönemde bir mezarlık alanı olarak kullanılan bu yer, nekropol kültürüne dair önemli bilgiler sunmaktadır. Bölgeden çıkarılan eserler, dönemin yaşam biçimini ve inanışlarını anlamamıza olanak tanır.', 'Müze, antik döneme ait mezar taşları, lahitler ve çeşitli arkeolojik eserleri sergilemektedir. Alan, tarih meraklılarının geçmişi keşfetmesini sağlarken, eğitim programları ve rehberli turlar ile kültürel bir öğrenme merkezi olarak hizmet vermektedir.\r\nAntalya Nekropol Müzesi, tarihin izlerini yakından görmek, geçmişe bir yolculuk yapmak ve benzersiz arkeolojik buluntuları keşfetmek isteyen herkes için mükemmel bir destinasyondur.\r\nMüze, Antalya’nın Muratpaşa ilçesinde kolayca ulaşılabilir bir konumda yer almaktadır. Ziyaretçiler toplu taşıma veya özel araçlarla müzeye ulaşabilirler. Ayrıca, müzenin yakın çevresinde keyifli vakit geçirebileceğiniz çeşitli kafe ve dinlenme alanları bulunmaktadır.\r\n\r\nAdres: Yüksekalan, Ali Çetinkaya Cd. No:35/D, 07310 Muratpaşa/Antalya\r\nTelefon: (0242) 280 23 00', '690891a74db31.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 11:27:35', '2025-11-03 11:27:35'),
(27, 'Antalya Oyuncak Müzesi', 'Antalya Oyuncak Müzesi, Antalya\'nın Kaleiçi semtinde, tarihi liman bölgesinde yer almaktadır. Şehir merkezine yakın konumuyla kolayca ulaşılabilir bir noktadadır.', 'Antalya Oyuncak Müzesi, 2011 yılında açılmış olup, Türkiye\'nin ilk oyuncak müzelerinden biridir. Müze, çocukların ve yetişkinlerin ilgisini çekecek geniş bir oyuncak koleksiyonuna sahiptir. Eski ve yeni oyuncaklar, ziyaretçilerine geçmişe nostaljik bir yolculuk yapma fırsatı sunar.\r\nMüzenin koleksiyonları arasında yerli ve yabancı birçok oyuncak bulunmaktadır. Eski dönemlere ait tahta oyuncaklar, bebekler, arabalar ve peluş hayvanlar müzenin dikkat çeken parçalarındandır. Ayrıca, farklı kültürlere ait oyuncaklar da müzede sergilenmektedir.', 'Antalya Oyuncak Müzesi, Antalya\'nın Kaleiçi semtinde, tarihi liman bölgesinde yer almaktadır. Şehir merkezine yakın konumuyla kolayca ulaşılabilir bir noktadadır.\r\n\r\nAntalya Oyuncak Müzesi, haftanın her günü ziyaret edilebilir. Güncel ziyaret saatleri ve giriş ücreti bilgileri için müzenin resmi web sitesini ziyaret edebilirsiniz. Özellikle hafta sonları ve tatil dönemlerinde müze yoğun olabilir, bu yüzden erken saatlerde ziyaret etmekte fayda var.\r\nAntalya Oyuncak Müzesi, özellikle aileler için ideal bir ziyaret noktasıdır. Çocuklar için eğitici ve eğlenceli bir deneyim sunarken, yetişkinler için de nostaljik anılarla dolu bir yolculuk sağlar. Müze, Antalya\'nın kültürel zenginliklerinden biri olarak ziyaretçilerine keyifli anlar yaşatır.\r\n\r\nAntalya Oyuncak Müzesi\'ne ulaşmak için şehir merkezinden toplu taşıma araçları veya özel araçlar kullanılabilir. Şehir merkezinden tramvay veya otobüs ile müzeye kolayca ulaşabilirsiniz. Ayrıca, Antalya Havalimanı\'ndan taksi veya kiralık araçla da müzeye erişim sağlayabilirsiniz.\r\nAdres: Selçuk, Yat Limanı Sok No:112, 07000 Muratpaşa/Antalya\r\nTelefon: (0242) 248 49 33', '6908ab131d428.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 13:16:03', '2025-11-03 13:16:03'),
(28, 'Aziz (St.) Nikolaos Anıt Müzesi', 'Santa Claus Müzesi, 4. yüzyılda yaşayan ve Noel Baba olarak bilinen Aziz Nikolaos\'un yaşamına ve mirasına adanmıştır. Müzede, Aziz Nikolaos\'un yaşamı ve efsaneleri hakkında bilgi edinebilir, arkeolojik kalıntıları görebilirsiniz.', 'Kilisesi’nin ilk yapı dönemi kesin olarak bilinmemekle birlikte tarihi ve mimari verilere dayanarak 6. yüzyılda yapılmış bazilika olduğu kabul edilir.\r\n\r\nKilisenin 8. yüzyılda hasar görmesi ardından, 9. veya 10. yüzyılda kubbeli bazilika planında yeniden inşa edilir. Bu dönemden sonra Aziz Nikolaos Kilisesi pek çok onarım ve ek yapı dönemi geçirmiştir. 11. yüzyılda iç narteks duvar resimleriyle donatılmıştır. Bu resimler, Bizans resim sanatı gelişiminde dönemin üslup özelliklerini yansıtan önemli “konsil” (imparator ve piskoposların katılımıyla dini kararların alındığı dinsel toplantı) sahnelerini içermektedir.\r\n\r\nMyra, Ortaçağ’da deniz yoluyla Kudüs’e giden hacıların uğradıkları bir liman, Aziz Nikolaos kilisesi inançlıların hac yerlerinden biri olmuştur.', '12. yüzyıl sonlarında doğal afet sonucu Myros Çayı’nın yatağı değişmiş ve kuzeyden çamurlu sel sularının gelmesiyle Myra kenti, kilise ve kuzeydeki ek yapılar alüvyon toprakla dolmuştur.\r\n\r\nKilise19. yüzyılda önemini korumaya devam etmiştir; Rus çarı I. Nikolai’nin himayelerinde 1862-63 yıllarında kilisedeki kazı ve onarım çalışmaları sırasında günümüze gelen yeni bir çan kulesi yapıya eklenmiştir.\r\n\r\nAdres: Gökyazı Mahallesi Müze Caddesi Demre / Antalya\r\nE-mail: antalya@kulturturizm.gov.tr\r\nTelefone : 0 242 871 60 01', '6908ad62c5456.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 13:25:54', '2025-11-03 13:25:54'),
(29, 'Demre Müzesi', 'Likya Uygarlıkları Müzesi, Antalya\'nın Demre ilçesinde yer alan ve Likya medeniyetine ait zengin tarihi ve kültürel eserlerin sergilendiği önemli bir müzedir.', 'Likya dönemine ait eserlerin sergilendiği bu müze, tarihe meraklı olanlar için mutlaka ziyaret edilmesi gereken bir yerdir.\r\n\r\nLikya Uygarlıkları Müzesi, Antalya\'nın Demre ilçesinde yer alan ve Likya medeniyetine ait zengin tarihi ve kültürel eserlerin sergilendiği önemli bir müzedir. Likya dönemine ait eserlerin sergilendiği bu müze, tarihe meraklı olanlar için mutlaka ziyaret edilmesi gereken bir yerdir.\r\n\r\nAntalya İli Demre İlçesinde, Demre Müzesi Müdürlüğü Bakanlar Kurulu\'nun 24.05.2011 tarih ve 2011/1915 sayılı kararı ile kurulmuş ve Müdürlük 2014 yılı Kasım ayında faaliyetine başlamıştır. Demre Müzesi Müdürlüğü\'nün görev ve sorumluluk sahasını Demre ve Kaş İlçeleri oluşturur.\r\n\r\nLikya Uygarlıkları Müzesi\r\nKültür ve Turizm Bakanlığı, Kültür Varlıkları ve Müzeler Genel Müdürlüğü\'nün \"Andriake Ören yeri Ziyaretçi Karşılama Merkezi ve Gezi Güzergahı Düzenleme Projesi\" 2012-2014 yıllarında Andriake Liman Kenti güney yerleşimindeyer alan agora / plakoma, sarnıç, granarium yapısı (Likya Uygarlıkları Müzesi), hamamlar, kiliseler, sinagog vb. liman yapıları ile onurlandırma anıtlarının restorasyonu tamamlanarak 2015 yılı Haziran ayında açılmıştır.', 'Gezi yolunda son nokta M.S. II. yy.da yapılmış (Tahıl Ambarı, Horrea Hadriani - İmparatorluk Silosu) Granarium yapısıdır. Bu yapı günümüze kadar sağlam ayakta kalabilmiş niteliği nedeniyle Kültür ve Turizm Bakanlığı, tarafından Likya Bölgesine ait eserler ile Likya Uygarlığının tanıtımının yapıldığı Likya Uygarlıkları Müzesi olarak düzenlenmiştir.\r\n\r\nMüzenin içinde bulunduğu Andriake kentinin M.S. 7. yy\'a kadar işlevselliğini koruyan limanı bugün bataklık haline gelmiş ve deniz ile ulaşımı kesilmiş durumdadır. Ticari gemiler için korunaklı bir liman olmasının yanı sıra lojistik destek sağlayan tesisleri ile gemicilerin vazgeçilmez uğrak noktası olan Andriake\'nin bugün kullanılmayan rıhtımında, içinde amphoralarla zeytin yağı, şarap gibi sıvı malzemenin taşınmasını gösteren Antik Dönem Ticaret Gemisi canlandırması yer alır.\r\n\r\nLikya Uygarlıkları Müzesi, Antalya\'nın Demre ilçesine bağlı Kaya köyünde, antik Myra kenti yakınlarında yer almaktadır. Antalya şehir merkezine yaklaşık 150 kilometre mesafededir.Likya Uygarlıkları Müzesi\'ne ulaşmak için Antalya otogarından Demre\'ye giden otobüs veya minibüsleri kullanabilirsiniz. Demre merkezden müzeye dolmuş veya taksi ile kolayca ulaşabilirsiniz. Ayrıca, Antalya\'dan araba kiralayarak da bölgeye ulaşmanız mümkündür.\r\n\r\nAdres: Büyükkum, 07570 Demre/Antalya\r\nTelefon: (0242) 871 60 01', '6908b4c355f64.jpg', '[\"muze\"]', NULL, 1, '2025-11-03 13:57:23', '2025-11-12 19:49:23');
INSERT INTO `attraction` (`id`, `title`, `short_text`, `midle_text`, `body_text`, `at_image`, `image_seo`, `clip`, `views`, `created_at`, `updated_at`) VALUES
(30, 'Elmalı Müzesi', 'Elmalı Müzesi\r\nElmalı ilçesi İplik Pazarı Mahallesi\'ndeki Eski Hükümet Konağı’nın yeniden düzenlenmesiyle 2011 yılında hizmete giren Elmalı Müzesi\'nde, bölgenin tarihini aydınlatan önemli arkeolojik eserler sergileniyor.', 'Müzenin giriş katındaki teşhir salonlarında, Elmalı çevresindeki höyüklerde keşfedilen buluntulara yer veriliyor. Geç Kalkolitik Çağ\'a ait Bağbaşı eserleri ile Karataş - Semayük kazılarından elde edilen İlk Tunç Çağı eserleri; mezar ve depolama kaplarından seçilmiş örnekler, bu katta sergileniyor.\r\n\r\nMüzenin üst katındaki teşhir salonlarında sergilenenler arasında, Hacımusalar Höyük ve Karaçakır kazılarında bulunan eserler; Karaburun, Kızılbel ve Karabayır tümülüs kazılarından elde edilen buluntular; Likya şehir sikkeleri ve Roma imparatorluk sikkeleri; Arykanda kazılarında gün ışığına çıkarılan eserler; M.Ö. 5. yüzyıl Elmalı definesine ait imitasyon örnekler ve duvar resimleriyle dikkat çeken Karaburun ve Kızılbel mezar odalarının rekonstrüksiyonları yer alıyor.', 'Müzenin açık teşhir alanı olarak kullanılan arka bahçesinde ise Helenistik, Roma, Bizans dönemlerine ait ait mezar stelleri, sütun parçaları ve mimari elemanlarla birlikte, bölgede arcılığın geleneksel yöntemlerine ışık tutan bir \"arı sereni\" sergileniyor.\r\n\r\nAdres: İplik Pazarı Mahallesi, Hükümet Caddesi, No: :89\r\nE-mail: antalyaelmalimuzesi@kulturturizm.gov.tr\r\nTel 1: 02426184442', '690f6f80a1292.jpg', '[\"muze\"]', NULL, 1, '2025-11-08 16:27:44', '2025-11-08 16:27:44'),
(31, 'Anadolu Oyuncak Müzesi', 'Kepez Dokuma Park\'ta yer alan ve bir zamanlar, Dokuma Fabrikası\'nda çalışan işçilerin çocuklarını emanet ettikleri kreş binası olarak kullanılan bina, Kepez Belediyesince yeniden çocuklara armağan edilerek oyuncak müzesi haline getirildi.', 'Anadolu Oyuncak Müzesi bugün, zengin koleksiyonu ve rengarenk dünyasıyla hem çocukları hem de çocukluk yıllarına yolculuk etmek isteyen yetişkinleri ağırlıyor. \r\n\r\nAnadolu Oyuncak Müzesi\'nin 15 salonunda, 15 ayrı temada, 13 bin 800 oyuncak sergileniyor; her salonun teşhiri ve tanzimi birbirinden farklılık gösteriyor. İki katlı olan müzenin içinde, üst kattaki teşhir alanının yanında, sinema salonu ve kafeterya da yer alıyor. Alt katta ise her yaştan ziyaretçiye hitap eden kütüphane ile oyuncak ve sanat atölyesi bulunuyor. Atölyede çocuklara eğitim ve atölye hizmeti verilirken, velilere kafeteryada ya da kütüphanede vakit geçirme olanağı sunuluyor. Müzede;  anne-çocuk, baba-çocuk ve aile katılımı ile gerçekleşen etkinlikler ile aynı zamanda ileri yaşta insanlara da eğitimler ve sertifikalar veriliyor.', 'Anadolu Oyuncak Müzesi bahçesinde; biri 1000 yaşında, diğeri ise 1100 yaşında olan 2 anıt zeytin ağacı ile elektrikli çift vagonlu tren yer alıyor. Bahçenin içinde bir adet arkeoloji atölyesi, bir adet oyun parkı, bir adet hobbit evi, çeşitli heykeller ve satranç seti de yer alıyor. Toplam yeşillik alan açısından 5 dönüm alanda farklı köşe tasarımları ile dikkat çeken Anadolu Oyuncak Müzesi bahçesini, elektrikli nostaljik kara tren ile seyredebilirsiniz.\r\n\r\nAdres: Fabrikalar Mahallesi, Namık Kemal Bulvarı No:189, 07090 Kepez/Antalya\r\nTel: 0242 334 09 00', '69109b9ae9e5d.jpg', '[\"muze\"]', NULL, 1, '2025-11-09 13:48:10', '2025-11-09 13:48:10'),
(32, 'Suna & İnan Kıraç Kaleiçi Müzesi', 'Suna & İnan Kıraç Akdeniz Medeniyetleri Araştırma Merkezi (AKMED) Kaleiçi Müzesi, Antalya\'nın kalbi Kaleiçi\'nde, korunması gerekli kültür varlığı olarak tescilli iki binada yer alır.', 'Suna ve İnan Kıraç tarafından satın alınan bu binalar, 1993–1995 yıllarında yapılan özenli bir yenileme çalışmasının ardından \"özel müze\" statüsünde ziyaret açılmıştır.  \r\n\r\nBinalardan ilki, 19. yüzyıla ait iki katlı Antalya evinin tipik bir örneğidir.19. yüzyılın ikinci yarısına özgü Kaleiçi yaşamından kesitlerin özel efektlerle birlikte sunulduğu bir etnografya müzesi olarak düzenlenen binada; kahve ikramı, damat tıraşı ve kına gecesi gibi Anadolu halk kültürüne has öğeler sahnelenir.', 'Müze bahçesinde yer alan ikinci bina ise Aya Yorgi (Agios Georgios) adına inşa edildiği bilinen; 1863 yılında onarım görmüş bir Ortodoks kilisesidir. Yenileme sonrası bir sergi mekânı olarak düzenlenen müzenin ana salonunda, zengin Çanakkale Seramikleri koleksiyonu teşhir edilirken; üst katında, yöre kültürleriyle bağlantılı kısa soluklu tematik sergilere yer verilmektedir. \r\n\r\nAdres: Barbaros Mahallesi Kocatepe Sokak No: 25 Kaleiçi Muratpaşa/ANTALYA\r\nWeb Sitesi: https://akmed.ku.edu.tr/\r\nTel: (0242) 243 42 74', '6910b194d5e0c.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:21:56', '2025-11-09 15:21:56'),
(33, 'Phaselis Antik Kenti', 'Phaselis antik kenti günümüzde Kemer ilçesinin Tekirova beldesi sınırları içinde bulunmaktadır.', 'Akdeniz\'e uzanan küçük bir yarımada üzerinde yer alan Phaselis antik kentinin M.Ö. 7. yy\'da bir liman kenti olarak kurulduğu düşünülmektedir. Phaselis’in, yaklaşık 28,8 hektarlık alana yayılan yerleşim bölgesi, iki tepe üzerinde ve bu tepelerin arasındaki düz ovada bulunmaktadır.  Phaselis üç limanı ile dikkat çekmektedir; Kuzey Limanı, Merkez Limanı ve Güney Limanı. Tek bir liman yerine 3 liman bulunmasının nedeni, Phaselis\'in uzun bir süre Likya\'nın doğu kesimindeki en işlek liman şehri olması ve ana gelir kaynağının deniz ticareti olmasıdır.', 'Deniz ticareti Phaselis Antik Kenti için o kadar önemlidir ki gemi resimleri şehir sikkelerinde bile tasvir edilmiştir. Ancak şehrin sahip olduğu stratejik önem, şehrin sürekli bir tehdit altında olmasına sebep olmuştur. \r\n\r\nPhaselis Antik Kenti önce Pers hakimiyeti altına girmiş, ardından Büyük İskender\'e bir ay boyunca ev sahipliği yapmıştır. Büyük İskender sonrasında ise bir süre korsan egemenliği altında kalmıştır. Bizans döneminde piskoposluk merkezi haline gelen Phaselis Antik kenti, sonraki yıllarda bölgedeki diğer şehirlerle ortak kaderi paylaşarak önemini yitirmiş ve 13. yüzyılın başlarında tamamen terk edilmiştir.\r\n\r\nPhaselis Antik Kenti’nin limanları yakınındaki ilk dikkat çekici kalıntılar, şehri Phaselis\'teki korsan saldırılarından korumak için deniz kıyısı boyunca inşa edilmiş surlar ve Tahtalı Dağı\'ndan su getirmek için inşa edilmiş muhteşem su kemerleridir. Şehrin su ihtiyacı erken dönemde kuyu ve sarnıçlar tarafından karşılanırken, Roma döneminde bu kemerler inşa edilerek uzun mesafelerden su getirilmesi sağlanmış ve kanallar üzerinden şehrin tüm bölgelerine su dağıtılmıştır. Ana liman olarak hizmet veren şehir merkezi ve güney limanı, yumuşak taşlarla 25 metre genişliğinde bir cadde ve yağmur suyunu tahliye etmek için bir drenaj sistemi ile kanalizasyon ile birleştirilmiştir. Kentin ana eksenini oluşturan bu sokağın her iki tarafında Roma ve Bizans kalıntıları bulunmaktadır. Biri büyük diğeri küçük olmak üzere iki hamam vardır. \r\n\r\nGüney Limanı\'nın girişinde, Roma imparatoru Hadrian’ın şehre yaptığı ziyaretin onuruna yapılan bir eser bulunmaktadır.\r\n\r\nAdres: Çamyuva, 07980 Kemer/Antalya, Türkiye\r\n\r\nTelefon: (0242) 247 76 60\r\n\r\nWebsite: http://www.phaselis.org\r\n\r\nZiyaret Saatleri\r\nPhaselis Antik Kenti ziyaret saatleri şu şekildedir.\r\nPazartesi 08:00-19:00\r\nSalı 08:00-19:00\r\nÇarşamba 08:00-19:00\r\nPerşembe 08:00-19:00\r\nCuma 08:00-19:00\r\nCumartesi 08:00-19:00\r\nPazar 08:00-19:00', '6910b27bb26bc.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:25:47', '2025-11-09 15:25:47'),
(34, 'Alanya Hüseyin Azakoğlu Kent Müzesi ve Kent Belleği Merkezi', 'Şekerhane mahallesinde bulunan ve sahipleri tarafından kültürel amaçlı kullanılmak şartıyla Alanya Belediyesine tahsis edilen Azakoğlu Konağı, geleneksel Alanya evinin en güzel örneklerindendir.', 'Gerek planlamadaki bütünlük, gerek süsleme detayları göze çarpıcıdır. Mekansal rahatlık ve mekanlar arasındaki ilişki düzeni, kolay dolaşım imkanı ve yalınlık evin karakteristiğini oluşturur.', 'Ayakta kalmışların en iyi örneklerinden biri olan tescilli yapının, Alanya’nın kent belleğini oluşturmak için geçmişi ve geleceği bir arada barındıracak, kent kimliğinin korunmasında önemli bir katkı sağlayacak olan bir kent müzesine dönüştürülmesi amaçlanmıştır.\r\n\r\nAdres: Şekerhane, Gazi Abdurrahman Doğuş Sk., 07400 Alanya/Antalya', '6910b39580d45.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:30:29', '2025-11-09 15:30:29'),
(35, 'Aspendos Antik Kenti', 'Aspendos Antik Kenti, Türkiye\'nin güneyinde, Antalya’nın Serik ilçesinde  Eurymedon (Köprüçay) nehrinin kenarında bulunan antik Pamphylia bölgesinde yer almaktadır.', 'Akropol deniz seviyesinin yaklaşık 60 m üzerindedir ve Nymphaeum, Bazilika, Market Binası ve Odeion gibi günümüze kalan birçok kalıntının da bulunduğu düz bir tepede bulunmaktadır.\r\n\r\nEurymedon nehri, üzerinde ulaşımın sağlandığı bir nehirdi ve kente erişim sağlamakta idi. Şehrin refahının ana nedeni buydu. Hem arkeolojik kalıntılar hem de tarihi kaynaklar, Perslerin Pamphylia\'ya gelmesiyle birlikte Aspendos\'un M.Ö. 5. yüzyıla kadar antik dünya olayları sahnesine girdiğini ve İskender’in kontrolüne kadar ve sonrasında önemini korumaya devam ettiğini doğrulamaktadır.', 'Kente ilişkin yapılan araştırmalarda elde edilen son bulgular kentin tarihini daha da ileri götürmüştür. Son araştırmalar ve kazılar, Erken Demir Çağı\'ndan bazı kalıntıların bulunduğunu meydana çıkarmıştır. Aspendos antik kentindeki anıtsal yapılar çoğunlukla Helenistik ve Roma Dönemi\'ne aittir. Bizans ve Selçuklu dönemlerine kadar da kentte sürekli yerleşimin devam ettiği bilinmektedir.\r\n\r\nAspendos antik kentinin en meşhur eseri olan muhteşem Roma tiyatrosu, her yıl yaklaşık 400.000 kişi tarafından ziyaret edilmektedir. Bu tiyatro Roma ve Selçuklu dönemleri de dahil olmak üzere farklı tarihi dönemlerin izlerini taşımaktadır. Aspendos tiyatrosu, Roma imparatoru Marcus Aurelius döneminde, M.S. 160-180 yılları arasında inşa edilmiştir. Batı giriş duvarındaki yazıt, mimarın Theodorus\'un oğlu Zenon olduğunu ziyaretçilere aktarmaktadır. Anadolu’daki Asya\'daki çoğu tiyatro yapısında olduğu gibi, cavea veya seyirci tribünlerinin çoğu akropolisin doğu yamacında bulunurken, yapının geri kalanı taştan yapılmış bir kemer ve tonoz sistemi ile desteklenmektedir.\r\n\r\nAspendos tiyatrosu, yaklaşık 100 metre genişliğinde ve 22 metre yüksekliğinde bir cepheye sahiptir türünün en büyük binalarından biridir. Onu benzersiz yapan etkileyici detay ise, günümüze kadar oldukça iyi korunmuş olması ve mimari dekorasyonunun zenginliğidir. Yeni araştırmalar, tiyatronun kapasitesinin 7300-7600 kişi (kişi başına 45 cm oturma genişliği) olduğunu ortaya koymuştur.\r\n\r\nAspendos\'taki son arkeolojik kazı çalışmaları 2008 yılında Ankara Hacettepe Üniversitesi\'nden Profesör Veli Köse\'nin yönetiminde başlamıştır. Bu araştırma projesinin amacı, şehir ve çevresinin değişimini etkileyen doğal ve teknolojik faktörleri ilk yerleşim yerlerinden günümüze kadar incelemektir.\r\n\r\nAdres: Sarıabalı, 07500 Serik/Antalya, Türkiye', '6910b5b111d65.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:39:29', '2025-11-13 18:22:17'),
(36, 'Myra Örenyeri', 'Bugünkü Demre İlçe merkezinde ve civarında yer alan Myra Antik Kenti, aynı adı taşıyan ova üzerinde kurulmuştur. Myros Nehri\'nin (Demre Çayı) batısındaki ulaşıma elverişli kanal ile şehrin denizle bağlantısı sağlanmaktaydı.', 'Kanalın diğer yanında yer alan Andriake (Çayağzı) Limanı\'ndan da bölgenin deniz ulaşımı ve ticareti yürütülmekteydi. Myra Antik Kenti özellikle Likya Dönemi kaya mezarları, Roma Dönemi tiyatrosu ve Bizans Dönemi Aziz Nikolaos Kilisesi (Noel Baba) ile ünlüdür. Kaya mezarları, Likçe yazıtları ve sikkeler, Myra’nın en azından M.Ö. 5\'inci yüzyıldan itibaren varlığını sürdürdüğünü gösterirler.\r\n\r\nM.S. 2\'nci yüzyıl Myra’nın büyük bir gelişmeye sahne olduğu dönemdir. Likya Birliğinin Metropolisi olan şehirde, Likyalı zengin kişilerin yardımları ile birçok yapı inşa edilmiş ve onarılmıştır. Bizans Döneminde ise Myra, dini yönden olduğu kadar idari yönden de önde gelen şehirlerden biri olmuştur. Günümüze dek ulaşan ününü, Aziz Nikolaos’un (Noel Baba) M.S. 4\'üncü yüzyılda şehrin piskoposu olmasına ve ölümünden sonra aziz mertebesine ulaşıp adına kilise yapılmasına borçludur. Myra, 7\'nci yüzyıldan itibaren gerek deprem, su baskını ve Demre Çayının getirdiği alüvyonlar, gerekse Arap akınları sebebiyle önemini yitirip 12\'nci yüzyılda köy hüviyetine dönüşmüştür. Günümüz kalıntılarını, akropolün güney eteğinde yer alan tiyatro ile her iki yanında yer alan kaya mezarları oluşturur. Yapılan araştırmalara göre bugün oldukça sağlam durumda olan Roma Dönemi surlarının dışında, Helenistik hatta M.Ö.5\'inci yüzyıla tarihlenen sur kalıntılarına akropol tepesi ve çevresinde rastlamak mümkündür. Akropolün güney eteğinde yer alan tiyatro, gerek oturma sıraları gerekse sahne binası ile iyi korunmuş bir Roma Dönemi tiyatrosunun özelliklerini yansıtır. Sahne binası ikinci katın yarısına kadar ayaktadır. Tiyatronun hemen iki yanında, kabartmalı veya düz kaya mezarları yer alır.', 'Likyalıların ahşap ev mimarisinin kaya mezarlarına en iyi uyarlanmış örnekleri olan Myra mezarlarının içinde, ölüyü ve yakınlarını betimleyen kabartmalı mezar, en ilginç örneklerden biridir. Ayrıca yine kabartmalı veya kitabeli birçok kaya mezarı, kayalığın güneye bakan yüzünde üst üste veya yan yana sıralanmaktadır. Tiyatro yakınındaki şehir merkezine giderken yolun solundaki hamam kalıntıları ise Roma Dönemi tuğla mimarisinin erken ve ilginç örneklerini oluştururlar. Şehrin su ihtiyacı, Demre Çayının aktığı vadi kenarındaki kayaya oyulmuş kanallarla karşılanmaktaydı. Likya konfederasyonunda üç oy hakkına sahip altı şehirden biri olan Myra’nın “En parlak kent” unvanıyla anılması ne denli önemli bir kent olduğunu göstermektedir. Myra’nın Likya konfederasyonuna ait sikkelerin yanında kendi adıyla basılmış sikkelerinde, şehrin ana tanrıçası Artemis’in Anadolu’nun en eski tanrıçası Kybele formunda temsil edilmiş olması ayrı bir önem taşımaktadır.\r\n\r\nAdres: Alakent, Cengiz Sk. No:13, 07570 Demre/Antalya, Türkiye\r\n\r\nTelefon: (0242) 238 56 88\r\n\r\nZiyaret Saatleri\r\nMyra Örenyeri ziyaret saatleri şu şekildedir.\r\n\r\nPazartesi 09:00-19:00\r\nSalı 09:00-19:00\r\nÇarşamba 09:00-19:00\r\nPerşembe 09:00-19:00\r\nCuma 09:00-19:00\r\nCumartesi 09:00-19:00\r\nPazar 09:00-19:00', '6910b76e3bdf0.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:46:54', '2025-11-09 15:46:54'),
(37, 'Olympos Antik Kenti', 'Klasik Roma dönemi tiyatro, bazilika ve hamam yapısının bulunduğu Olympos’un akropolü', '“Yüksek dağ” anlamına gelen Olympos, “sönmeyen ateşin kenti” olarak da nitelendiriliyor. Ünlü efsanelere konu olan bu ateş, kaynağını “Yanartaş” olarak da bilinen “Chimaera”dan alıyor.\r\nOlympos, Likya Birliği\'nin önemli yerleşim merkezlerinden biri olarak kabul edilir. Komutan Servilius İsauricus, Helenistik Dönem\'de kurulan bu şehri korsanlardan temizleyerek M.Ö. 78\'de Roma topraklarına kattı. Yakınındaki doğal gazlar (metan) sürekli kendi kendine yandığı için, bu antik kent Çıralı\'daki “Hephaistos” kültüyle ün kazanarak önemli bir dini merkez oldu.\r\n\r\nOlympos Örenyeri içinden geçen dereciğin (Ulupınar) iki yanına yayılıyor. Bu iki yaka hala izleri görülen bir köprüyle birleştirilmiş.', 'Klasik Roma dönemi tiyatro, bazilika ve hamam yapısının bulunduğu Olympos’un akropolü; kumsaldan da görülen mezarlar üstündeki yüksek tepe. Akropoldeki yapı kalıntılarıysa, Ortaçağ\'da kale şekline sokulmuş surlara ait.\r\n\r\nBu antik kentin kalıntıları arasında en ilginci Antalya Müzesi kazılarıyla çıkarılan “Kaptan Eudomus’un lahdi” sayılıyor. En önemlisiyse iç duvarları yer yer freskolarla süslü Bizans Kilisesi.\r\n\r\nÜnlü “Likya Yolu” yürüyüşünü yapacaksanız, Olympos antik kenti ve civarının bu güzergahın yedi buçuk kilometrelik etabını da oluşturduğunu hatırlatalım.\r\n\r\nAdres: Yazır Mahallesi Olympos Örenyeri Mevkii Kumluca / Antalya\r\nE-mail: -\r\nTel 1: 02428921325', '6910b89667eac.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:51:50', '2025-11-09 15:51:50'),
(38, 'Perge Antik Kenti', 'Antalya İli, Aksu İlçesi sınırlarında kalan Perge, kent merkezinin 17 km doğusunda kalmaktadır.', 'Kentte yürütülen araştırmalar, yapılarıyla ünlü bu şehrin prehistorik birikiminin akropolde ele geçirilen seramik örnekleri ışığında Erken Tunç Çağı’na değin geriye uzandığını ortaya koymuştur. Hitit yazılı metinlerinde “Parha” olarak geçen kentin kazı tarihçesi Ord. Prof. Dr. Arif Müfid MANSEL’in 1946 yılındaki çalışmalarıyla başlar. Süreç içerisinde 1970’li yıllarda Prof. Dr. Jale İNAN’ın gerçekleştirdiği kazıları 1990’lı yıllarda Prof. Dr. Haluk ABBASOĞLU devralmıştır. Bununla birlikte Perge kazıları 2012 yılından bu yana Antalya Müzesi Müdürlüğü başkanlığında yürütülmekte olup, içinde bulunduğumuz yıl içinde kazı, restorasyon ve konservasyon çalışmaları halen Müdürlüğümüzce sürdürülmektedir. Kendi içinde üç ana dönem geçirmiş olan Perge, ilk parlak devrini Hellenistik Dönem’de yaşamıştır. MÖ III. yüzyılda planlı bir kent olarak tasarlanmış olan şehrin anılan dönemini, bugün dahi sağlam şekilde ayakta duran Hellenistik Dönem Kuleleri temsil etmektedir.', 'Bununla birlikte Perge, altın çağını Roma İmparatorluğu egemenliğinde yaşamıştır. Anlaşıldığı üzere Perge, MS II-III. yüzyıllarda “Pax Romana (Roma Barışı)” olarak bilinen barış ve zenginlik döneminin getirdiği nimetlerden olabildiğince faydalanmış, bu getirileri jeopolitik konumu ile birleştirerek müreffeh bir hayat standardını yakalamıştır. Sözü edilen dönemde kent, yeniden imar faaliyetlerine konu olmuş, günümüzde ziyaretçilerin odak noktasını oluşturan Tiyatro, Stadium, Kent Kapısı, Agora & Macellum, Palaestra gibi önemli kamu yapıları ile Hamamlar, Su Kanalları ve Anıtsal Çeşmeler gibi su ile ilintili estetik düzenlemeler Roma Dönemi’nde inşa edilmiştir.\r\n\r\nKronolojik süreç içerisinde son parlak dönemini Doğu Roma (Bizans) İmparatorluğu Dönemi’nde yaşamış olan Perge, döneme damgasını vuran Hıristiyanlığın etkisi ile bu dinin önde gelen azizlerinin uğrak yeri olmuş; St. Paulus’un uğrak yeri olan Perge, Pisidia Antiocheia’ye uzanan St. Paulus yolunun başlangıç noktasını oluşturmuş, MS V. ve VI. yüzyıllarda şehirde görkemli bazilikalar inşa edilmiştir ve Perge; “Metropolit Kent” kimliğini kazanmıştır.\r\n\r\nBu bağlamda; Tiyatro, Güney Hamamı, Agora & Macellum, Kestros Çeşmesi, Sütunlu Ana Cadde gibi yapıların kazıları 1946-2012 yılları arasında gerçekleştirilmiş olup, Müdürlüğümüz başkanlığındaki kazılarda kentin ikinci arteri konumundaki Sütunlu Batı Cadde’nin ve bu caddeye paralel uzanan su kanalının, Caracalla Çeşmesi’nin (Palaestra yapısının ana cephesi ve nympahion havuzu dâhil olmak üzere)kazısı tamamlanmış, Batı Nekropolis’e değin uzanan güzergâh bütünüyle açılmıştır. Diğer taraftan alan arkeolojisi ve saha yönetimi çerçevesinde Ana Cadde’nin doğu ve portikolarının ıslahı sağlanmış, Roma Kapısı’ndan Kent Meydanı’na değin uzanan büyük alanın rehabilitasyonu, Hellenistik Kuleleri ve Agora’yı da kapsayacak şekilde bütüncül olarak ele alınmıştır. Ayrıca 2017 yılı içerinde Perge Tiyatrosu da ziyaret açılmıştır.\r\n\r\nAdres: Barbaros, Perge Yolu, 07112 Aksu/Antalya, Türkiye\r\n\r\nTelefon: (0242) 238 56 88\r\n\r\nZiyaret Saatleri\r\nPerge Antik Kenti ziyaret saatleri şu şekildedir.\r\n\r\nPazartesi 08:00-19:00\r\nSalı 08:00-19:00\r\nÇarşamba 08:00-19:00\r\nPerşembe 08:00-19:00\r\nCuma 08:00-19:00\r\nCumartesi 08:00-19:00\r\nPazar 08:00-19:00', '6910b9173527e.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 15:53:59', '2025-11-12 20:15:05'),
(39, 'Patara Antik Kenti', 'Likya Birliği’nin başkentliğini üstlenen Patara, M.Ö.13. yüzyıla ait Hitit metinlerinde “Patar” olarak geçiyor.', 'Tarihi ve arkeolojik önemi büyük olan Patara Antik Kenti, Ksanthos Vadisi’nde denize açılabilecek tek yer olması nedeniyle yüzyıllarca ayakta kaldı. 1988 yılından beri kazıları sürdürülen kent, Hıristiyanlık için de büyük bir anlam taşıyor. \"Noel Baba\" diye anılan Saint Nicholaos Patara’da dünyaya gelmiştir. Ayrıca Aziz Paul’un da Roma\'ya gitmek için buradan gemiye bindiği biliniyor. Patara aynı zamanda Anadolu\'dan Roma\'ya nakledilen tahılların depolanıp saklandığı bir liman olarak da ünlendi.\r\n\r\nPatara, M.Ö. 2. Yüzyıl başında Seleukos Krallığı’nca kontrol edilmeye başladığında Likya’nın başkenti gibi kabul gördü. Bu durum Patara’nın Roma’ya karşı özerklik ve Rhodos’a karşı bağımsızlık kazandığı M.Ö. 167/68 yılında resmileşti. Roma egemenliğine geçtikten sonra da önemini yitirmeyen kent, valilerin adli işlerini gördüğü bir merkez oluşu yanında, doğu eyaletleriyle bağlantı kurduğu bir deniz üssü olarak da önemini korudu.', 'M.S. 43 yılında Roma eyaleti olan Likya, M.S. 74’de Pamphylia ile birleştirilerek tek eyalete dönüştürülünce de Patara başkent olmayı sürdürdü. Helenistik dönemin anıtsal yapıları süreçle paralellik gösterdi. Roma sonrasında, Apollon kehanet merkezi olarak ün yaptı. Bizans’ta da Hıristiyanlar için önemli bir merkez oldu. İmparator Konstantin\'in başkanlığındaki M.S. 325\'teki İznik Konsülünde Likya\'nın tek imza yetkilisi Eudemos, Patara Piskoposu’ydu.\r\n\r\nAntik kente giriş, görkemli ve iyi korunmuş Roma zafer girişinden yapılıyor. Yazıtlardan M.S. 100 yıllarında bölge valise adına inşa edildiği anlaşılıyor. Takın (girişin) batısında, Likya tipi lahitlerin bulunduğu Nekropolis (Antik Mezarlık Alanı) alanı uzanıyor. Kentin en güney ucunda Kurşunlu Tepeye yaslanmış tiyatro, depremden sonra M.S. 147’de yeniden inşa edildi. Genel görünümün seyredildiği en güzel köşe olan Kurşunlu Tepe’nin diğer kalıntıları Vespasian Hamamı, Korinth Tapınağı, ana cadde ve antik liman yapılarıdır.\r\n\r\nPatara\'nı anıtsal yapılarından biri de İmparator Hadrian ve eşi Sabina tarafından M.S. 2. yy.\'da yaptırılan tahıl ambarıdır. (Granarium) Tiyatronun kuzeyindeyse Patara’nın başkent olarak toplantılara evs ahipliği yaptığı Meclis Binası yer alıyor. Kente yaklaşık 20 kilometre uzaklıktaki bir kayalıktan su getiren su yolları da dikkat çeken kalıntılardandır.\r\n\r\nAdres: Gelemiş Mahallesi Örenyeri Sokak No:1 Kaş / Antalya\r\nE-mail: -\r\nTel 1: 02428435018', '6910bc354f051.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:07:17', '2025-11-12 20:11:00'),
(40, 'Termessos Antik Kenti', 'Termessos, Toros Dağları\'nda (günümüz Antalya ili, Türkiye) Solymos dağının güney-batı tarafında 1000 metreden daha yüksek bir rakımda kurulmuş bir Pisidian kentiydi.', 'Antalya\'nın kuzey-batısına 30 kilometre uzaklıktadır. Güllük Dağı\'nın zirvesinde, Antalya\'nın çevresindeki traverten dağlarının arasından 1.665 metre yüksekliğe kadar yükselen doğal bir platformda kurulmuştur.\r\n\r\nAna yoldan, şehre çıkan dik bir yol bulunmaktadır. Bu yoldan Termessosluların “Krallar Yolu” olarak adlandırdığı antik yolun yanı sıra Helenistik dönem sur duvarları, sarnıçlar ve diğer pek çok kalıntı ve ünlü Yenice geçidi görülmektedir. MS 2. yüzyılda Termessos halkının katkılarıyla inşa edilen Kral Yolu, şehir surlarının üstünden geçer ve şehrin merkezine kadar düz bir çizgide uzanmaktadır.', 'Termessos’da resmi yapıların bulunduğu alan, şehrin iç duvarların biraz ötesinde düz bir bölgede bulunmaktadır. Bu resmi yapılardan en çarpıcı olanı, özel mimari niteliklere sahip olan agoradır. Agora’nın yani açık hava pazar yerinin zemin katı taş bloklar üzerinde yükseltilmiş ve kuzeybatı tarafına beş büyük sarnıç oyulmuştur. Agora’nın üç tarafı stoalarla çevrilidir. Termessos\'ta altı farklı büyüklükte ve türde tapınak bulunmaktadır. Bunlardan dördü kutsal bir bölge olan odeon yakınında bulunmaktadır. Termessos, kademeli bir gerileme döneminin ardından 5. yüzyılda nihayet terk edilmiştir. \r\n\r\nKent, 19. yüzyılın sonunda bu bölgede seyahat eden Polonyalı Pamphylia araştırmacısı Karol Lanckoroński tarafından fark edilmiştir. Termessos’un yazılı tarihte ilk kez bahsedilişi Homeros’un İlyada’sında olmuştur. Homeros, kanatlı bir at olan Pegasus\'a binen ve Chimera katili olarak tanınan Yunan kahraman Bellerophon\'un, Termessos\'u fethetmek için Likya kralı tarafından görevlendirildiğinden bahsetmektedir. Termessos sakinleri, Bellerophon’u atı Pegasus ile dağların üzerinden uçarak teslim olmaya zorlamıştır. Bu hikaye dışında, Termessos antik tarihi hakkında çok az şey bilinmektedir. Termessos’un Isauria ve Kilikya sakinleri ile yerel halk olan Pisidia kabilesi tarafından kurulduğu düşünülmektedir. Aynı kabile şimdi Isparta ilinde, Sagalassos şehrini kurdukları yere yerleşmiştir. Termessos sakinleri kendilerine Solymi demekteydiler ve bu isim Strabon\'a göre, daha sonra Zeus ile özdeşleşmiş bir Anadolu tanrısı olan Solymeus\'tan gelmektedir. Bu, Termessos\'ta basılan sikkelerin tanrının görüntüsü ve ismiyle de örtüşmektedir.\r\n\r\n19. yüzyılın ilk yarısında ilk Avrupalı ​​kaşifler Termessos\'a gelmiştir. Bunların arasında 1847\'de yayınlanan ‘’Likya\'da Seyahatler’’ kitabının yazarı olan Thomas Abel Brimage Spratt ve Edward Forbes vardır. İngiliz arkeolog Charles Fellows da Termessos\'u ziyaret etmiştir. \r\n\r\nAdres: Bayatbademleri, 07800 Döşemealtı/Antalya, Türkiye\r\n\r\nTelefon: (0242) 247 76 60\r\n\r\nZiyaret Saatleri\r\nTermessos Antik Kenti ziyaret saatleri şu şekildedir.\r\n\r\nPazartesi 08:30-19:00\r\nSalı 08:30-19:00\r\nÇarşamba 08:30-19:00\r\nPerşembe 08:30-19:00\r\nCuma 08:30-19:00\r\nCumartesi 08:30-19:00\r\nPazar 08:30-19:00', '6910bf2281d5d.png', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:19:46', '2025-11-09 16:19:46'),
(41, 'Ksantos Antik Kenti', 'Ksanthos, başlıca Likya ve Roma akropollerinden oluşan bugünkü Eşen Çayı kenarındaki ovaya hakim iki tepeüzerinde kurulmuş olan bir kenttir.', 'M.Ö. 545-546 yıllarında Pers egemenliğine girene kadar bağımsızlığını sürdüren kent, M.Ö. 475–450 yılları arasında büyük bir yangın felaketi geçirmiştir. M.Ö. 2. yy.’da Likya Birliğinin başkenti olan Ksanthos, M.Ö. 42 yılında Romalıların kontrolüne, daha sonraki dönemde ise 7. yy. Arap akınlarına kadar piskoposluk merkezi olarak Bizans egemenliğinde kalmıştır.', 'Yerleşen her uygarlığın inşa ettirdiği yapılarla insanlık tarihine ışık tutan bu merkez 1988 yılında UNESCO Dünya Miras Listesi’ne alınmıştır.\r\n\r\nAdres: Kınık Mahallesi, Fethiye Karayolu\r\nE-mail: -\r\nTel 1: 02428454799', '6910bff02c40f.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:23:12', '2025-11-12 20:09:26'),
(42, 'Side Antik Kenti', 'Antalya Side Tiyatrosu, kentin yer aldığı yarımadanın daraldığı kesimde bulunuyor', 'Antalya Side Tiyatrosu, kentin yer aldığı yarımadanın daraldığı kesimde bulunuyor Yapı, plan açısından Helenistik geleneğin yarım daireden taşan biçiminde, ancak inşa tekniği açısından Roma mimarisi özellikleri taşıyor, Tiyatronun sahne binası (Scaenae Frons) üç kattan oluşuyor, Cavea\'nın (oturma sıraları) diazoma ya (basamakların ortasındaki yol) kadar olan kısmı bir yamaca yaslanmış üst kısmıysa tonozlarla ve tropezoid (eğimli) tonozlarla eğim oluşturulmuş basamaklar bu eğimli düzleme oturtulmuştur, Side Antik Tiyatro\'su bu eşsiz özelliğiyle bu coğrafyadaki en özgün yapılardan birisidir, Süslemelerinde Antoninler Dönemi barok özelliği görülen Side Antik Tiyatrosu, Roma\'daki Pompeius Tiyatrosu ile başlayan mimarinin izlerini taşıyor. Birinci katın podyumunda Dionysos frizi yer alıyor. Frizde şarap tanrısı ve tiyatronun hakimi Dionysos\'un hayati batıdan doğuya doğru kronolojik_olarak anlatılıyor ve doğu uçta Gigantomakhia ile sonuçlanıyor, Sahne binasının cephesi de mimari süsleme ve heykellerle hareketlendirilmiş', 'Adres: Side Mahallesi Liman Caddesi No:2 Manavgat / Antalya\r\nE-mail: side@muze.gov.tr\r\nTel 1: 02427531542', '6910c169921e6.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:29:29', '2025-11-12 20:07:25'),
(43, 'Simena Antik Kenti', 'Kale Köyü eski Simena antik kenti üzerine kurulmuştur.', 'Bulunan yazıtlardan kentin tarihini M.Ö. IV. yüzyıla kadar indirebiliyoruz. Simena kalesi Orta Çağ\'da kullanılmıştır.\r\n\r\nOrta Çağ surlarının oluşturduğu iç kalede, kalıntıları birkaç bloktan ibaret olan bir tapınak ile bu tapınakla irtibatlı bir stoada yer almıştır. Ayrıca yine kale içinde, doğal kayaya oyulmuş 7 oturma sırası ile 300 kişilik bir tiyatro yer alır ki bu, Lykia şehirleri içinde en küçük tiyatrodur.\r\n\r\nKaya mezarının üzerinde, düzgün bloklardan oluşan Roma Devri duvarı ve onun üzerinde de mazgalları ile geç devir suru vardır.', 'Burada aynı anda üç ayrı devir görmek mümkündür. Kıyıda, harap durumdaki hamamın kitabesinde \"Aperlai halkı ile meclisi ile birliğin diğer şehirleri tarafından İmparator Titus\'a armağan edilmiştir\" ibaresi bulunur. İkisi ev tipi mezar olmak üzere burada birçok mezar görülmektedir. Kulenin kuzeyinde kalan ev tipi mezarda Lykia dilinde yazıt dikkati çeker.\r\n\r\nKale\'den Üçağız\'a bakıldığında, buranın ne kadar emniyetli bir doğal liman olduğu görülür.\r\n\r\nAdres: Üçağız Mah., Kale Köyü Mevkii\r\nE-mail: antalya@kulturturizm.gov.tr\r\nTel 1: 02428742022', '6910c25747cf4.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:33:27', '2025-11-09 16:33:27'),
(44, 'Arykanda Antik Kenti', 'Kent, Bey Dağları’nın güneyinde, yerleşimi bir duvar gibi kuzeyden sınırlayan Şahinkaya isimli sarp kayalığın eteğinde yer almaktadır.', 'Bu konumundan dolayı da Luwice’de “Arykawanda: Yüksek Kayalığın Yanındaki Yer” anlamına gelen ismi zamanla Arykanda’ya dönüşmüştür. Arykanda ilk kez 1838 yılında, İngiliz araştırmacı-gezgin Charles FELLOWS tarafından mezar yazıtları ve yüzeyde bulduğu sikkelere dayanarak lokalize edilmiştir.\r\n\r\nKent özellikle Hellenistik ve Roma Dönemi’nde yoğun bir şekilde iskân edilmiştir. En erken tarihli mimari veriler MÖ IV. yüzyılın sonu III. yüzyıl başına tarihlenen kaya mezarlarıdır. Lykia tarihinde, siyasi olaylarda etkin bir rol oynamamış olmasına karşın Doğu Lykia’nın en önemli ana yollarından üzerinde bulunan Arykanda özellikle kereste ticareti ile zenginleşmiştir. Arykanda Roma İmparatorluk Dönemi’nde zengin su kaynaklarının da etkisiyle güvenli bir konaklama ve dinlenme yeri olma özelliği kazanmıştır. Kent en parlak dönemini MS II-III. yüzyıllarda yaşamıştır.', 'Tipik bir yamaç yerleşimi olan yerleşimin doğusu ve batısı sarp falezlerle; kuzeyi ise Şahinkaya ile sınırlanmaktadır. Teraslar üzerine kurulmuş olan bu kentin en önemli kalıntıları arasında alt teras üzerindeki gymnasium ve hamam ile yukarı terastaki tiyatro, odeon, stadion, agora ve küçük hamam gelmektedir. Ayrıca akropolde Traianus ve Helios tapınakları ile Nal Tepe’deki bazilika, doğu nekropolünde de kilise bulunmaktadır. Kentte sur duvarları bulunmamaktadır, surların yerine bu görevi bir bakıma teras duvarları üstlenmiştir.\r\n\r\nAdres: Arif, 07740 Finike/Antalya, Türkiye', '6910c30097da1.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:36:16', '2025-11-09 16:36:42'),
(45, 'Limyra Antik Kenti', 'Antalya İli, Finike İlçesi, Saklısu Mahallesi sınırlarında yer alan Limyra Antik Kenti, Toçak Dağı’nın güney eteklerinde, erken dönem yapıların yer aldığı Akropol ile onun hemen güneyinde, şimdi karayolu ile ayrılan düzlükte Roma ve Doğu Roma (Bizans) Dönemi surları içinde kalan alanı kapsamaktadır.', 'Limyra\'nın adı, Likçe yazıtlarda \"Zemuri\" olarak geçmektedir. Bu durum şehrin en azından MÖ 5. yy’dan itibaren yerleşim gördüğünün kanıtlamaktadır. Kent en parlak dönemini MÖ 4. yy’ın ilk yarısında, bölgenin başkenti konumuna geldiği Likya Kralı Perikle zamanında yaşamıştır. Bölgeye ilişkin kayıtlardan; Perikle\'nin Likya Birliğini oluşturmak ve egemenlik sahasını genişletmek için uğraştığı yıllarda, Pers hâkimiyetinin söz konusu olduğunu ortaya koymaktadır. Ancak bu hâkimiyet sadece sözde kalmış, diğer şehirler gibi Limyra\'nın da büyük bir serbesti içinde bulunduğu söylenebilir.\r\n\r\nPerikle Dönemi’nden sonraki parlak devrini MS 2-3. yüzyıllarda yeniden yaşayan Limyra, depremler yüzünden zarar görse de yeniden inşa edilmiştir. Doğu Roma (Bizans) egemenliği sırasında piskoposluk merkezi olan kent, MS 8-9. yüzyıllardaki Arap akınları sonrasında terk edilmiştir.', 'Kentin kuzeyinde yer alan Akropol, bir iç kale ile aşağı kaleden oluşmaktadır. Aşağı kalede surlar, sarnıçlar, kilise ve Perikle Heroonu yer alır. MÖ 4. yy’a tarihlenen Kral Perikle\'ye ait bu anıt mezar, mimarisinin Ksanthos\'taki Nereidler Anıtı’na benzemesi ve önemli parçalarının Antalya Müzesi’nde sergilenmesi ile ayrı bir önem arz eder. Akropolün düzlüğe ulaştığı yerde Turunçova-Kumluca karayolunun hemen kenarında, orijinali Hellenistik Döneme ait olan ve MS 141 yılında büyük bir onarım geçiren tiyatro binası yer alır.\r\n\r\nKarayolunun güneyi; Limyros Çayı ile doğu ve batı olmak üzere bölünmüş iki ayrı ada halindedir. Limyros’un batısındaki Erken Doğu Roma (Bizans) Dönemi suru içindeki alanda, daha eski kalıntılar vardır. Surun güney duvarı içerisinde “Ptolemaion” adlı yapı ortaya çıkarılmıştır. Hellenistik Dönem’de yapılan bu anıt ve ona ait Antalya Müzesi’nde sergilenen heykeltıraşlık eserleri önemli buluntularıdır. Alanda yer alan bir diğer önemli yapı ise İmparator Augustus\'un manevi oğlu Gaius Caesar adına MS 4 yılında yapılmış anıtsal mezarıdır. Anıt, Gaius Caesar\'ın Kudüs\'ten Roma\'ya dönerken Limyra\'da ölmesi nedeni ile inşa edilmiştir. Cenaze veya içinde küllerin bulunduğu urne Roma’ya götürülmüş, onun anısına içinde naaşı olmayan anıtsal mezar (kenotaph) yapılmıştır.\r\n\r\nLimyra, Likya Bölgesi’nin en çok kaya mezarına sahip kentlerinden biridir. Kentte 400’ü aşkın kaya mezarı yer almaktadır ve çoğu mezar Likya dilinde yazılmış kitabeleriyle bilinmektedir.\r\n\r\nAdres: Yuvalılar Köyü, Turunçova, Finike, Antalya, Yuvalı, 07940 Finike/Antalya, Türkiye', '6910c40d49dd8.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:40:45', '2025-11-09 16:40:45'),
(46, 'Syedra Antik Kenti', 'Alanya-Gazipaşa karayolunun yaklaşık 20.km.sinde Seki Köyü sınırları içerisindedir. Kente, batıda halen ayakta olan anıtsal kapı ile girilir.', 'Kentte, Antik Çağdan günümüze değin kullanılan, içleri sıvalı doğal kaynaktan beslenen sarnıçlar vardır. Kentin su gereksinimi çok sayıdaki diğer sarnıçlarla da karşılanmaktadır. Kent içindeki bir mağarada, doğal kayaya oyulmuş nişin çevresi freskolarla süslenmiştir. Mağara dinsel amaçlı kullanılmıştır ve vaftiz mağarası olarak bilinmektedir. Kentin doğusunda, çok görkemli bir yapı kalıntısı olan hamam ile karşılaşıyoruz. Zemininde yer yer mozaik kalıntıları görülmektedir. Hamamın hemen batısında kuzey-güney doğrultusunda kentin sütunlu caddesi uzanmaktadır. Caddenin kuzeyindeki duvarda nişler yapılmıştır.', '1994 yılından bu yana Alanya Müze Müdürlüğü\'nce yapılan kazılar sonucunda, sütunlu caddenin, 250 x 10 metre boyutlarında ve kuzeyi sütunların taşıdığı ahşap çatı ile kapalı, güneyi taş döşemeli açık yol şeklinde olduğu ortaya çıkmıştır. Oyun ve yarışlarla ilgili bilgiler içeren birçok yazıtın varlığı kente önem kazandırmıştır. Kentdeki diğer önemli yapılar tapınak, tiyatro, dükkanlar, evler ve kent surlardır. Kazılar sonucunda kentin İ.Ö.7.yüzyıldan İ.S.13.yüzyıla kadar ki tarihine ilişkin kalıntılar ortaya çıkarılmıştır.\r\n\r\nAdres: Seki Mahallesi Asar Mevkii\r\nE-mail: alanyamuzesi@ktb.gov.tr\r\nTel 1: 02425131228', '6910c4c4621b7.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:43:48', '2025-11-09 16:43:48'),
(47, 'Karain Mağarası', 'Karain Mağarası, Türkiye\'nin en büyük doğal mağaralarından biridir.', 'Denizden yüksekliği 430-450 metredir.\r\n\r\nAntalya\'nın 30 km kuzeybatısında eski Antalya-Burdur karayoluna 5–6 km uzaklıkta bulunan Yağca köyü sınırları içinde bulunur. Antalya\'ya uzaklığı 27 km\'dir. 1946 yılından beri kazılar yapılmaktadır.\r\n\r\nYapılan kazılardan, bölgenin günümüzden 500.000 yıl kadar önce de yerleşim merkezi olarak kullanıldığı sonucuna varılmıştır. Türkiye\'nin içinde insan yaşamış en büyük mağarasıdır. Karain Mağarası, Anadolu ve Yakın Doğu tarihi açısından önemli bir paleolitik merkezdir.', 'Ayrıca, verdiği bitki ve hayvan kalıntıları ile Batı Akdeniz\'in eski çevresinin ortaya konmasında önemli bir rol üstlenen Karain, çevresindeki diğer mağaralarla birlikte doğal ve kültürel özellikleri dolayısıyla karma sit olarak Dünya Miras Listesi\'ne önerilmektedir.\r\n\r\nAdres: Yağca, 07190 Antalya Merkez/Antalya\r\nTel 1: 02424231334', '6910c5fd60c09.jpg', '[\"muze\",\"antalya\"]', NULL, 1, '2025-11-09 16:49:01', '2025-11-12 20:22:30'),
(48, 'ABB Gazipaşa Belediye Kültür Merkezi', 'Gazipaşa\'nın ihtiyacını karşılayan Gazipaşa Kültür Merkezi', 'Gazipaşa\'nın ihtiyacını karşılayan Gazipaşa Kültür Merkezi \r\n2022 yılında güncel maliyetle yaklaşık 140 milyon liraya tamamlanan Gazipaşa Kültür Merkezi', '510 kişilik tiyatro ve konferans salonu\r\n50 kişilik sinema salonu\r\n Atasem Kurs Merkezi\r\nKreş ve Gündüz Bakım Evi\r\nPeruk atölyesi, aşçılık atölyesi, çikolata atölyesi\r\nSanata ve eğitime değer veren herkes Gazipaşa Kültür Merkezi\'nde buluşuyor.', '6910ca45c6744.jpg', '[\"tiyatro\"]', NULL, 1, '2025-11-09 17:07:17', '2025-11-09 17:07:17'),
(49, 'Alanya Kültür Merkezi', 'Alanya’da kültür faaliyetlerinin yaygınlaştırılması ve geliştirilmesi için Alanya Belediyesi Tiyatro  Müdürlüğü bünyesindeki Alanya Kültür Merkezi (AKM) 2003 yılında faaliyete başlamıştır.', 'Kentin kültürel ve sanatsal anlamda ilerlemesi amacıyla Belediye Kültür Merkezi’nde çeşitli kültür ve sanat faaliyetleri organize edilip Alanya halkının hizmetine sunulurken, müdürlük dışında bu amaçla yapılan her türlü girişime de sahip çıkılmaktadır.', 'Adres: Alanya Kültür Merkezi Saray mahallesi İsmet Hilmi Balcı Caddesi no:4 07400 Alanya/ANTALYA\r\nTelefon: +90 242 513 21 33\r\nE-Posta: kulturmerkezi@alanya.bel.tr', '6910cb4b265d3.jpg', '[\"bale\",\"tiyatro\",\"muzik\",\"opera\"]', NULL, 1, '2025-11-09 17:11:39', '2025-11-09 17:11:39'),
(50, 'Tiyatro ve Sahne Sanatları', 'Antalya Atatürk Kültür Merkezi', 'Sezonluk tiyatro oyunlarını bulabilirsiniz.', 'Adres: Meltem Mah. Sakıp Sabancı Bulv. Atatürk Kültür Parkı İçi AKM No: 7 Muratpaşa / Antalya\r\nTelefon: 0 242 248 90 22', '6910cc2d20fb7.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 17:15:25', '2025-11-09 17:15:25'),
(51, 'Lara Kervansaray Oditoryum ve Kongre Merkezi', 'Tiyatro ve Sahne sanatları', 'Adres: Lara Turizm Merkezi, Lara Muratpaşa / Antalya', 'Telefon: 0 242 352 20 00\r\nEmaıl: info@kervansarayhotels.com', '6910cd009e63e.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 17:18:56', '2025-11-09 17:18:56'),
(52, 'Doğu Garajı Kültür & Ticaret Merkezi - Performans Sahne', 'Sahne sanatları', 'Adres: Doğu Garajı Mevkii Ali Çetinkaya Caddesi MURATPAŞA / Antalya Muratpaşa / Antalya', 'Telefon: (0242) 249 53 25', '6910ce85da32f.jpg', '[\"tiyatro\",\"opera\",\"antalya\"]', NULL, 1, '2025-11-09 17:25:25', '2025-11-09 17:26:23'),
(53, 'Türkan Şoray Kültür Merkezi', 'Sahne sanatları', 'Adres: Yeşilbahçe, 1455. Sk. No:8, 07160 Muratpaşa/Antalya', 'Telefon: (0242) 350 07 48', '6910cfd6dbfb1.jpg', '[\"bale\",\"tiyatro\",\"opera\"]', NULL, 1, '2025-11-09 17:31:02', '2025-11-09 17:31:02'),
(54, 'Panda Sahne', 'Sahne sanatları', 'Adres: Fener, Bülent Ecevit Blv. No:2, 07190 Muratpaşa / Antalya', 'Telefon: 0 532 307 32 92\r\nEmail: bilgi@pandasahne.com', '6910d120095d3.jpg', '[\"tiyatro\",\"muzik\"]', NULL, 1, '2025-11-09 17:36:32', '2025-11-09 17:36:32'),
(55, 'Kırmızı Kalem Tiyatro', 'Çocuk Sahne Sanatları', 'ADres: Bahçelievler Mah. Pamir Cad. Kardeşler Apt. 22-A Muratpaşa / Antalya', 'Telefon: 0 242 248 41 80', '6910d1bd2faa8.jpg', '[\"tiyatro\"]', NULL, 1, '2025-11-09 17:39:09', '2025-11-09 17:39:09'),
(56, 'Akademi Sahne', 'Sahne Sanatları', 'ADres: Sahil Antalya Yaşam Parkı No:42 Muratpaşa / Antalya', 'Telefon: 0 532 355 22 47 / 0 532 355 68 47', '6910d225b551f.jpg', '[\"tiyatro\"]', NULL, 1, '2025-11-09 17:40:53', '2025-11-09 17:40:53'),
(57, 'Haşim İşcan Kültür Merkezi', 'Sahne Sanatları', 'Tiyatro, Opera, Müzikal', 'Adres: Muratpaşa, Evliya Çelebi Cd., 07010 Muratpaşa / Antalya', '6910d2f489f42.jpg', '[\"bale\",\"tiyatro\",\"muzik\",\"opera\",\"antalya\"]', NULL, 1, '2025-11-09 17:44:20', '2025-11-09 17:44:20'),
(58, 'BAKÜS - Bahçeli Kültür & Sanat', 'Sahne sanatları', 'Adres: Bahçelievler, Kardeşler Apartmanı, Pamir Cd. 22-A, 07300 Muratpaşa / Antalya', 'Telefon: 0 505 660 17 78', '6910d39d03b4f.webp', '[\"tiyatro\",\"muzik\",\"antalya\"]', NULL, 1, '2025-11-09 17:47:09', '2025-11-09 17:47:09'),
(59, 'Replik Sanat Sahnesi', 'Sahne Sanatları', 'Adres: Turgut Reis Caddesi, Bahçelievler Mahallesi, Bozkurt Apartmanı, No: 23/3 Muratpaşa / Antalya', 'Telefon: 0 242 243 23 58', '6910d433b89e6.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 17:49:39', '2025-11-09 17:49:39'),
(60, 'Antalya Büyükşehir Belediyeleri Şehir Tiyatroları', '\" 1980’li yılların başında Antalya Belediye Tiyatrosu olarak çıktığımız bu yolda bir grup tiyatro tutkunu tarafından kurulmuş olan bugün ki Antalya Şehir Tiyatrosu geçmişten günümüze bizlere imkansız denilen bir aşkın öyküsünü anlatmaktadır...', 'Tarihimiz 1980 yılların öncesine dayansa da  resmi olarak 1983 yılında ‘’Ormanın Bekçileri’’ adlı oyunla perdelerimizi açtık. 1983 yılından sonra her yıl devamlı bir şekilde oyun üretip Antalya seyircisine sunduk.\r\n\r\nOyunların Antalya’da ki bütün etkinliklerin yapıldığı bir salondan oynandığı ve oyuncuların sahnenin altında kapısı olmayan küçücük penceresi bulunan bir yerde hazırlandığı, dekorların oyuncular tarafından hazırlanıp, taşınıp, kurulduğu günlerden; teknik ve tasarımcı ekibimizin atölyemizde dekor ve kostümlerimizi yarattığı, kendi alanında yetkin personele sahip modern ses ve ışık sisteminin olduğu, oyuncularımızın her türlü ihtiyacını karşılayan rahatça prova yapabildiğimiz ve oyunlarımızı oynayabildiğimiz bize ait sahnemizin olduğu günlere geldik.\r\n\r\nAntalya Şehir Tiyatrosu Kent içinde ve kent dışında turnelerle, Anadolu’da ve yurt dışında bir çok  temsilleriyle sayısız etkinlikle seyirciyle buluştu.\r\n\r\nGeçmişten günümüze 40 yılı aşkın süredir yürüdüğümüz bu yolda emeği geçen oyuncularımıza, teknik ekibimize, idari personelimize, kıymetli seyircilerimize ve bize dokunan herkese teşekkürlerimizi bir borç biliriz.\r\n\r\nAlkışlarınız hiç susmasın, perdelerimiz hiç kapanmasın.. \" \r\n\r\nAntalya Büyükşehir Belediyeleri Şehir Tiyatroları\r\n\r\nAntalya Şehir Tiyatrosu Şube Müdürlüğü\r\nÇaybaşı Mh. Cebesoy Cd. No:1 Doğu Garajı Kültür ve Ticaret merkezi Muratpaşa/Antalya\r\n0242 249 53 20\r\n\r\nAntalya Şehir Tiyatroları Yıldız Kenter Sahnesi Işıklar Bilet Gişesi\r\nIşıklar Caddesi Karaalioğlu Parkı Girişi\r\n0242 249 53 26', 'Antalya Şehir Tiyatroları Doğu Garajı Kültür Merkezi Bilet Gişesi\r\nÇaybaşı Mh. Cebesoy Cd. No:1 Doğu Garajı Kültür ve Ticaret merkezi Muratpaşa/Antalya\r\n0242 249 53 25', '6910d5823039f.jpg', '[\"bale\",\"tiyatro\",\"muzik\",\"opera\"]', NULL, 1, '2025-11-09 17:55:14', '2025-11-12 19:46:27'),
(61, 'Antalya Devlet Tiyatroları', 'Sahne Sanatları', 'ADres: HAŞİM İŞCAN KÜLTÜR MERKEZİ DT SAHNESİ\r\nMuratpaşa Mah. Evliya Çelebi Cad. Eski Hal Kavşağı Muratpaşa / ANTALYA\r\nTelefon: 0 (242) 248 97 94', 'Adres: NTALYA DEVLET TİYATROSU MÜDÜRLÜĞÜ\r\nCumhuriyet Mh. 626 Sk. No:3 Muratpaşa / ANTALYA\r\nTelefon: 0 (242) 344 46 49\r\nEmail: biletsatisdt@ktb.gov.tr', '6910d89d0a4af.jpg', '[\"bale\",\"tiyatro\",\"opera\",\"antalya\"]', NULL, 1, '2025-11-09 18:08:29', '2025-11-09 18:08:29'),
(62, 'Hacı Bektaş Veli Kültür Merkezi', '2 bin 200 metrekare büyüklükteki alanda inşa ettiğimiz merkezde 150 kişilik konferans salonunun yanı sıra Cem salonu yer alıyor.', 'Merkezde ayrıca eğitim salonları, yarı açık toplanma alanı, aşevi, gasilhane ve morg yer alıyor.', 'Adres: Konuksever Mah. Kızılırmak Cad, Hacı Bektaş Veli Sk. No:5, 07010 Muratpaşa/Antalya\r\nTelefon: 0541 326 34 40', '6910dab796ef9.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 18:17:27', '2025-11-09 18:17:27'),
(63, 'Holly Stone Performance Hall Antalya', 'Sahne Sanatları', 'Müzik', 'Adres: Selçuk Mah, Selçuk, Uzun Çarşı Sk. No:42, 07100 Muratpaşa/Antalya', '6910dd2cd015c.jpg', '[\"muzik\"]', NULL, 1, '2025-11-09 18:27:56', '2025-11-09 18:27:56'),
(64, 'Antalya İpekten Sahne', 'Sahne sanatları ve eğitimleri', 'Adres: Pınarbaşı, Pınarbaşı Cd 30/A, 07070 | KONYAALTI / ANTALYA', 'Websitesi: www.ipektensahne.com \r\nEmail:  info@ipektengrup.com\r\nTelefon: +90 242 505 73 74', '6910de8d8ade7.jpg', '[\"tiyatro\",\"muzik\"]', NULL, 1, '2025-11-09 18:33:49', '2025-11-09 18:33:49'),
(65, 'Konyaaltı Belediyesi Nazım Hikmet Kongre ve Fuar Merkezi', 'Sahne Sanatları', 'ADres: Pınarbaşı Mahallesi, 734. Sk. No:36 Konyaaltı / Antalya', 'Telefon: 0 242 245 55 00\r\nEmail: info@konyaalti.bel.tr', '6910df6913c8d.jpg', '[\"tiyatro\",\"muzik\"]', NULL, 1, '2025-11-09 18:37:29', '2025-11-09 18:37:29'),
(66, 'İbrahim Sözen Gençlik Merezi', '700 Kişilik çok amaçlı Salon', 'Sahne sanatları', '7 Adet derslik\r\n1 adet açık 650 kişilik amfi ile hizmet vermektedir .\r\nYarı Olimpik Kapalı Yüzme Havuz,\r\n1 adet tenis kortu\r\n\r\nAdres: Yukarı Pazarcı Mh. 4010 Sokak No:1 Manavgat/ANTALYA\r\nTelefon: 0242 742 8000\r\nEmail: belediye@manavgat.bel.tr', '6910e07e18751.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 18:42:06', '2025-11-09 18:42:06'),
(67, 'Antalya muratpaşa belediyesi kültür', 'Sergi, etkinlk, konser', 'Adres: Yeşilbahçe, 1455. Sk. No:8, 07160 Muratpaşa/Antalya', 'Telefon: (0242) 350 07 48', '6910e1a8957bc.jpg', '[\"tiyatro\",\"opera\",\"antalya\"]', NULL, 1, '2025-11-09 18:47:04', '2025-11-13 18:20:37'),
(68, 'Selda Bağcan Sahne', 'Müzik, konser, etkinlik', 'Sahne sanatları', 'Adres: Konuksever, Hacı Bektaş Veli Sk. No:5, 07010 Muratpaşa/Antalya\r\nTelefon: 0530 622 27 74', '6910e2666f07a.jpg', '[\"muzik\"]', NULL, 1, '2025-11-09 18:50:14', '2025-11-09 18:50:14'),
(69, 'ASSİM Abdullah Sevimçok Sivil Toplum ve İnovasyon Merkezi', 'Sahne sanatları', 'Adres: Doğuyaka, 07300 Muratpaşa/Antalya', 'Telefon: (0242) 322 52 70', '6910e348653ec.jpg', '[\"tiyatro\",\"muzik\",\"antalya\"]', NULL, 1, '2025-11-09 18:54:00', '2025-11-09 18:54:00'),
(70, 'MALL OF ANTALYA SAHNE', 'Mall of Antalya Sahne, yetişkin, çocuk ve kukla tiyatrolarının sahnelendiği 212 koltuklu bir salondur. Mall of Antalya Sahnesi, kaliteli ışıklandırma ve havalandırma sistemleri ile sizlere ferah ve konforlu bir alanda tiyatro izleme deneyimi sunuyor.', 'Adres: Altınova Sinan Mahallesi, Serik Cad. Yanyolu Kepez / Antalya.', 'Telefon: 0505 088 45 67\r\nEmail: cobanoglu@gmail.com', '6910e4066c257.webp', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 18:57:10', '2025-11-09 18:57:10'),
(71, 'Dada Tiyatro', 'Sahne sanatları atölyesi', 'Adres: Gençlik Mah. Fevzi Çakmak Cad. No:57/A Zemin Kat Muratpaşa/Antalya', 'Telefon: 0552 000 32 85', '6910e551ce7a3.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-09 19:02:41', '2025-11-09 19:02:41'),
(72, 'Manavgat Atatürk Kültür Merkezi', 'Sahne sanatları', 'tiyatro, müzikalö sahne sanatları', 'Adres: Y. Pazarcı, 07600 Manavgat / Antalya', '69149c904b087.jpg', '[\"tiyatro\",\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 14:41:20', '2025-11-12 14:41:20'),
(73, 'Gazipaşa Kültür Merkezi', 'Sahne sanatları', 'etkınlık, tiyatro, müzikal, konserler', 'Adres: Pazarcı, 7888+73, 07900 Gazipaşa/Antalya', '69149d4d59514.jpg', '[\"tiyatro\",\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 14:44:29', '2025-11-12 14:45:19'),
(74, 'The Bar', 'Konser', 'Etkinlik', 'Adres: Tuzcular Paşa Cami Sokak, Kaleiçi No:34, 07000 Muratpaşa/Antalya', '6914ca5ac58a1.jpg', '[\"muzik\"]', NULL, 1, '2025-11-12 17:56:42', '2025-11-12 17:56:42'),
(75, 'Aktüel Sahne', 'Telefon: : 0533 693 80 73', 'Sahne sanatları', 'Adres: Park fantastik yanı, Göçerler, Antalya Blv. No: 410, 07080 Kepez/Antalya', '6914cbaacb99b.jpg', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 18:02:18', '2025-11-12 18:02:18'),
(76, 'Sponge Pub Kaleiçi', 'Sahne performansları, konser, etkinlik', 'Adres: Selçuk Mh., İzmirli Ali Efendi Sk. MURATPAŞA/Antalya', 'Telefon: 05425220707', '6914cdfd3492b.webp', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 18:12:13', '2025-11-13 18:23:43'),
(77, 'Sponge Pub Konyaaltı', 'Sahne sanatları, etkinlik, konser', 'Adres: Kuşkavağı, Akdeniz Blv. no:158, 07070 Konyaaltı/Antalya', 'Telefon: 0549 633 20 22', '6914ce8858971.webp', '[\"muzik\"]', NULL, 1, '2025-11-12 18:14:32', '2025-11-12 18:14:32'),
(78, 'Gaslight Pub', 'Pub, müzik, konser', 'Adres: Liman, Boğaçay Cd. sayın apartmanı no 10 b, 07130 Konyaaltı/Antalya', 'Telefon: 0530 380 40 77', '6914d4cdb2979.jpg', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 18:41:17', '2025-11-13 18:26:22'),
(79, 'Wicca', 'Konser, canlı müzik', 'Adres: Kılınçarslan, Hıdırlık Sk. No:14, 07100 Muratpaşa/Antalya', 'Telefon: 0553 132 12 07', '6914d63427378.jpg', '[\"muzik\"]', NULL, 1, '2025-11-12 18:47:16', '2025-11-12 18:47:16'),
(80, 'Imperium Performance Hall & Night Club', 'Canlı performans, etkinlik', 'Adres: Şekerhane, Kalgidim Sk. No:10 D:101, 07400 Alanya/Antalya', 'Telefon: 0535 406 58 93', '6914d902bf58d.jpg', '[\"muzik\"]', NULL, 1, '2025-11-12 18:59:14', '2025-11-12 18:59:14'),
(81, 'Antiphellos Antik Tiyatrosu', 'Sahne sanatları,', 'tiyatro, etkinlik, canlı performanslar', 'Adres: Andifli, Necipbey Cd., 07580 Kaş / Antalya', '6914daeb157d8.jpg', '[\"tiyatro\",\"muzik\",\"antalya\"]', NULL, 1, '2025-11-12 19:07:23', '2025-11-12 19:07:23'),
(82, 'Chapito', 'Sirk', 'etkinlik', 'performans sanatları\r\nAdres: Kadriye, 07525 Serik/Antalya', '6914dc452a82b.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 19:13:09', '2025-11-12 19:13:09'),
(83, 'Erdem Bayazıt Kültür Merkezi', 'Etkinlik, konserler', 'Sahne sanatları', 'Adres: Kültür, Tahılpazarı, Adnan Menderes Blv. No:1 D:64, 07040 Kepez/Antalya', '6914dce45fd80.jpg', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-12 19:15:48', '2025-11-12 19:15:48'),
(84, 'Haşim İşcan Kültür Merkezi Küçük Salon', 'Sahne performansları', 'konserler, etkinlik', 'ADres: Muratpaşa, Evliya Çelebi Cd., 07010 Muratpaşa / Antalya', '6914dfade80b4.jpg', '[\"tiyatro\",\"muzik\"]', NULL, 1, '2025-11-12 19:27:41', '2025-11-12 19:27:41'),
(85, 'Hideaway Bar', 'Canlı performans', 'etkinlik, konser', 'Adres: Kalkan, Cumhuriyet Meydanı 16/A, 07580 Kaş / Antalya', '6914e0a453e15.webp', '[\"muzik\"]', NULL, 1, '2025-11-12 19:31:48', '2025-11-12 19:31:48');
INSERT INTO `attraction` (`id`, `title`, `short_text`, `midle_text`, `body_text`, `at_image`, `image_seo`, `clip`, `views`, `created_at`, `updated_at`) VALUES
(86, 'Kırmızı Kalem Tiyatro', 'Sahne sanatları', 'tiyatro, konser, etkinlik', 'Adres: Bahçelievler Mah. Pamir Cad. Kardeşler Apt. 22-A Muratpaşa / Antalya\r\nTelefon: 0 242 248 41 80', '6914e175eff76.webp', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-12 19:35:17', '2025-11-12 19:35:17'),
(87, 'Sahne\'De', 'Sahne sanatları', 'tiyatro, etkinlik', 'Adres: Yeşilırmak Caddesi Mısır Çarşısı Kat:2 Kepez / Antalya\r\nTelefon: 0 531 520 34 70', '6914e248e91ff.webp', '[\"tiyatro\",\"antalya\"]', NULL, 1, '2025-11-12 19:38:48', '2025-11-12 19:38:48'),
(88, 'Rhodiapolis Antik Kenti', 'Kumluca ilçesindeki Rhodiapolis Antik Kenti’nde yürütülen kazı çalışmalarının önümüzdeki birkaç gün içinde tamamlanacağı bildirildi.', 'Akdeniz Üniversitesi Arkeoloji Bölümü Başkanı Prof. Dr. Nevzat Çevik, bu yıl ağırlıklı olarak kentte yaşayan ve tarihin ilk hayırseveri olduğu belirtilen Opramoas’a ait mezarın günışığına çıkarıldığını söyledi.\r\n\r\n \r\n\r\nÇevik, “Bu antik kentin önemini artıran Rhodiapolis Antik Kenti’nin kurucusu Opramoas, dünyada bilinen en büyük hayırsever insandır. Bu nedenle buranın tarihi ve kültürel önemi bir kat daha artmaktadır” dedi.', 'Rhodiapolis’teki kazıların Antalya’nın en yeni kazısı olduğunu vurgulayan Çevik, burada günışığına çıkacak her eserin ülkeye büyük katkı sağlayacağına dikkati çekti.\r\n\r\nAdres: Sarıcasu, 07350 Kumluca/Antalya', '6914ea6dd7dd7.jpg', '[\"muze\"]', NULL, 1, '2025-11-12 20:13:33', '2025-11-12 20:13:33'),
(89, 'Belalan Mahallesi Kentsel Sit Alanı', 'Sit Alanları ve Girilmesi Yasak Alanlar', 'Türkiye Cumhuriyeti resmi kurumları tarafından girislmesi yasak sit alanarı', 'Adres: \r\nANTALYA, AKSEKİ, BELENALAN MAHALLESİ KENTSEL SİT ALANI', '6914ee31a72ee.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:29:37', '2025-11-12 20:39:23'),
(90, 'Büyükalan Mahallesi Kentsel Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye CUmhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, AKSEKİ, BÜYÜKALAN MAHALLESİ KENTSEL SİT ALANI', '6914eefb069cc.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:32:59', '2025-11-12 20:32:59'),
(91, 'Cevizli Mahallesi Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye CUmhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: \r\nANTALYA, AKSEKİ, CEVİZLİ MAHALLESİ KENTSEL SİT ALANI', '6914efe818dd8.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:36:56', '2025-11-12 20:36:56'),
(92, 'Döşemeboğazı Arkeolojik Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye CUmhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'ADres: ANTALYA, DÖŞEMEALTI, DÖŞEMEBOĞAZI ARKEOLOJİK SİT ALANI', '6914f06f04960.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:39:11', '2025-11-12 20:39:11'),
(93, 'Arykanda Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye CUmhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'ADres: \r\nANTALYA, FİNİKE, ARYKANDA ANTİK KENTİ', '6914f121415fc.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:42:09', '2025-11-12 20:42:09'),
(94, 'Simena Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, DEMRE, SİMENA (KALE) ANTİK KENTİ', '6914f18a03b1e.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:43:54', '2025-11-12 20:43:54'),
(95, 'Naula Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, ALANYA, NAULA ANTİK KENTİ', '6914f1f9831c2.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:45:45', '2025-11-12 20:45:45'),
(96, 'Adanda Lamos Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, GAZİPAŞA, ADANDA LAMOS ANTİK KENTİ', '6914f2d37b68c.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 20:49:23', '2025-11-12 20:49:23'),
(97, 'Kasai Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, GÜNDOĞMUŞ, KASAİ ANTİK KENTİ', '6914f74494b2a.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:08:20', '2025-11-12 21:08:20'),
(98, 'Ormana Kentsel Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres:  ANTALYA, İBRADI, ORMANA KENTSEL SİT ALANI', '6914f7d3d9119.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:10:43', '2025-11-12 21:10:43'),
(99, 'Kelbessos Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres:  ANTALYA, KONYAALTI, KELBESSOS ANTİK KENTİ', '6914f84707592.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:12:39', '2025-11-12 21:12:39'),
(100, 'Melanippe Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres:  ANTALYA, KUMLUCA, MELANİPPE ANTİK KENTİ', '6914f8b55529a.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:14:29', '2025-11-12 21:14:29'),
(101, 'Sillyon Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, SERİK, SİLLYON ANTİK KENTİ', '6914f9307ee40.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:16:32', '2025-11-12 21:16:32'),
(102, 'Kaleiçi ve 3. Derece Arkeolojik Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, MURATPAŞA, KALEİÇİ KENTSEL VE III. DERECE ARKEOLOJİK SİT ALANI', '6914f9a05f77b.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:18:24', '2025-11-12 21:18:24'),
(103, 'Seleukeia Lybre Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres:  ANTALYA, MANAVGAT, SELEUKEİA LYRBE ANTİK KENTİ', '6914fa0672f84.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:20:06', '2025-11-12 21:20:06'),
(104, 'Tyriaion Antik Kenti', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: ANTALYA, KORKUTELİ, TYRİAİON ANTİK KENTİ', '6914fa88c873c.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:22:16', '2025-11-12 21:22:16'),
(105, 'Çıralı Yanartaş Sit Alanı', 'Sit alanı ve girilmesi yasak bölgeler', 'Türkiye Cumhuriyeti resmi kurumlarınca girilmesi yasak sit alanları', 'Adres: \r\nANTALYA, KEMER, ÇIRALI YANARTAŞ (CHİMAERA)', '6914faedb8a50.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:23:57', '2025-11-12 21:23:57'),
(106, 'English Time Dil Okulu', 'Yabancı dil okulu', 'Antalya çocuk ve yetişkin dil okulu', 'Adres: Balbey Mah. Şehit Binbaşı Cengiz Toytunç Cad. No: 52 Muratpaşa/Antalya\r\nTelefon: 0242 243 44 49 - 0531 105 17 15\r\nEmail: antalyasube@englishtime.com', '6914fc6b7d1e3.png', '[\"yabanci dil\",\"antalya\"]', NULL, 1, '2025-11-12 21:30:19', '2025-11-12 21:30:19'),
(107, 'British Express Dil Okulu', '\"British Express, Antalya’da yabancı dil eğitimine yeni bir soluk getirmek amacıyla kuruldu.\"', 'Deneyimli eğitim kadromuz ve modern öğretim metodlarımızla, öğrencilerimize etkili ve keyifli bir öğrenme deneyimi sunuyoruz.', 'Kurulduğumuz günden bu yana, her yaştan ve seviyeden öğrenciye İngilizce başta olmak üzere birçok yabancı dili öğretmenin gururunu yaşıyoruz. British Express olarak, dil öğrenimini bir zorunluluktan çıkarıp, keşif dolu bir yolculuğa dönüştürmeyi hedefliyoruz.\r\nAdres: Sinan, 1257. Sk. aykol apartmanı No:7 Antalya, 07100 Muratpaşa/Antalya\r\nTelefon: +90 554 026 07 51\r\nEmail: antalyabritishexpress@gmail.com', '6914fd89a1fb7.jpg', '[\"antalya\"]', NULL, 1, '2025-11-12 21:35:05', '2025-11-12 21:35:05'),
(108, 'Antalya Tömer Dil Kursu', 'Antalya Çocuklar İçin İngilizce Eğitimleri', '\"Seviye tabanlı dil programlarımız, öğrencilerin dil becerilerini geliştirmek ve uluslararası standartlarda eğitim sunmak amacıyla yapılandırılmıştır. Ayrıca İlkokul ve Ortaokul düzeylerine uygun olarak hazırlanan programlarımızda, CEFR kriterlerine uygun 4 temel dil becerisi (Okuma, Dinleme, Yazma, Konuşma) kazandırılmaktadır.\r\n\r\nHer seviye, öğrencilerin gelişim düzeyine göre yapılandırılmış ders içerikleri, deneyimli eğitmenler ve etkili öğretim yöntemleriyle desteklenmektedir. Ayrıca Eğitim süresince seviye belirleme sınavları uygulanarak, her öğrencinin doğru seviyede eğitim alması sağlanır.\r\n\r\nAyrıntılar ve Ücretlendirme Bilgileri için aşağıdaki bölümleri inceleyebilir ve belirtilen bağlantılar üzerinden seviye belirleme sınavını tamamlayabilirsiniz.\"', '\"Program, CEFR (Avrupa Diller Ortak Çerçeve Programı) standartlarına uygun olarak, 4 temel dil becerisini (Okuma, Dinleme, Yazma, Konuşma) kazandırmayı ve bu becerileri etkin bir şekilde uygulamayı hedeflemektedir.\"\r\n\r\nAdres: Muratpaşa Şube Adres :\r\nSinan, Cebesoy Cd. No:10 Kat:1, Muratpaşa/Antalya\r\nKonyaaltı Şube Adres: Pınarbaşı Mh. Atatürk Blv. No:20/A\r\nKonyaaltı/ Antalya\r\n\r\nTelefon: Muratpaşa Şube :\r\n0 242 344 80 08\r\n0 530 975 81 08\r\nKonyaaltı Şube :\r\n0 242 503 80 08\r\n0 536 799 85 08', '6914fef44ba7e.webp', '[\"yabanci dil\",\"antalya\"]', NULL, 1, '2025-11-12 21:41:08', '2025-11-12 21:41:08'),
(109, 'AKIN DİL ANTALYA ŞUBESİ KIDS (4 - 5) B GRUBU', 'AKIN DİL ANTALYA ŞUBESİ KIDS (4 - 5) B GRUBU', '\"2003 yılında kurulmuş olan Akın Dil Eğitim Merkezimiz yabancı dil eğitimi alanında kaliteli eğitim programları, alanında uzman öğretmen kadrosu, yeni eğitim öğretim yenilik ve teknolojilerine göre dizayn edilmiş modern sınıfları, dil öğreniminde önem teşkil eden öğrenci merkezli, görsel, işitsel öğretim araçları,İngilizce yabancı dil eğitiminin yanı sıra öğrencilerine sağladığı sosyal ve kültürel gelişim ortamı farklılığı ile 19 yıldır hizmet vermeye devam ediyor.\r\n\r\nAkın Dil Eğitim Merkezi İngilizce Kids kurs programı Avrupa Dil Portfolyosuna uygun olarak, İngilizce öğrenmek isteyen 8-12 yaş aralığındaki çocuklarımıza eğitim vermektedir.\"', '\"İngilizce Kids yabancı dil kurs programının amacı öğrencilerine uluslararası standartlara uygun dil becerilerini kazandırmaktır. Akın Dil Eğitim Merkezi İngilizce kursunda İngiliz İngilizcesine uygun Oxford yayın kaynakları kullanılmaktadır. \r\n\r\nProgramımızda dil ediniminde dört temel beceri olan dinleme, konuşma, okuma ve yazma hedef alınmaktadır. Öğrencilerimizin yaş gruplarına uygun sınıflarda, eğlenerek öğrenmesi amaçlanır.\r\n\r\n \r\n\r\nANTALYA KIDS İNGİLİZCE YABANCI DİL KURSU GÜN VE SAATLERİ\r\n\r\n2. VE 3. SINIFLAR İÇİN \r\n\r\nCUMARTESİ - 14:00 - 17:10\r\n\r\n4. 5. 6. SINIFLAR İÇİN\r\n\r\nCUMARTESİ - PAZAR 10:00 - 12:00\r\n\r\nKIDS GRUBU FİYATLAR VE ÖDEME YÖNTEMLERİ\r\n\r\nÖdemeler velilerin isteğine göre nakit, kredi kartı, sözleşme veya EFT yöntemi ile yapılabilir. Eğitim öğretim dönemi başlamadan yapılan kayıtlar erken kayıt indiriminden faydalanabilir.  Ayrıca yabancı dil kursları belirli şirketlerle yaptığı anlaşmalar, öğrencinin eski öğrenci olması ve kardeş, arkadaş olması gibi durumlara göre belirli indirimler yapabilirler.  Ödeme yöntemleri öğrenci ya da velilerin istekleri doğrultusunda belirlenir.\r\n\r\nEğitimlerimiz Akındil\'in süzgecinden geçmiş, alanında uzman eğitmenler tarafından verilir. Çocuklarımızın eğlenip öğrenmesi için tasarlanan özel sınıflarımız 2022-2023 dönemi öğrencilerimizi hazır bir şekilde beklemektedir. Yabancı dil öğretiminde dile maruz kalmak dil edinimi açısından büyük önem arz etmektedir. Bu sebepten derslerimiz konuşma üzerine, öğretmen ve öğrencinin diyalog içinde olduğu, interaktif bir şekilde verilmektedir. Ödev takipleri ve veli görüşmeleri yine sınıf öğretmenimiz tarafından yürütülmektedir. Derslerimizde kullanılan kaynaklar İngilizce öğretimi alanında dünya genelinde ün yapmış ve başarılara imza atmış Oxford Üniversitesinin yaş grubuna uygun olarak hazırladığı kaynaklarlardır.\r\n\r\nDil eğitimine erken yaşta başlamak ilerleyen yıllar için çok önemlidir. Gelin bu adımı Akındil olarak sizinle atalım. Akınlı günler dileriz. Sevgiler.\r\n\r\n \r\n\r\nDetaylı bilgi için sizleri şubemize bekleriz. Sağlıkla kalın.\r\n\r\n \r\n\"\r\nAKINDİL ANTALYA\r\n\r\nEmail: antalya@akindil.com\r\nTelefon: +902422300101', '6914ffcd7b15b.png', '[\"yabanci dil\",\"antalya\"]', NULL, 1, '2025-11-12 21:44:45', '2025-11-12 21:44:45'),
(110, 'Özel Akant Eğitim Kurumları', 'Özel Akant Eğitim Kurumlarında İngilizce ders olarak değil, hayatın doğal akışı içinde öğretilir.', '\"Okul öncesinde ilk amacımız; çocuklarımızın İngilizce dilini keyifle öğrenmesini sağlamak, öğrencilerimizde, bir dil daha öğrenmeye ihtiyaç uyandırmak ve bunu günlük hayatta kullanmalarını sağlamaktadır. İngilizce öğretmenlerimiz, sınıf öğretmenimizin anlattığı konuları takip ederek, disiplinler arası geçiş sisteminin gerekliliğini yerine getirmekte ve konuları İngilizce olarak öğrencilerimize doğal bir ortamda aktarmaktadır.\r\n\r\nOkul öncesinde, İngilizce eğitimimiz, yaş seviyesine uygun oyunlar, şarkılar, drama çalışmaları, interaktif programlar eşliğinde uygulanırken; yemek saatlerimiz, teneffüslerimiz, okul dışı gezilerimiz ve daha birçok ders dışı aktivitelerimiz İngilizce öğretmenlerimiz eşliğinde gerçekleşmektedir.\"', '\"3 yaş İngilizce programı 4-5 ve 6 yaş gruplarına göre farklılık göstermektedir. Henüz 24 ayını doldurmuş olan öğrencilerimizin anadili gelişimi hızla devam ettiğinden İngilizce öğrenimi için her gün 1 etkinlik saati bulunmaktadır. Bu etkinlik saatlerinde yaş grubuna yönelik aktivitelerle (şarkı-oyun-drama vb.) çocuklarda yabancı dil farkındalığı, kulak dolgunluğu kazanımı ve basit düzeyde kelime dağarcığı öğrenimi hedeflenmektedir. Tam zamanlı İngilizce eğitimi 4 yaş gruplarında aktif olarak başlamaktadır.\"\r\n\r\nAdres: LARA:Demircikara Mahallesi, Değirmenönü Cd. No:70, 07200 Muratpaşa/Antalya\r\n\r\n\r\nKONYAALTI:Akkuyu mah. Emniyet cad. Çayırlı Güloğlu Sitesi No:81/a Konyaaltı / Antalya\r\n\r\nTelefon: LARA: 0242 312 58 71\r\nKONYAALTI: 0242 228 02 22\r\n\r\nEmail: bilgi@akantkids.com', '691500a9b6668.webp', '[\"yabanci dil\",\"antalya\"]', NULL, 1, '2025-11-12 21:48:25', '2025-11-12 21:48:25'),
(111, 'Atasem Kurslar', 'Antalya Büyükşehir Belediyesi kursları.', 'Pozitif bilimler ve spor kursları', 'Antalya\'da farklı belediyelerde Atasem kursları bulunmaktadırç bazı kurslar ücretsiz ve halka açık', '6915ecf5766be.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 14:36:37', '2025-11-13 14:36:37'),
(112, 'Çocuk Atölyeleri', 'Pop sanat, atölyeler, kurslar,', 'sanat, yaratıcılık ve sergiler', 'Adres: Elmalı Mahallesi Şehit Binbaşı Cengiz Toytunç Caddesi No:60 Muratpaşa | Antalya\r\nTelefon: +90 242 242 02 57\r\nEmail: info@antalyakultursanat.org.tr', '6915eefa91278.jpg', '[\"resim\",\"antalya\"]', NULL, 1, '2025-11-13 14:45:14', '2025-11-13 14:45:14'),
(113, 'Sam Bilim Akademi', 'Robotik Kodlama, Robotik KodlamaÇocuklar, sensörler ve motorlarla kendi akıllı projelerini tasarlayıp programlamayı öğreniyor.', '\"Çocuklar İçin Yapay Zeka Kursu Çocuklar İçin Yapay Zeka Kursu. Hayatımızın her alanında karşılaştığımız. Gün geçtikçe önemi artan, yapay zekayla ilgili illa ki bir şeyler duymuşsunuzdur. Bizlerde çocuklarımıza. Yeni nesil Yapay Zeka Kursu ile günümüz teknolojilerini tanıyıp. Gelecek teknolojilerine akıllı sistemlerine adapte olmalarını, hatta yapay zeka alanında başarılı projelere imza atmalarını hedefliyoruz.\" Sam Bilim Akademi', 'Adres:  Muratpaşa Şube: Sinan, Cebesoy Cd. Postacıoğlu İş Merkezi D:No 10 Kat 1, 07040 Muratpaşa/Antalya\r\nKonyaaltı Şube: Pınarbaşı Mh. Atatürk Blv. No:20/A\r\nKonyaaltı/Antalya\r\nTelefon: 0242 344 80 08\r\nMuratpaşa Şube: 0(541)5938108\r\nKonyaaltı Şube: 0(535)3768108\r\nEmail: info@sambilimakademi.com', '6915f0ff1cb25.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 14:53:51', '2025-11-13 14:53:51'),
(114, 'Antalya - Konyaaltı Mega Hafıza Temsilciliği', 'Mega Aritmetik Zeka oyunları', 'Matematik ve zeka oyunları ile gelişim', 'Adres: Antalya - Konyaaltı Mega Hafıza Temsilciliği\r\nTelefon: 0(542) 634-1746 \r\nEmail: info@megaegitim.com', '6915f3c6a512d.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 15:05:42', '2025-11-13 15:05:42'),
(115, 'Zeka Gelişim Merkezi- Antalya', 'Bir çocuk için ilk sırada oyun oynamak vardır, bir ebeveynin çocuğu için ilk sırası ise; iyi bir eğitim-öğretim vardır. Deha Merkezi bu ikisini birleştirerek çocuklara oynarken düşünmeyi ve pratik zekâlarını geliştirmelerini sağlamak amacı ile eğitimler vermektedir.', '\"Akademisyenler ve uzman pedagoglar danışmanlığında hazırlanan programlarımız Bloom Taksonomisi’ni temel alır. Bilgi ve Zihinsel Becerilerin gelişimini içerir. Oluşturulan programın amacı öncelikle öğrencilerin zeka potansiyellerini tanıması ve geliştirmesidir. Bu programla oyunlarla, eğlenerek zeka oyunları eğitimi alan çocuklar, problemler karşısında farklı ve özgün stratejiler geliştirirler; hızlı ve doğru karar alırlar; sistematik bir düşünme yapısı geliştirirler; bireysel, takım halinde ve rekabet ortamında çalışma becerilerini ilerletirler. Eğitimler hakkında daha detaylı bilgi için bize ulaşın.\"', 'Telefon: 0(242) 230-2252\r\nEmail: info@zegem.com', '6915f53e88766.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 15:11:58', '2025-11-13 15:11:58'),
(116, 'Karma Kaleiçi', 'Canlı Jazz performanları,', 'sahne performansları, konserler', 'Adres: Barbaros, Mescit Sk. no15, 07070 Muratpaşa/Antalya\r\nTelefon: 0531 725 50 02', '69161c0c3f988.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 17:57:32', '2025-11-13 18:29:36'),
(117, 'Seraser Restaurant', 'Akdeniz Mutfağı,', 'Canlı müzik', 'Adres: Tuzcular mahallesi Karanlık sokak No 18 Kaleiçi Muratpaşa Antalya', '69162a088420e.jpg', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-13 18:57:12', '2025-11-13 18:57:12'),
(118, 'Castle Café & Bistro', 'Akdeniz mutfağı ve anlı müzik gitar dinletisi', 'Limanın hemen üstündeki bu küçük kafe, yemeklerinden çok manzarasıyla dikkat çeker. Altın renkli günbatımı denize dökülürken bir kadeh şarap ya da meze tabağıyla oturmak yeterlidir.\r\n\r\nHemen aşağısında sizi deniz bekliyor. Antalya Körfezi\'nde Gün Batımı Tekne Turu ile şehir ışıkları uzaklaşırken dalgaların üstünde süzülün.', 'Adres: Mermerli Sokak No:10 Kaleiçi Muratpaşa Antalya', '69162cad46966.jpg', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-13 19:08:29', '2025-11-13 19:08:29'),
(119, 'Arma Restaurant', 'Akdeniz Türk mutfağı, balık ve özel günlerde canlı müzik ile şık bir restaurant', 'Teknik olarak hala eski kente yakın olan Arma, geçmişle geleceği birbirine bağlar. Eski bir kargo binasında hizmet veren restoran, marinaya bakan etkileyici bir manzaraya sahiptir. İnsanlar burada sadece levrek ya da karides risottosu için değil, tabaklar arasında duydukları sessizlik için gelir.', 'Bu manzarayı Aşağı Düden Şelalesi’ne Tekne Turu ile tamamlayabilirsiniz. Tekneyle falezlerin arasından ilerleyip şelalenin döküldüğü noktaya varırsınız. Doğanın sesiyle birlikte yavaşça kıyıya dönersiniz.\r\n\r\nAdres:', '69162def5ff10.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 19:13:51', '2025-11-13 19:13:51'),
(120, 'The 251 Soul', 'Jazz ve Türk dokunuşu', 'Deniz manzarasında Türk dokunuşu tadlar ve muhteşem canlı jazz dinletilerini bulabileceğiniz iz bırakan bir mekan', 'Adres: Akra Hotel, Şirinyalı, Lara Cd. No:24, 07100 Muratpaşa/Antalya\r\nTelefon: (0242) 310 99 99', '69163063573fe.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 19:24:19', '2025-11-13 19:24:19'),
(121, 'Publike Jazz and Blues', 'Jazz müzik ve Türk dokunuşları', 'haftanın belirl günleri canlı jazz müzik dinletileri bulabileceğiniz jazz club', 'Adres: Fener, Tekelioğlu Cd. No:98/A, 07160 Muratpaşa/Antalya\r\nTelefon: 0507 610 96 08', '691632b774b22.webp', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-13 19:34:15', '2025-11-13 19:34:15'),
(122, 'Leyla Meyhanesi', 'Fasıl Balık', 'Türk mutfağı ve fasıl ile eşsiz bir  geleneksel gece yaşayabilirsiniz.', 'Adres: Kılıçarslan Mah.hıdırlık Sok. No:20 Kaleiçi, Antalya 07160 Türkiye\r\nTelefon: 0507 610 96 08', '691637e20a469.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 19:56:18', '2025-11-13 19:56:18'),
(123, 'Kaleiçi Meyhanesi', 'Fasıl Balık', 'Türk mutfağı ve fasıl ile eşsiz bir deneyim sunar.', 'Adres: Selçuk, Balıkpazarı Sk. No:14, 07100 Muratpaşa/Antalya\r\nTelefon: 0545 639 42 63', '691638e791141.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:00:39', '2025-11-13 20:00:39'),
(124, 'Saki Balik', 'Fasıl ve balık', 'geleneksel fasıl balık konseptini keyifle yaşayın.', 'Adres: Güzeloba, Çağlayangil caddesi No:35/A, 07070 Muratpaşa/Antalya, Antalya, Turkey\r\nTelefon: 0539 579 54 94', '69163ab99d5dd.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:08:25', '2025-11-13 20:08:25'),
(125, 'Nobel Konyaaltı Restaurant', 'Türk Halk müziği ve lezzetleri', 'geleneksel Türk halk müziği ve lezzetlerini bulabileceğiniz şehrin merkezinde hoş bir restaurant', 'Adres: Arapsuyu, Akdeniz Blv. No:80, 07070 Bahtılı Köyü Köyü/Konyaaltı/Antalya\r\nTelefon: 0542 622 38 07', '69163be2aa745.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 20:13:22', '2025-11-13 20:13:22'),
(126, 'Burç Kafe', 'Türk halk müziği ve lezzetleri', 'anadoludan sıcak dokunuşlar', 'Adres: Selçuk, Cumhuriyet Meydanı Sk., 07100 Muratpaşa/Antalya\r\nTelefon: +90 242 227 34 37', '69163d01b57ce.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:18:09', '2025-11-13 20:18:09'),
(127, 'Sokakağzı Cafe', 'Sokak lezzetleri', 'Antalya\'da merkezde en keyifli sokak  lezzetlerini bulabileceğiniz bir mekan.', 'Adres: Kültür, 3872. Sk. No:15, 07090 Kepez/Antalya\r\nTelefon: 0553 088 57 37', '69163ddbb0f7a.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 20:21:47', '2025-11-13 20:21:47'),
(128, 'Zoka Street Food', 'Antalya Kaş\'ta bulabileceğiniz şirin sokak lezzetleri mekanı', 'Kaş\'ta en keyifli mekanlardan birisi', 'Adres: Öztürk Sk. no 15, Kaş 07580 Türkiye\r\nTelefon: +90 534 705 38 87', '69163e92d9858.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:24:50', '2025-11-13 20:24:50'),
(129, 'AS GECE KAVURMACISI LARA', 'kavurma ve anadolu sokak lezzetlerini bulabileceğiniz sıradışı bir mekan.', 'Antalya şehir merkezinde Yalım parka yakın bir mekan.', 'Adres: Yeşilbahçe, Metin Kasapoğlu Cd. NO:1/A, 07060 Muratpaşa/Antalya', '69163f36caf8e.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 20:27:34', '2025-11-13 20:27:34'),
(130, 'Müpte Gastro PUb', 'Sokak lezzetleri', 'pub ve sıcacık bir ortamda başka yerde bulamayacağınız lezzetleri tadın.', 'Adres: Gençlik, 1316. Sk. Çınar apt no 17/A, 07100 Muratpaşa/Antalya\r\nTelefon: 0553 776 80 07', '69164289773d4.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 20:41:45', '2025-11-13 20:41:45'),
(131, 'Anfaş Uluslararası Fuar ve Kongre Merkezi', 'ANFAŞ - Antalya Fuarcılık A.Ş.\r\nAntalya’yı fuarlar ve kongreler kenti yapma hedefleriyle 1994 yılında 71 ortakla kurulmuştur. Hayata geçirdiği uluslararası fuarlarla ülke ve kent ekonomisinin büyümesinde kaldıraç olan ANFAŞ, dünya fuarcılığında marka olma yolunda hızla ilerleyen bir fuar organizasyon firmasıdır.', 'ANFAŞ ortakları arasında; Antalya Büyükşehir Belediyesi, Antalya Ticaret Borsası,(ATB) Antalya Ticaret ve Sanayi Odası,(ATSO) Antalya Sanayici ve İş İnsanları Derneği,(ANSİAD) Antalya Tanıtım Vakfı (ATAV) ve çok sayıda önemli kamu ve özel sektör iştirakleri yer almaktadır.\r\n\r\nANFAŞ Fuarcılık, turizm başta olmak üzere kentin zenginliklerini harmanlayarak düzenlediği organizasyonlarla, yerel ve küresel ölçekteki sektör temsilcilerini yılın her mevsiminde Antalya’da buluşturarak kent ekonomisini canlandırmaktadır. ANFAŞ fuarlarıyla Antalya ve Türkiye’nin tanıtımını uluslararası platformlarda organize ederek kentin marka alt yapısına önemli katkılar sağlamaktadır.\r\n\r\nYenilenen ve daha da güçlenen yapısıyla kentin çözüm odaklı isimlerini bir arada buluşturan ANFAŞ, uluslararası iş birlikteliklerini arttıracak yurt dışı tanıtım çalışmalarına ağırlık vermiştir. Çalışmalar kapsamında; Batı Akdeniz İhracatçılar Birliği’nin (BAİB) katkıları ve Ticaret Bakanlığı’nın destekleriyle, Bulgaristan, Filistin, Tunus, Kosova ve Umman olmak üzere 4 ülkeden Batı Akdeniz Kalkınma Ajansı (BAKA) iş birliği ile Ortadoğu ve Kuzey Afrika (MENA) ve Arap Yarımadası bölgesine ait, Birleşik Arap Emirlikleri, Katar, Kuveyt, Suudi Arabistan, Yemen ve Kazakistan olmak üzere 6 ülkeden, ANFAŞ’ın yurt dışındaki acente iş birlikleriyle Almanya, Brezilya, Bulgaristan, Çin, Hindistan, Kosova, Sırbistan, Tunus ve Yunanistan’dan alım heyetleri ve profesyonel ziyaretçiler fuarlara getirilmektedir.\r\n\r\nBununla birlikte yurt içi çalışmaları kapsamında fuarlara Ticaret Bakanlığı, Kültür ve Turizm Bakanlığı, Bilim Sanayi ve Teknoloji Bakanlığı, Gıda Tarım ve Hayvancılık Bakanlığı, Türkiye Odalar ve Borsalar Birliği(TOBB), Türkiye Esnaf ve Sanatkârları Konfederasyonu(TESK), Ticaret Borsaları, Ticaret ve Sanayi Odaları, Türkiye Otelciler Federasyonu (TÜROFED), Türkiye Aşçılar Federasyonu (TAFED), Türkiye Lokantacılar ve Pastacılar Federasyonu ve çok sayıda sivil toplum kuruluşu iş birliğiyle 81 ilden profesyonel ziyaretçi getirilmektedir. Antalya’nın sembol yapıları arasında yer alan Anfaş Uluslararası Fuar ve Kongre Merkezi; 40.000 metrekare kapalı, 20.000 metrekare açık olmak üzere toplam 60.000 metrekarelik alanı ve 15 adet kongre, konferans ve seminer salonlarıyla eşsiz organizasyonlara ev sahipliği yapmaktadır.', 'Adres: SOĞUCAKSU MAH. 25001 SOKAK NO:1/4 AKSU / ANTALYA\r\nTelefon: +90 (242) 462 2000\r\nEmail: info@anfas.com.tr', '691643944c5cd.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 20:46:12', '2025-11-13 20:46:12'),
(132, 'TALYA CONVENTİON CENTER ANTALYA', 'fuar merkezi', 'antalya fuar ve sempezyum merkezi', 'Adres: Fevzi Çakmak Cad. No:30 . Antalya\r\nTelefon: 0212 232 17 47', '6916448242cf4.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:50:10', '2025-11-13 20:50:10'),
(133, 'Atlantis hotel ve resort', 'fuar ve sempozyum oteli', 'Antalya fuar', 'Adres: İleribaşı Mevkii Çamlık Sk.no:12 Belek / Antalya\r\nTelefon: 0212 232 17 47', '6916454809018.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 20:53:28', '2025-11-13 20:53:28'),
(134, 'Gökçe Okay', 'Hasret Yola Düşerse sergisi', 'Antalya galeri pazar, pazartesi hariç hergün 13:30-18:00  arası 15 Kasım 30 Aralık 2025', 'Adres: Elmalı Mahallesi Hasan Subaşı caddesi 13.sokak Gözde Han 11/12 Muratpaşa Antalya', '69164705d40d4.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 21:00:53', '2025-11-13 21:14:29'),
(135, 'Sandland Antalya KUm Heykel Galerisi', 'değişik temalarla ve dönemsel içeriklerle obje sergileri bulabilirsiniz', 'Antalya merkezde muhteşem bir galeri', 'Adres: Guzeloba Mahallesi Lara Caddesi Lara Birlik Halk Plajı, 07230 Muratpaşa/Antalya\r\nTelefon: 0549 445 07 77', '691648586b593.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 21:06:32', '2025-11-13 21:06:32'),
(136, 'Tugra Art Gallery', 'Antalya objeler ve antika galerisi', 'sıradan objeler bulabileceğiniz ve satın alabileceğiniz galeri', 'Adres:  Andifli, 07580 Kaş/Antalya\r\nTelefon: (0242) 836 37 13', '6916494a7ebb9.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 21:10:34', '2025-11-13 21:10:34'),
(137, 'Devlet Güzel Sanatlar Galerisi', 'Antalya Devlet Güzel Sanatlar Galerisi uzun yıllar Cumhuriyet Meydanında bulunan tarihi Mevlevihane binasında sanata ve sanatçıya hizmet vermiştir.', 'Ancak, Mevlevihane binasının büyük çaplı bir onarıma ihtiyaç duymasından dolayı 2014 yılı başlarında yeni bir galeri hizmet binası arayışı sonucunda Kışla Mahallesi Cumhuriyet Caddesi 59.Sokak Şeref Apartmanı NO: 2C Muratpaşa / Antalya adresinde yaklaşık 200m2’lik bir yer Devlet Güzel Sanatlar Galerisi olarak kiralanmış ve 15 Nisan 2014 tarihinde açılan karma sergi ile hizmete açılmıştır.', 'Adres: Selçuk Mah No:36, 07100 Muratpaşa/Antalya', '691649f182ee5.jpg', '[\"antalya\"]', NULL, 1, '2025-11-13 21:13:21', '2025-11-13 21:13:21'),
(138, 'Simitci Mıstık Gallery', 'Simitçi Mıstık (Mustafa Dağtekin 1878-1942). Babası Hasan Rıdvanoğulları 1866 yılında Mısır\'dan göçerek Kaleiçine yerleşti.', 'Antalya da ilk simit Fırınını açmış ve 3 ayrı fırında şehre simit ve koşma adı verilen baston simiti sevdirmiştir. Yaşadığı dönemde şehrin renkli simalarından biri olan Simitçi Mıstık Antalya\'nın en eski sülalelerinden birine Simitçi Mıstıklar adıyla isim babalığı yapmıştır. Torunlarından oluşan yaklaşık 200 kişi halen Antalya da yaşamaktadır. Simitçi Mıstık Galeri, 4. kuşak torunu olan. Prof.Dr. Hüseyin Okutan tarafından restore ettirilerek anısını yaşatmak üzere, bu adı almıştır.', 'Address: Kılınçarslan, Tabakhane Sk., 07100 Muratpaşa/Antalya\r\nTelefon: 0535 777 66 27\r\nEmail: sanat@simitcimistikgallery.com', '69164aff8fac5.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 21:17:51', '2025-11-13 21:17:51'),
(139, 'Orkun Ozan Art Gallery', 'Sanat, insan ile en sıkı diyaloğu kurabilen, onunla iç içe, kucak kucağa olan canlı kültür dalıdır.', 'Belki de siz bizi sadece bir “Sanat Galerisi” olarak tanıyorsunuz ama Orkun Ozan Medya Hizmetleri; Antalya’da sanata katkıları olan bir sanat gönüllüsü olmasının yanında; kurulduğu 1978 yılından itibaren şehrin yenilik takipçisi şirketlerine, kendilerini ifade edecekleri özgün bir iletişim dili oluşturmalarında, markalarının ve ürünlerinin anlatımında strateji ve kanal bulmalarında yol gösteren, gelişen teknolojiye göre donanımını artırarak zenginleşmiş bir MATBAA parkuruna da sahip, tam bir REKLAM HİZMET AJANSIDIR aynı zamanda ve esasında!..\r\n\r\nSanat, insan ile en sıkı diyaloğu kurabilen, onunla iç içe, kucak kucağa olan canlı kültür dalıdır. Bu yoldan hareketle yıllardır \\”Sanat, sanat içindir\\” veya \\”Sanat, toplum içindir\\” tartışması sürüp gitmektedir. Sanat felsefesi, sanat estetiği, yüksek sanat anlayışı gibi tartışmaların yanında, insanlar kendi hakiki amaçlarını gizleyerek sanatı bazı emellerine alet etmek istedikçe de bu tartışma böyle devam edecektir.\r\n\r\nSanatçılar her türlü çalışmalarını insan için yaparlar, sanat eserini laf olsun diye ve sadece becerilerini ortaya koymak için yaratmaz ve üretmezler. Sanatçı sanat eserini yaratırken, sanıyorum tek endişesi, sanat estetiğini yakalayarak plastik güzelliğe erişmek için çabalar ve çırpınır. Onun içindir ki kimilerine göre \\”Sanat sanat içindir\\” kimilerine göre \\”Sanat toplum içindir\\” Sonuçta şunu söyleyebiliriz; sanat güzelliğe erişmenin tek yoludur. Güzelliğe açılan ışıktan bir kapı aralığı olabilmek, o sihirli ışığın yayılmasındaki yorucu, zor yolda onunla kalabilmek ilkemiz olacaktır.\r\n\r\nBu yolda bizimle birlik olan her güzel insana, Akdeniz güneşi kadar sıcak, Akdeniz suyu kadar temiz, Toroslar kadar gizemli selamlar ve teşekkürler.', 'Adres: Milli Egemenlik Caddesi, 40. Sokak, No:36,  Muratpaşa / ANTALYA\r\n\r\nTelefon:  +90 (242) 248 38 52\r\nEmail: info@himmetocal.com', '69164bb275956.jpg', '[\"galeri\",\"antalya\"]', NULL, 1, '2025-11-13 21:20:50', '2025-11-13 21:20:50'),
(140, 'Toscana Sanat Galerisi', 'Sanat galerii', 'Sanatcilsrin eserleri,resimleri sergilenmektedir.Satis icinde gidebilir,tablolari,satin alabilirsiniz.', 'Adres: Gençlik, Burhanettin Onat Cd. 15/A, 07100 Muratpaşa/Antalya\r\nTelefon: 0532 698 00 69', '69164c545242d.webp', '[\"antalya\"]', NULL, 1, '2025-11-13 21:23:32', '2025-11-13 21:23:32'),
(141, 'Osmangazi Semt konağı', 'Sosyal belediyeciliğin en güzel örneklerinden biri olan Osman Gazi Semt Konağı, Gazi Mahallesi Sütçüler Caddesi’nde hizmete kazandırıldı.', 'Üç katlı olarak inşa edilen semt konağı; Gazi, Sütçüler, Habibler, Mehmet Akif ve Hüsnü Karakaş Mahalleleri’ne hizmet veriyor.\r\n\r\nKonağın içerisinde mutfak, idari ofisler, derslikler, depo ve sohbet odası yer alıyor.\r\nAyrıca çeşitli eğitim kursları, kültürel etkinlikler ve sosyal buluşmalar düzenlenerek mahalle sakinlerine bir araya gelme, öğrenme ve paylaşma imkânı sunuluyor.\r\n\r\nOsman Gazi Semt Konağı, yalnızca bir bina değil; komşuluk ilişkilerini güçlendiren, dayanışmayı ve sosyalleşmeyi teşvik eden yaşayan bir mekân olarak bölge halkının hayatına değer katıyor.\r\n\r\nKonakta ayrıca verilen diğer hizmeler şunlar;\r\n\r\nKÜTÜPHANE\r\n\r\nOsmangazi Semt Konağı içinde yer alan kütüphane, bölge halkına bilgiye kolay erişim imkânı sağlayan önemli bir kültür durağı olarak hizmet veriyor.\r\n\r\nToplamda 5.262 kitaptan oluşan koleksiyonuyla kütüphane; edebiyat, bilim, tarih, sanat ve çocuk kitapları dahil olmak üzere farklı alanlarda zengin kaynak seçenekleri sunuyor. 74 kişilik oturma kapasitesi, hem öğrencilerin hem de yetişkin ziyaretçilerin verimli bir şekilde çalışmasına olanak tanıyor.\r\n\r\n ÇOK AMAÇLI SALONLAR\r\n\r\nKonak içerisinde yer alan çok amaçlı salonlar, bölge halkına özel günlerinde kullanabilecekleri modern ve konforlu bir alan sunuyor. Nişan, kız isteme, kına, doğum günü gibi anlamlı kutlamalar için özenle tasarlanan bu salonlar, misafirlerine sıcak, samimi ve nezih bir ortamda unutulmaz anlar yaşama imkânı sağlıyor', 'Adres: Gazi, Sütçüler Cd. No:251, 07320 Kepez/Antalya\r\nTelefon: (0242) 361 51 91', '69164d159ae2c.jpg', '[\"galeri\",\"antalya\"]', NULL, 1, '2025-11-13 21:26:45', '2025-11-13 21:26:45'),
(142, 'Atelier Thalia', 'Sanat ve obje galerisi', 'bjeler ve el yapımı  ürünleri bulabilirsiniz.', 'Adres:  Haşimişcan, 1293. Sk. No:9, 07100 Muratpaşa/Antalya\r\nTelefon:', '69164db076f33.jpg', '[\"galeri\",\"antalya\"]', NULL, 1, '2025-11-13 21:29:20', '2025-11-13 21:29:20'),
(143, 'Yasemin Karagöz Art Sanat Galerisi', 'Sanat Galerisi', 'Galeri ve etkinlikler', 'Adres: Çağlayan, 2025. Sk., 07230 Muratpaşa/Antalya\r\nTelefon: 0505 148 40 13', '691655ce9e36e.jpg', '[\"galeri\",\"antalya\"]', NULL, 1, '2025-11-13 22:03:58', '2025-11-13 22:03:58'),
(144, 'Antalya Beach Park Koşu Parkuru', 'Antalya Konyaaltı belediyesinde yer alan sahildeki o muhteşem koşu parkuru', 'yaklaşık 5Km uzunluğundaki parkurda koşu ve bisiklet parkuru da yer almaktadır. haftanın her günü istenilen saatte ulaşılabilir.', 'Adres: Konyaaltı Plajları', '691e02e534ce1.jpg', '[\"yuzme\",\"spor\",\"bisiklet\",\"plaj\",\"kurek\",\"engelli uyumlu\"]', NULL, 1, '2025-11-19 17:48:21', '2025-11-19 17:48:21'),
(145, 'Yalım Park Koşu Parkuru', 'Antalya Muratpaşa belediyesinde yer alan sahildeki o muhteşem koşu parkuru yaklaşık 2Km uzunluğundaki parkurda koşu ve bisiklet parkuru da yer almaktadır.', 'haftanın her günü istenilen saatte ulaşılabilir.', 'Adres: Yeşilbahçe Lara caddesi Antalya', '691e03f76b28d.webp', '[\"yuzme\",\"spor\",\"bisiklet\",\"plaj\",\"antalya\",\"kiral\\u0131k scooter\",\"engelli uyumlu\"]', NULL, 1, '2025-11-19 17:52:55', '2025-11-19 17:52:55'),
(146, 'Mahmutlar Koşu ve Bisiklet Parkuru', 'Antalya Kargıcak belediyesinde yer alan sahildeki o muhteşem koşu parkuru yaklaşık 5Km uzunluğundaki parkurda koşu ve bisiklet parkuru da yer almaktadır.', 'Haftanın her günü istenilen saatte ulaşılabilir.', 'Antalya: Mahmutlar', '691e08d8696fa.jpg', '[\"yuzme\",\"spor\",\"bisiklet\",\"plaj\",\"kurek\",\"antalya\"]', NULL, 1, '2025-11-19 18:13:44', '2025-11-19 18:14:11'),
(147, 'Geyikbayırı Trekking Parkuru', 'Antalya Geyikbayırı\'nda yer alan  o yürüyüş ve koşu parkuru yaklaşık 50Km uzunluğundaki parkurda koşu ve bisiklet parkuru da yer almaktadır. haftanın her günü istenilen saatte ulaşılabilir.', 'Ulaşım özel ya da kiralık araçla olabilir.', 'Adres: Geyikbayırı', '691e0c8a55b99.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 18:29:30', '2025-11-19 19:10:35'),
(148, 'Kelbessos Kızlar Dağı Zirve Tırmanışı', 'yürüyüş yolu ve trekking parkuru.', 'dağ zirve tırmanışı', 'Adres: Geyikbayırı', '691e0e4bbf2ff.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 18:36:59', '2025-11-19 18:36:59'),
(149, 'Sarısı - Tünektepe Parkuru', 'Antalya Kemer  yolu üzerinde ormanlık alanda kalan bir parkur.', 'koşu ve trekking parkuru.', 'tratlon hazırlık amaçlı kullanılabilecek bir ormanlık parkur.', '691e0f6d36873.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 18:41:49', '2025-11-19 18:41:49'),
(150, 'Antalya Binicilik ve Atlıspor Kulübü', 'Antalya Binicilik ve Atlıspor Kulübü Tesisleri Kundu’da yaklaşık 40 dönüm arazi üzerine kuruludur.', '\"Tesisimizde binicilik eğitimi verilmekte ve öğrencilerimiz ile Ulusal yarışlara katılınmaktadır. Cafe–Restaurant kısmımızda kahvaltı, yemek, mangal, doğum günü, lansman - tören etkinlikleri, şirket toplantı & yemekleri, nişan, düğün, konser-özel parti vb. tüm organizasyonlarınızı düzenleyebilirsiniz.\"', 'Adres: Güzeloba Mah. Rauf Denktaş Cad. No:56/101 Muratpaşa', '691e135427668.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 18:58:28', '2025-11-19 18:58:28'),
(151, 'Girdev Göl Off Road Parkuru', 'Finike\'nin dağlık kısmında yer alan off road parkuru', 'inanılmaz Girdev gölü etrafında yer alan off road parkuru her gün her saat ziyaret için uygundur.', 'Adres:  Girdev gölü Çukurbağ mevki Finike Antalya', '691e15fca5f67.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 19:09:48', '2025-11-19 19:09:48'),
(152, 'Patara Off Road Parkuru', 'Antalya off road parkuruç', 'Patara\'da bulunan parkur hem manzarası hem doğası ile eşsiz bir deneyim sunuyorç', 'Adres: Patara Kalkan', '691e173a37d85.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-19 19:15:06', '2025-11-19 19:15:06'),
(153, 'Alanya Doğa Sporları Kulübü', 'Antalya ilinde doğa sporları kulübü.', 'Adres : GÜLLERPINARI MAH. HASANÇALIOĞLU CD. RECEPOĞLU APT. NO: 59/A ALANYA ANTALYA', 'Telefon : 2425137420\r\nTelefon : 2425137420GSM : 5363533438\r\nE-mail : aldosk@aldosk.org.tr\r\nWeb : www.aldosk.org.tr', '691ef6fcd5f48.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 11:09:48', '2025-11-20 13:10:46'),
(154, 'Antalya Enduro Motosiklet İhtisas Kulübü', 'Antalya motosiklet sporları kulübü', 'Adres : CUMHURİYET MAH.  - 644. SOK. NO:TARLACI APT./NO: 20 / A', 'Telefon : 05425751280\r\nTelefon : 05425751280GSM : 05425751280\r\nE-mail : enduroantalya07@gmail.com', '691ef7c43d330.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 11:13:08', '2025-11-20 11:13:33'),
(155, 'Antalya  Hedef Voleybol', 'Yetişkinler için hemen hemen haftanuın her günü Konyaaltı ve Muratpaşa ilçelerinde amatör Voleybol maçları düzenlenmektedir.', 'her maç başı ödeme yapılmaktadır. size uygun olan gün ve saatler için iletişime geçebilirsiniz. maçlar profesyonel voleybol salonlarında düzenlenmektedir.', 'Telefon: 05352261150', '691f0f303eda1.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 12:53:04', '2025-11-20 12:53:04'),
(156, 'Kemer Enduro Motosiklet Kulübü', 'Motosiklet sporları', 'Adres : YENİ MAHALLE DÖRTYOL CAD. NO: 63/4 KEMER / ANTALYA', 'Telefon : 532 342 10 21\r\nFaks : 242 814 4760\r\nTelefon : 532 342 10 21\r\nGSM : 532 342 10 21\r\nE-mail : kemerenduro@hotmail.com\r\nWeb : http://www.kemerenduro.com/', '691f12eadc569.png', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 13:08:58', '2025-11-20 13:08:58'),
(157, 'SUP Point By Denizciler', 'Antalya pedal ve su sporları kulübü', 'Adres: Meltem, 07030 Konyaaltı/Antalya', 'Telefon: 0533 510 11 12', '691f44e6e3798.webp', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 16:42:14', '2025-11-20 16:42:14'),
(158, 'SUP Club Antalya', 'Sup Paddle Board •Eğitim •Kiralama', 'Adres: Konyaaltı', 'Telefon: 05415899274', '691f4c6af1067.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 17:14:18', '2025-11-20 17:14:18'),
(159, 'Denizciler Spor Kulübü', 'Coastal Rowing Club', 'Kürek ve Kayık sporlarını bulabilirsiniz Antalya şubesinde.', 'Websitesi: www.denizciler.org.tr', '691f52357b02c.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 17:39:01', '2025-11-20 17:39:01'),
(160, 'Toroslar Doğa Sporları Spor Kulübü', 'TODOSK, 1991 yılında Dernek olarak kurulmuştur. 1992 yılında da Spor Kulübü olarak tescil edilmiştir.', 'TOROSLAR DOĞA SPORLARI GENÇLİK VE SPOR KULÜBÜ merkezi Antalya’dadır. Şubesi yoktur. Kısa adı TODOSK’tur. Arması; kaya üzerinde dağ keçisi, arkasında dağ etrafında TOROSLAR DOĞA SPORLARI KULÜBÜ 1991 ANTALYA yazılıdır. Tanıtıcı renkleri yeşil ve laciverttir.', '\"Kuruluş amacı; doğa severliği yaygınlaştırmak, tanıtmak, sevdirmek ve korumak. Bu yöndeki tüm sportif ve kültürel etkinliklerde bulunmak, çalışmaları kollar halinde organize etmektir.\r\n\r\nÜye ve yandaşlarının manevi kişilik ve sağlıklarının üst seviyede olması için çaba gösterir. Sporcularımızın bilgi, görgü ve becerilerini artırmak üzere yurt içi ve dışında dağcılık etkinlikleri, doğa yürüyüşleri ve geziler düzenler araştırma ve organizasyonlar yapar. Gerektiğinde yabancı sporcularla ve kulüplerle iş birliğine girerek eğitim tırmanışları ve geziler düzenler, rehberlik hizmetleri verir.\r\n\r\nKulüp siyasetle uğraşmaz.\" TODOKS\r\n\r\nAdres: Elmalı Mahallesi Cumhuriyet Caddesi 22.Sokak Ulutaş Apt. No:10/13 Muratpaşa\r\nTelefon:  0242 243 85 10  0552 480 85 10\r\nEmail: info@todosk.com', '691f534d54679.png', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 17:43:41', '2025-11-20 18:06:52'),
(161, 'Magic Ice Antalya', 'Muratpaşa belediyesi buz pateni pisti', 'aynı anda 60 kişinin kullanabileceği bir buz pisti', 'Adres: Çaybaşı, 1364. Sk., 07100 Muratpaşa/Antalya\r\nTelefon: (0242) 321 35 88', '691f5a13d4962.webp', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 18:12:35', '2025-11-20 18:12:35'),
(162, 'Antalya Eskrim Kulübü', 'Antalya Eskrim Kulübü çocuklar ve gençler için birebir profesyonel eğitimler verir.', 'Adres: Antalya Apartmanı, Gençlik, Fevzi Çakmak Cd. No:69, 07100 Muratpaşa/Antalya', 'Telefon: 0536 845 05 13', '691f5efc502fe.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 18:33:32', '2025-11-20 18:33:32'),
(163, 'Antalya Bisiklet Sevenler Spor Kulübü', 'Antalya Bisiklet Sevenler Grubu 2013 Ekim ayında kurulmuş ve etkinliklerine başlamıştır.', '\"Amacımız, bisiklet sporunu her yaşa aşılamak, trafikte bilinirliliği artırarak bisikletli ulaşımı desteklemek, bisiklet ile toplumda hareketliliği sağlamak ve daha sağlıklı, yaşanabilir bir çevreye katkı sağlamaktır.', 'Antalya Bisiklet Sevenler ailesi olarak her Salı şehir turu, her ay iki defa doğa turu ve her hafta Performans turlarımız ile faaliyetlerimiz devam etmektedir. Turlarımıza dileyen herkes katılabilir. Tur kurallarımız ve tur takvimimiz için internet sitemizi inceleyebilir ve instagram, facebook, telegram ve whatsapp üzerinden bizleri takip edebilirsiniz.\r\n\r\nKasım 2025 tarihi itibarıyla yapımız Spor Kulübü olarak değişmiştir.\"\r\n\r\nBUluşma NOktası: Antalya Atatürk Parkı\r\n\r\nBahçelievler Mahallesi, Konyaaltı Caddesi, Barbaros Çay Bahçesi karşısı', '691f602c12e7f.jpg', '[\"spor\",\"bisiklet\",\"antalya\"]', NULL, 1, '2025-11-20 18:38:36', '2025-11-20 18:38:36'),
(164, 'Antalya Toroslar Yüzme Kursu', 'Toroslar yüzme kulübü', 'TOROSLAR YÜZME SPOR KULÜBÜ olarak kursiyer seviyesinden aldığımız sprcularımızı GELECEĞİN ŞAMPİYONLARI yapmayı hedefliyoruz.\r\nAKDENİZ ÜNİ.\r\nDOĞA KOLEJİ', 'Adres: Akdeniz Ünv., Kapalı yüzme havuzu, Antalya Yüzme Kursu, 07070 Konyaaltı/Antalya\r\nWeb sitesi: www.antalyayuzmekursutoroslar.com\r\nTelefon: 05318476752', '691f62650d423.webp', '[\"yuzme\",\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 18:48:05', '2025-11-20 18:48:05'),
(165, 'Antalya Yüzme Akademisi', 'Yüzme sporu, bireysel yüzme dersleri', 'profesyonel yüzme eğitimi', 'Adres: Kapalı Yüzme Havuzu Antalya Yüzme Kursu, Pınarbaşı, Spor İşleri Müdürlüğü no 39, 07070 Konyaaltı/Antalya', '691f63d5691b5.jpg', '[\"yuzme\",\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 18:54:13', '2025-11-20 18:54:13'),
(166, 'AkraFit', 'Açık yüzme havuzu', 'Adres: AKRA\r\nŞirinyalı Mh. Lara Cd. No:24 07100 Muratpaşa, Antalya, Türkiye\r\nTelefon: +90 242 310 99 99', 'Email: info@akrahotels.com', '691f64d4c1c71.jpg', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 18:58:28', '2025-11-20 18:58:28'),
(167, 'Antalya Konyaaltı Plajı', 'Konyaaltı belediyesinde yer alan sahil şeridi plaj olarak da kullanılmaktadır ve halka açık ücretsizdir.', 'yaklaşık 5 km uzunluğunda ücretsiz taş kum karışık plajında duş, tuvalet ve giyinme kabinleri bulunmaktadır. Ayrıca engelli bireyler için özel donanımlar da mevcuttur.', 'Adres: Konyaaltı belediyesi sahil', '691f65f2af2c4.jpg', '[\"yuzme\",\"plaj\",\"antalya\",\"engelli uyumlu\"]', NULL, 1, '2025-11-20 19:03:14', '2025-11-20 19:03:14'),
(168, 'Muratpaşa Belediyesi Süleyman Erol Olimpik Yüzme Havuzu', 'Antalya Muratpaşa belediyesine ait kapalı ısıtmalı yüzme havuzu', 'Telefon: (0242) 311 44 88', 'Adres: Süleyman Erol Yüzme Havuzu, Yeşilbahçe, Portakal Çiçeği Cd., 07070 Muratpaşa/Antalya', '691f66ee4206a.jpg', '[\"yuzme\",\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 19:07:26', '2025-11-20 19:07:26'),
(169, 'Antalya  Cennet Koyu', 'Antalya\'da yer alan gizli bir koy ve muhteşem bir plaj', 'tarihin izlerine rastlanılacak bir cennet koy.', 'Adres: tarihi likya yolu Beydağları Sahili Milli Parkı, Tekirova, 07995 Kemer/Antalya', '691f67d5e9025.webp', '[\"yuzme\",\"spor\",\"plaj\",\"antalya\"]', NULL, 1, '2025-11-20 19:11:17', '2025-11-20 19:11:17'),
(170, 'Antalya Golden Time Karaoke Live', 'Restaurant ve karaoke bar', 'Antalya\'ya farklı bir soluk katan şık karaoke restaurantı', 'rezervasyon yapılmalıdır.\r\nAdres: GÜRSU M ATATÜRK BULVARI ULUÇ PLAZA NO:162 C KONYAALTI\r\n07070 Antalya\r\n\r\nTelefon: +905427690216\r\nEmail: tarkankocak@gmail.com', '691f6c492e369.jpg', '[\"muzik\",\"antalya\"]', NULL, 1, '2025-11-20 19:30:17', '2025-11-20 19:34:02'),
(171, 'Antalya Dil Değişim Etkinliği', 'Muratpaşa belediyesi dil kulübü', 'İngilizce konuşma pratiği yapmak isteyenler için Muratpaşa Belediyesi olarak “Language Lounge” etkinliklerini başlatıyoruz. Prof. Dr. Erdal İnönü Kent Parkı Kültür Kafe’de düzenlenecek olan bu etkinlikler, dil becerilerini geliştirmek, kültürel etkileşimi artırmak ve toplumsal katılımı teşvik etmek amacıyla hayata geçiriliyor.', 'Çarşamba günleri Martı Gençlik Derneği (MAGEND), Perşembe günleri ise Çevre,Ekonomi ve Toplum Araştırmaları Derneği (ÇETADER)tarafından düzenlenecek etkinliklere herkes ücretsiz olarak katılabilir.\r\nADres: Muratpaşa Belediyesi Kurs Eğitim Merkez, eğitim merkezleri, Konuksever Mah., 819. Sok., No:52A,', '691f70f81d674.jpg', '[\"antalya\"]', NULL, 1, '2025-11-20 19:50:16', '2025-11-20 19:50:16'),
(172, 'Antalya Teras Bilardo Cafe', 'Bilardo ve kart oyunları', 'UNcalı mahallesinde bulunan bilardo sporu yapabileceğiniz spor kulübü', 'Adres: Uncalı mahallesi, Uncalı mh.Gazi Mustafa Kemal Bulvari 121/11 Hasan Karabulut İş Mrkz kat:3 (Banio Market karsisi) 05395442704, 07070 Konyaaltı', '691f720cf0a8e.webp', '[\"spor\",\"antalya\"]', NULL, 1, '2025-11-20 19:54:52', '2025-11-20 19:54:52'),
(173, 'Kristal Cafe & Bilardo', 'Kart oyunları ve bilardo', 'amerikan ve üç top masaları ve kart oyunları mevcuttur', 'Adres: Kızılsaray, 68. Sk., 07040 Muratpaşa/Antalya\r\nTelefon: (0242) 241 39 49', '691f728bf206a.webp', '[\"antalya\"]', NULL, 1, '2025-11-20 19:56:59', '2025-11-20 19:56:59'),
(174, 'Antalya Kitap Kulübü', '2022 yılında “Okumak iyileştirir” düşüncesiyle bir araya gelen Antalya Kitap Kulübü, kitapları yaşamın ayrılmaz bir parçası olarak gören, nitelikli okurlardan oluşan bir topluluktur.', 'Birlikte okumanın, düşünmenin ve paylaşmanın dönüştürücü gücüne inanıyoruz. Belirlediğimiz kitapları okuyor, okuduklarımız üzerine konuşuyor ve farklı bakış açılarını dinliyoruz. Nitelikli eserler okuyarak düşünmeyi, sorgulamayı, eleştirel bir bakış açısı geliştirmeyi ve hislerimizi paylaşmayı amaçlarken; edebiyatı, sanatı ve insanı merkeze alan bir paylaşım ortamı yaratıyoruz.', 'Okumanın iyileştirici, birleştirici ve dönüştürücü gücüne yürekten inanan Antalya Kitap Kulübü okumayı bir alışkanlıktan öte bir yaşam biçimine dönüştürmek isteyen herkese açık bir topluluktur. \r\n\r\nİletişim için ziyaret edin https://www.antalyakitapkulubu.com', '691f735d393f3.jpg', '[\"antalya\",\"engelli uyumlu\"]', NULL, 1, '2025-11-20 20:00:29', '2025-11-20 20:00:29'),
(175, 'ForFun Antalya', 'Antalya masa oyunları, bilardo, bowling', 'dart ve pek çok masa oyunlarını bulabileceğiniz kaliteli bir mekan.', 'Adres: Şirinyalı Mahallesi, İsmet Gökşen Caddesi, No: 1/A (Akra Park Otel altı), 07160 Muratpaşa/Antalya\r\n\r\nTelefon: 0501 761 18 29', '691f742683420.webp', '[\"antalya\",\"engelli uyumlu\"]', NULL, 1, '2025-11-20 20:03:50', '2025-11-20 20:03:50'),
(176, 'Kadim Antika', 'Antika ve açık artırma.', 'Antika mobilyalar ve  eşyaları bulabileceğiniz Antalya\'nın en eski antikacılarından birisidir.', 'Adres: Gökkaya işhanı, Kışla, 25. Sk. No:7/B altı, 07040 Muratpaşa/Antalya\r\nTelefon: 0532 721 73 32', '6921a3d5d05f3.webp', '[\"galeri\",\"antika\",\"antalya\"]', NULL, 1, '2025-11-22 11:51:49', '2025-11-22 11:51:49'),
(177, 'Konyaaltı Sahil Yolu', 'Bisiklet parkuru olarak da kullanılan Konyaaltı sahili yaklaşık 5km uzunluğundadır.', 'Konyaaltı Plajı boyunca uzanan sahil yolu, Antalya’nın en popüler bisiklet rotalarından biridir. Hem düz hem de geniş bir yol olması nedeniyle başlangıç seviyesindeki bisikletçiler için oldukça uygundur. Akdeniz manzarası eşliğinde sürüş yapabilir, yol boyunca dinlenme alanlarında mola verebilirsiniz.', 'Adres: Konyaaltı sahili', '6921a49f42708.jpg', '[\"spor\",\"bisiklet\",\"antalya\"]', NULL, 1, '2025-11-22 11:55:11', '2025-11-22 11:55:11'),
(178, 'Lara Sahil Yolu', 'Bisiklet parkuru da içeren Lara\'nın sahil yolu.', 'Lara bölgesinde bulunan sahil yolu, geniş bisiklet yolları ve manzarası ile keyifli bir sürüş imkanı sunar. Özellikle sabah saatlerinde bisiklet sürmek isteyenler için harika bir seçenektir. Yol boyunca çeşitli parklar ve dinlenme alanları da bulunmaktadır.', 'Adres: Lara', '6921a56e1ca7c.jpg', '[\"antalya\"]', NULL, 1, '2025-11-22 11:58:38', '2025-11-22 11:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_county`
--

CREATE TABLE `attraction_county` (
  `attraction_id` int NOT NULL,
  `county_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attraction_county`
--

INSERT INTO `attraction_county` (`attraction_id`, `county_id`) VALUES
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 2),
(14, 3),
(15, 3),
(16, 2),
(17, 2),
(18, 11),
(19, 4),
(20, 2),
(21, 4),
(22, 4),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 5),
(29, 5),
(30, 3),
(31, 1),
(32, 2),
(33, 7),
(34, 4),
(35, 13),
(36, 5),
(37, 7),
(38, 14),
(39, 8),
(40, 12),
(41, 8),
(42, 11),
(43, 8),
(44, 15),
(45, 15),
(46, 4),
(47, 2),
(48, 4),
(49, 4),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 3),
(65, 3),
(66, 10),
(67, 2),
(68, 2),
(69, 2),
(70, 1),
(71, 2),
(72, 10),
(73, 16),
(74, 2),
(75, 1),
(76, 2),
(77, 3),
(78, 3),
(79, 2),
(80, 4),
(81, 8),
(82, 13),
(83, 1),
(84, 2),
(85, 8),
(86, 2),
(87, 1),
(88, 9),
(89, 17),
(90, 17),
(91, 17),
(92, 12),
(93, 15),
(94, 5),
(95, 4),
(96, 16),
(97, 18),
(98, 19),
(99, 3),
(100, 9),
(101, 13),
(102, 2),
(103, 10),
(104, 20),
(105, 7),
(106, 2),
(107, 2),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 2),
(113, 2),
(113, 3),
(114, 3),
(115, 3),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 3),
(122, 2),
(123, 2),
(124, 2),
(125, 3),
(126, 2),
(127, 1),
(128, 8),
(129, 2),
(130, 2),
(131, 14),
(132, 2),
(133, 11),
(134, 2),
(135, 2),
(136, 8),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 1),
(142, 2),
(143, 2),
(144, 3),
(145, 2),
(146, 21),
(147, 22),
(148, 22),
(149, 3),
(150, 2),
(151, 15),
(152, 8),
(153, 4),
(154, 23),
(155, 3),
(156, 7),
(157, 3),
(158, 3),
(159, 2),
(160, 24),
(161, 2),
(162, 2),
(163, 3),
(164, 1),
(164, 3),
(166, 2),
(167, 3),
(168, 2),
(169, 7),
(170, 3),
(171, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 3),
(178, 2);

-- --------------------------------------------------------

--
-- Table structure for table `attraction_sub_category`
--

CREATE TABLE `attraction_sub_category` (
  `attraction_id` int NOT NULL,
  `sub_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attraction_sub_category`
--

INSERT INTO `attraction_sub_category` (`attraction_id`, `sub_category_id`) VALUES
(2, 6),
(3, 20),
(4, 53),
(5, 53),
(6, 53),
(7, 53),
(8, 53),
(9, 53),
(10, 54),
(11, 54),
(12, 54),
(13, 54),
(14, 54),
(15, 46),
(16, 46),
(17, 32),
(18, 4),
(18, 19),
(18, 32),
(19, 32),
(20, 32),
(21, 4),
(22, 32),
(23, 32),
(24, 32),
(25, 32),
(26, 4),
(27, 32),
(28, 4),
(29, 4),
(30, 32),
(31, 32),
(32, 32),
(33, 4),
(34, 32),
(35, 4),
(35, 36),
(36, 4),
(37, 4),
(38, 4),
(38, 12),
(39, 4),
(39, 12),
(40, 4),
(41, 4),
(41, 12),
(42, 4),
(42, 19),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(47, 12),
(48, 48),
(49, 48),
(50, 48),
(51, 48),
(52, 48),
(53, 48),
(54, 48),
(55, 53),
(56, 48),
(57, 48),
(58, 48),
(59, 48),
(60, 48),
(61, 48),
(62, 48),
(63, 48),
(64, 48),
(65, 48),
(66, 48),
(67, 48),
(68, 11),
(69, 48),
(70, 48),
(71, 53),
(72, 48),
(73, 48),
(74, 11),
(74, 26),
(75, 11),
(75, 26),
(75, 48),
(76, 11),
(76, 26),
(77, 11),
(77, 26),
(78, 26),
(79, 11),
(79, 26),
(80, 11),
(81, 11),
(81, 26),
(81, 48),
(82, 11),
(83, 11),
(83, 48),
(84, 11),
(84, 26),
(84, 48),
(85, 11),
(86, 11),
(86, 48),
(86, 53),
(87, 11),
(87, 48),
(87, 53),
(88, 4),
(88, 12),
(89, 42),
(90, 42),
(91, 42),
(92, 42),
(93, 42),
(94, 42),
(95, 42),
(96, 42),
(97, 42),
(98, 42),
(99, 42),
(100, 42),
(101, 42),
(102, 42),
(103, 42),
(104, 42),
(105, 42),
(106, 56),
(107, 56),
(108, 56),
(109, 56),
(110, 56),
(111, 55),
(112, 53),
(113, 55),
(114, 55),
(115, 55),
(116, 26),
(117, 1),
(118, 1),
(119, 50),
(120, 50),
(121, 50),
(122, 6),
(123, 6),
(124, 6),
(125, 20),
(126, 20),
(127, 43),
(128, 43),
(129, 43),
(130, 43),
(131, 16),
(132, 16),
(133, 16),
(134, 41),
(135, 34),
(136, 25),
(137, 18),
(138, 15),
(139, 39),
(140, 15),
(141, 25),
(142, 34),
(143, 39),
(144, 27),
(145, 27),
(146, 27),
(147, 27),
(148, 27),
(149, 27),
(150, 3),
(151, 35),
(152, 35),
(153, 37),
(154, 31),
(155, 46),
(156, 31),
(157, 38),
(158, 44),
(158, 45),
(159, 38),
(159, 45),
(160, 52),
(161, 23),
(162, 14),
(163, 9),
(164, 7),
(165, 21),
(166, 5),
(167, 17),
(168, 21),
(169, 28),
(170, 10),
(171, 13),
(172, 22),
(173, 22),
(174, 24),
(175, 30),
(176, 2),
(177, 8),
(178, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Arkeoloji ve Klasik'),
(2, 'Etkinlik'),
(3, 'Fuar ve Sempozyum'),
(4, 'Galeri'),
(5, 'Kültürel Tadlar'),
(6, 'Parkurlar'),
(7, 'Plaj ve Havuzlar'),
(8, 'Sosyal Buluşma'),
(9, 'Spor'),
(10, 'Çocuklar İçin');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `city`) VALUES
(1, 1, 'Antalya'),
(2, 1, 'İstanbul');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `attraction_id` int DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `attraction_id`, `comment`, `created_at`, `updated_at`) VALUES
(5, NULL, NULL, 'dfgdgd', '2025-09-18 12:50:59', '2025-09-18 12:50:59'),
(6, NULL, NULL, 'hbhb', '2025-09-18 13:20:52', '2025-09-18 13:20:52'),
(7, NULL, NULL, 'hbhb', '2025-09-18 18:15:06', '2025-09-18 18:15:06'),
(8, NULL, NULL, 'hbhb', '2025-09-18 19:11:51', '2025-09-18 19:11:51'),
(9, NULL, NULL, 'wre3rwe', '2025-09-18 19:12:28', '2025-09-18 19:12:28'),
(10, NULL, NULL, 'thtrgrg', '2025-09-18 19:18:18', '2025-09-18 19:18:18'),
(11, NULL, NULL, 'tfjxdhtgh', '2025-09-18 19:18:46', '2025-09-18 19:18:46'),
(12, NULL, NULL, 'aefwefweafs', '2025-09-18 19:20:42', '2025-09-18 19:20:42'),
(13, NULL, NULL, 'dawsd', '2025-09-21 18:09:11', '2025-09-21 18:09:11'),
(24, 1, 3, 'khgg', '2025-10-14 13:05:50', '2025-10-14 13:05:50'),
(26, 1, 2, 'wed', '2025-10-21 09:25:03', '2025-10-21 09:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `comment_attraction`
--

CREATE TABLE `comment_attraction` (
  `comment_id` int DEFAULT NULL,
  `attraction_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_attraction`
--

INSERT INTO `comment_attraction` (`comment_id`, `attraction_id`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'Türkiye');

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `id` int NOT NULL,
  `city_id` int DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`id`, `city_id`, `county`) VALUES
(1, 1, 'Kepez'),
(2, 1, 'Muratpaşa'),
(3, 1, 'Konyaaltı'),
(4, 1, 'Alanya'),
(5, 1, 'Demre'),
(6, 1, 'Karaöz'),
(7, 1, 'Kemer'),
(8, 1, 'Kaş'),
(9, 1, 'Kumluca'),
(10, 1, 'Manavgat'),
(11, 1, 'Side'),
(12, 1, 'Döşemealtı'),
(13, 1, 'Serik'),
(14, 1, 'Aksu'),
(15, 1, 'Finike'),
(16, 1, 'Gazipaşa'),
(17, 1, 'Akseki'),
(18, 1, 'Gündoğmuş'),
(19, 1, 'İbradı'),
(20, 1, 'Korkuteli'),
(21, 1, 'Kargıcak'),
(22, 1, 'Geyikbayırı'),
(23, 1, 'Beldibi'),
(24, 1, 'Elmalı');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `latitude`, `longitude`) VALUES
(1, '36.88794952814978', '30.71245302259516'),
(2, '36.88533735908244', '30.650575333444003');

-- --------------------------------------------------------

--
-- Table structure for table `location_attraction`
--

CREATE TABLE `location_attraction` (
  `location_id` int NOT NULL,
  `attraction_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_attraction`
--

INSERT INTO `location_attraction` (`location_id`, `attraction_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `location_user`
--

CREATE TABLE `location_user` (
  `location_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_user`
--

INSERT INTO `location_user` (`location_id`, `user_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service`, `company`, `address`, `email`, `phone`, `href`, `price`) VALUES
(1, 'kiralık atv', 'Null', 'ff', 'fgdg@fdd', '54645', 'fdvfv', 45),
(2, 'kiralık araba', 'Null', 'hfg', 'ffgh@fgfd', '5464576', 'fghfgh', 45),
(3, 'kiralık bisiklet', 'Null', 'trdf', 'rter@rter', '45656', 'dfgdfg', 45),
(4, 'kiralık scooter', 'Null', 'sdef', 'efe@sdfn', '34324', 'dfgdsf', 34),
(5, 'banka', 'Null', 'wedw', 'werwer@fer', '34235', '23432', 45),
(6, 'tercüman', 'Null', 'efwe', 'ewfewf@efws', '3242', 'ewfdwe', 45),
(7, 'rehber', 'Null', 'erw', 'werwe@werwe', '343', 'werw', 435),
(8, 'sağlık', 'Null', 'dfds', 'fsdf@efrdd', '3432', 'rgferd', 5667),
(9, 'bakıcı', 'Null', 'dfsd', 'sdfd@edf', '4354', 'fggfd', 45),
(10, 'engelli uyumlu', 'Null', 'fefsdfesdf', 'sdefds@df', '324324', 'edfd', 45),
(11, 'kiralık bisiklet', NULL, 'erter', 'ertert@etrfe', '45345', 'fdgdf', 45);

-- --------------------------------------------------------

--
-- Table structure for table `service_county`
--

CREATE TABLE `service_county` (
  `service_id` int NOT NULL,
  `county_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_county`
--

INSERT INTO `service_county` (`service_id`, `county_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_sub_category`
--

CREATE TABLE `service_sub_category` (
  `service_id` int NOT NULL,
  `sub_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sub_category`
--

INSERT INTO `service_sub_category` (`service_id`, `sub_category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `sub_category`) VALUES
(1, 5, 'Akdeniz Mutfağı ve Türk Gitarı'),
(2, 4, 'Antika ve Açık Artırma'),
(3, 6, 'At Binme Parkurları'),
(4, 1, 'Açık Hava Müzeleri'),
(5, 9, 'Açık Havuzlar'),
(6, 5, 'Balık ve Fasıl'),
(7, 9, 'Bireysel Sporlar'),
(8, 6, 'Bisiklet Parkurları'),
(9, 9, 'Bisiklet Turu'),
(10, 8, 'Canlı Karaoke'),
(11, 2, 'Canlı Müzik ve Resitaller'),
(12, 1, 'Devam Eden Kazı Alanı'),
(13, 8, 'Dil Değişim'),
(14, 9, 'Ekstrem Sporlar'),
(15, 4, 'Fotoğraf Galerisi'),
(16, 3, 'Fuar'),
(17, 7, 'Halk Plajları'),
(18, 4, 'Heykel Galerisi'),
(19, 1, 'İkonik Mekanlar'),
(20, 5, 'İç Anadolu Mutfağı ve Bağlama'),
(21, 7, 'Kapalı Havuzlar'),
(22, 8, 'Kart Oyunları'),
(23, 9, 'Kış Sporları ve Buz Pateni'),
(24, 8, 'Kitap Kulübü'),
(25, 4, 'Koleksiyon Galerileri'),
(26, 2, 'Konserler'),
(27, 6, 'Koşu Parkurları'),
(28, 7, 'Koylar'),
(29, 6, 'Macera Parkurları'),
(30, 8, 'Masa Oyunları'),
(31, 9, 'Motor Sporları'),
(32, 1, 'Müze'),
(33, 8, 'Networking ve Tanışma'),
(34, 4, 'Objeler Galerileri'),
(35, 6, 'Off-road Parkurları'),
(36, 2, 'Opera ve Bale'),
(37, 9, 'Outdoor ve Macera'),
(38, 9, 'Pedal ve Kürek'),
(39, 4, 'Resim Galerisi'),
(40, 3, 'Sempozyum'),
(41, 4, 'Seramik ve Çini Galerileri'),
(42, 1, 'Sit Alanları ve Girilmesi Yasak Alanlar'),
(43, 5, 'Sokak Lezzetleri'),
(44, 6, 'Su Parkurları'),
(45, 9, 'Su Sporları ve Yelken'),
(46, 9, 'Takım Sporları'),
(47, 6, 'Tırmanış Parkurları'),
(48, 2, 'Tiyatro ve Sahne Sanatları'),
(49, 8, 'Türk BIlim Adamları Açık Oturumları'),
(50, 5, 'Türk Dokunuşu ve Türk Jazı'),
(51, 6, 'Yürüyüş Parkurları'),
(52, 9, 'Yürüyüş ve Tırmanış'),
(53, 10, 'Bale, Tiyatro, Görsel Sanatlar ve Müzik Kursu'),
(54, 10, 'Spor Kursu'),
(55, 10, 'Pozitif Bilim Kursları'),
(56, 10, 'Yabancı Dil Kursları');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'bilge@gmail.com', '[\"ROLE_SUPER_ADMIN\"]', '$2y$13$1By39u.6ll1EYC08FeB.S.W/OaNi8HFnRYZU7yFIb7T4w0Qo0sy3i'),
(2, 'bilgec@gmail.com', '[\"ROLE_USER\"]', '$2y$13$OQMwgXDvbcBiLhOca7gLSunbV0npIBPYVZUeEMc10xIUHgzpY4OY6'),
(11, 'safddf@com', '[\"ROLE_USER\"]', '$2y$13$jcUOqf4IO1anbzen5CwZDeHiRLewwv8SKfv2tZeuNAiiMq9sw3wze'),
(13, 'safddaf@com', '[\"ROLE_USER\"]', '$2y$13$VcVYAV57XlWSdW/oqbA2VetHlQZIEcH6qCUqRxbMuANOXK//PZ1Iq'),
(14, 'safddfef@com', '[\"ROLE_USER\"]', '$2y$13$5qFxl6zHPKz285Oo48P02OMEmS/qg9gE9.l9nHEc.kpXWNnlMNCJy'),
(15, 'ebk11334@gmail.com', '[\"ROLE_USER\"]', '$2y$13$xK5At7.IgFmj7BWrGLdi..L6MwQZiUJ4KOFP/sZ.c.2dAnJaqzTHq'),
(17, 'bilglge@gmail.com', '[\"ROLE_USER\"]', '$2y$13$bMjhi9X4L6eOIbbeNqxrWODDTigLt0PjFupnIt1gRTyaHZNk5iunO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_attraction`
--
ALTER TABLE `ad_attraction`
  ADD PRIMARY KEY (`ad_id`,`attraction_id`),
  ADD KEY `IDX_2A8AB5024F34D596` (`ad_id`),
  ADD KEY `IDX_2A8AB5023C216F9D` (`attraction_id`);

--
-- Indexes for table `ad_county`
--
ALTER TABLE `ad_county`
  ADD PRIMARY KEY (`ad_id`,`county_id`),
  ADD KEY `IDX_C50DE8D04F34D596` (`ad_id`),
  ADD KEY `IDX_C50DE8D085E73F45` (`county_id`);

--
-- Indexes for table `ad_sub_category`
--
ALTER TABLE `ad_sub_category`
  ADD PRIMARY KEY (`ad_id`,`sub_category_id`),
  ADD KEY `IDX_50AB4E6D4F34D596` (`ad_id`),
  ADD KEY `IDX_50AB4E6DF7BFE87C` (`sub_category_id`);

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attraction_county`
--
ALTER TABLE `attraction_county`
  ADD PRIMARY KEY (`attraction_id`,`county_id`),
  ADD KEY `IDX_247CD2853C216F9D` (`attraction_id`),
  ADD KEY `IDX_247CD28585E73F45` (`county_id`);

--
-- Indexes for table `attraction_sub_category`
--
ALTER TABLE `attraction_sub_category`
  ADD PRIMARY KEY (`attraction_id`,`sub_category_id`),
  ADD KEY `IDX_9CDA0A603C216F9D` (`attraction_id`),
  ADD KEY `IDX_9CDA0A60F7BFE87C` (`sub_category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D5B0234F92F3E70` (`country_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`),
  ADD KEY `IDX_9474526C3C216F9D` (`attraction_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_58E2FF258BAC62AF` (`city_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_attraction`
--
ALTER TABLE `location_attraction`
  ADD PRIMARY KEY (`location_id`,`attraction_id`),
  ADD KEY `IDX_6C2BE76764D218E` (`location_id`),
  ADD KEY `IDX_6C2BE7673C216F9D` (`attraction_id`);

--
-- Indexes for table `location_user`
--
ALTER TABLE `location_user`
  ADD PRIMARY KEY (`location_id`,`user_id`),
  ADD KEY `IDX_D97630964D218E` (`location_id`),
  ADD KEY `IDX_D976309A76ED395` (`user_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_county`
--
ALTER TABLE `service_county`
  ADD PRIMARY KEY (`service_id`,`county_id`),
  ADD KEY `IDX_6625FA13ED5CA9E6` (`service_id`),
  ADD KEY `IDX_6625FA1385E73F45` (`county_id`);

--
-- Indexes for table `service_sub_category`
--
ALTER TABLE `service_sub_category`
  ADD PRIMARY KEY (`service_id`,`sub_category_id`),
  ADD KEY `IDX_634F827DED5CA9E6` (`service_id`),
  ADD KEY `IDX_634F827DF7BFE87C` (`sub_category_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BCE3F79812469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attraction`
--
ALTER TABLE `attraction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad_attraction`
--
ALTER TABLE `ad_attraction`
  ADD CONSTRAINT `FK_2A8AB5023C216F9D` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2A8AB5024F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ad_county`
--
ALTER TABLE `ad_county`
  ADD CONSTRAINT `FK_C50DE8D04F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C50DE8D085E73F45` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ad_sub_category`
--
ALTER TABLE `ad_sub_category`
  ADD CONSTRAINT `FK_50AB4E6D4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_50AB4E6DF7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attraction_county`
--
ALTER TABLE `attraction_county`
  ADD CONSTRAINT `FK_247CD2853C216F9D` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_247CD28585E73F45` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attraction_sub_category`
--
ALTER TABLE `attraction_sub_category`
  ADD CONSTRAINT `FK_9CDA0A603C216F9D` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9CDA0A60F7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C3C216F9D` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `county`
--
ALTER TABLE `county`
  ADD CONSTRAINT `FK_58E2FF258BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `location_attraction`
--
ALTER TABLE `location_attraction`
  ADD CONSTRAINT `FK_6C2BE7673C216F9D` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6C2BE76764D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_user`
--
ALTER TABLE `location_user`
  ADD CONSTRAINT `FK_D97630964D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D976309A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `service_county`
--
ALTER TABLE `service_county`
  ADD CONSTRAINT `FK_6625FA1385E73F45` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6625FA13ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_sub_category`
--
ALTER TABLE `service_sub_category`
  ADD CONSTRAINT `FK_634F827DED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_634F827DF7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `FK_BCE3F79812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
