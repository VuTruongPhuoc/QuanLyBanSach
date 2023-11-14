-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 24, 2022 lúc 01:37 AM
-- Phiên bản máy phục vụ: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_book`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `districtid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`districtid`, `name`, `provinceid`) VALUES
('001HH', 'Quận Ba Đình', '01TTT'),
('002HH', 'Quận Hoàn Kiếm', '01TTT'),
('003HH', 'Quận Tây Hồ', '01TTT'),
('004HH', 'Quận Long Biên', '01TTT'),
('005HH', 'Quận Cầu Giấy', '01TTT'),
('006HH', 'Quận Đống Đa', '01TTT'),
('007HH', 'Quận Hai Bà Trưng', '01TTT'),
('008HH', 'Quận Hoàng Mai', '01TTT'),
('009HH', 'Quận Thanh Xuân', '01TTT'),
('016HH', 'Huyện Sóc Sơn', '01TTT'),
('017HH', 'Huyện Đông Anh', '01TTT'),
('018HH', 'Huyện Gia Lâm', '01TTT'),
('019HH', 'Quận Nam Từ Liêm', '01TTT'),
('020HH', 'Huyện Thanh Trì', '01TTT'),
('021HH', 'Quận Bắc Từ Liêm', '01TTT'),
('024HH', 'Thành phố Hà Giang', '02TTT'),
('026HH', 'Huyện Đồng Văn', '02TTT'),
('027HH', 'Huyện Mèo Vạc', '02TTT'),
('028HH', 'Huyện Yên Minh', '02TTT'),
('029HH', 'Huyện Quản Bạ', '02TTT'),
('030HH', 'Huyện Vị Xuyên', '02TTT'),
('031HH', 'Huyện Bắc Mê', '02TTT'),
('032HH', 'Huyện Hoàng Su Phì', '02TTT'),
('033HH', 'Huyện Xín Mần', '02TTT'),
('034HH', 'Huyện Bắc Quang', '02TTT'),
('035HH', 'Huyện Quang Bình', '02TTT'),
('040HH', 'Thành phố Cao Bằng', '04TTT'),
('042HH', 'Huyện Bảo Lâm', '04TTT'),
('043HH', 'Huyện Bảo Lạc', '04TTT'),
('044HH', 'Huyện Thông Nông', '04TTT'),
('045HH', 'Huyện Hà Quảng', '04TTT'),
('046HH', 'Huyện Trà Lĩnh', '04TTT'),
('047HH', 'Huyện Trùng Khánh', '04TTT'),
('048HH', 'Huyện Hạ Lang', '04TTT'),
('049HH', 'Huyện Quảng Uyên', '04TTT'),
('050HH', 'Huyện Phục Hòa', '04TTT'),
('051HH', 'Huyện Hòa An', '04TTT'),
('052HH', 'Huyện Nguyên Bình', '04TTT'),
('053HH', 'Huyện Thạch An', '04TTT'),
('058HH', 'Thành Phố Bắc Kạn', '06TTT'),
('060HH', 'Huyện Pác Nặm', '06TTT'),
('061HH', 'Huyện Ba Bể', '06TTT'),
('062HH', 'Huyện Ngân Sơn', '06TTT'),
('063HH', 'Huyện Bạch Thông', '06TTT'),
('064HH', 'Huyện Chợ Đồn', '06TTT'),
('065HH', 'Huyện Chợ Mới', '06TTT'),
('066HH', 'Huyện Na Rì', '06TTT'),
('070HH', 'Thành phố Tuyên Quang', '08TTT'),
('071HH', 'Huyện Lâm Bình', '08TTT'),
('072HH', 'Huyện Na Hang', '08TTT'),
('073HH', 'Huyện Chiêm Hóa', '08TTT'),
('074HH', 'Huyện Hàm Yên', '08TTT'),
('075HH', 'Huyện Yên Sơn', '08TTT'),
('076HH', 'Huyện Sơn Dương', '08TTT'),
('080HH', 'Thành phố Lào Cai', '10TTT'),
('082HH', 'Huyện Bát Xát', '10TTT'),
('083HH', 'Huyện Mường Khương', '10TTT'),
('084HH', 'Huyện Si Ma Cai', '10TTT'),
('085HH', 'Huyện Bắc Hà', '10TTT'),
('086HH', 'Huyện Bảo Thắng', '10TTT'),
('087HH', 'Huyện Bảo Yên', '10TTT'),
('088HH', 'Huyện Sa Pa', '10TTT'),
('089HH', 'Huyện Văn Bàn', '10TTT'),
('094HH', 'Thành phố Điện Biên Phủ', '11TTT'),
('095HH', 'Thị Xã Mường Lay', '11TTT'),
('096HH', 'Huyện Mường Nhé', '11TTT'),
('097HH', 'Huyện Mường Chà', '11TTT'),
('098HH', 'Huyện Tủa Chùa', '11TTT'),
('099HH', 'Huyện Tuần Giáo', '11TTT'),
('100HH', 'Huyện Điện Biên', '11TTT'),
('101HH', 'Huyện Điện Biên Đông', '11TTT'),
('102HH', 'Huyện Mường Ảng', '11TTT'),
('103HH', 'Huyện Nậm Pồ', '11TTT'),
('105HH', 'Thành phố Lai Châu', '12TTT'),
('106HH', 'Huyện Tam Đường', '12TTT'),
('107HH', 'Huyện Mường Tè', '12TTT'),
('108HH', 'Huyện Sìn Hồ', '12TTT'),
('109HH', 'Huyện Phong Thổ', '12TTT'),
('110HH', 'Huyện Than Uyên', '12TTT'),
('111HH', 'Huyện Tân Uyên', '12TTT'),
('112HH', 'Huyện Nậm Nhùn', '12TTT'),
('116HH', 'Thành phố Sơn La', '14TTT'),
('118HH', 'Huyện Quỳnh Nhai', '14TTT'),
('119HH', 'Huyện Thuận Châu', '14TTT'),
('120HH', 'Huyện Mường La', '14TTT'),
('121HH', 'Huyện Bắc Yên', '14TTT'),
('122HH', 'Huyện Phù Yên', '14TTT'),
('123HH', 'Huyện Mộc Châu', '14TTT'),
('124HH', 'Huyện Yên Châu', '14TTT'),
('125HH', 'Huyện Mai Sơn', '14TTT'),
('126HH', 'Huyện Sông Mã', '14TTT'),
('127HH', 'Huyện Sốp Cộp', '14TTT'),
('128HH', 'Huyện Vân Hồ', '14TTT'),
('132HH', 'Thành phố Yên Bái', '15TTT'),
('133HH', 'Thị xã Nghĩa Lộ', '15TTT'),
('135HH', 'Huyện Lục Yên', '15TTT'),
('136HH', 'Huyện Văn Yên', '15TTT'),
('137HH', 'Huyện Mù Căng Chải', '15TTT'),
('138HH', 'Huyện Trấn Yên', '15TTT'),
('139HH', 'Huyện Trạm Tấu', '15TTT'),
('140HH', 'Huyện Văn Chấn', '15TTT'),
('141HH', 'Huyện Yên Bình', '15TTT'),
('148HH', 'Thành phố Hòa Bình', '17TTT'),
('150HH', 'Huyện Đà Bắc', '17TTT'),
('151HH', 'Huyện Kỳ Sơn', '17TTT'),
('152HH', 'Huyện Lương Sơn', '17TTT'),
('153HH', 'Huyện Kim Bôi', '17TTT'),
('154HH', 'Huyện Cao Phong', '17TTT'),
('155HH', 'Huyện Tân Lạc', '17TTT'),
('156HH', 'Huyện Mai Châu', '17TTT'),
('157HH', 'Huyện Lạc Sơn', '17TTT'),
('158HH', 'Huyện Yên Thủy', '17TTT'),
('159HH', 'Huyện Lạc Thủy', '17TTT'),
('164HH', 'Thành phố Thái Nguyên', '19TTT'),
('165HH', 'Thành phố Sông Công', '19TTT'),
('167HH', 'Huyện Định Hóa', '19TTT'),
('168HH', 'Huyện Phú Lương', '19TTT'),
('169HH', 'Huyện Đồng Hỷ', '19TTT'),
('170HH', 'Huyện Võ Nhai', '19TTT'),
('171HH', 'Huyện Đại Từ', '19TTT'),
('172HH', 'Thị xã Phổ Yên', '19TTT'),
('173HH', 'Huyện Phú Bình', '19TTT'),
('178HH', 'Thành phố Lạng Sơn', '20TTT'),
('180HH', 'Huyện Tràng Định', '20TTT'),
('181HH', 'Huyện Bình Gia', '20TTT'),
('182HH', 'Huyện Văn Lãng', '20TTT'),
('183HH', 'Huyện Cao Lộc', '20TTT'),
('184HH', 'Huyện Văn Quan', '20TTT'),
('185HH', 'Huyện Bắc Sơn', '20TTT'),
('186HH', 'Huyện Hữu Lũng', '20TTT'),
('187HH', 'Huyện Chi Lăng', '20TTT'),
('188HH', 'Huyện Lộc Bình', '20TTT'),
('189HH', 'Huyện Đình Lập', '20TTT'),
('193HH', 'Thành phố Hạ Long', '22TTT'),
('194HH', 'Thành phố Móng Cái', '22TTT'),
('195HH', 'Thành phố Cẩm Phả', '22TTT'),
('196HH', 'Thành phố Uông Bí', '22TTT'),
('198HH', 'Huyện Bình Liêu', '22TTT'),
('199HH', 'Huyện Tiên Yên', '22TTT'),
('200HH', 'Huyện Đầm Hà', '22TTT'),
('201HH', 'Huyện Hải Hà', '22TTT'),
('202HH', 'Huyện Ba Chẽ', '22TTT'),
('203HH', 'Huyện Vân Đồn', '22TTT'),
('204HH', 'Huyện Hoành Bồ', '22TTT'),
('205HH', 'Thị xã Đông Triều', '22TTT'),
('206HH', 'Thị xã Quảng Yên', '22TTT'),
('207HH', 'Huyện Cô Tô', '22TTT'),
('213HH', 'Thành phố Bắc Giang', '24TTT'),
('215HH', 'Huyện Yên Thế', '24TTT'),
('216HH', 'Huyện Tân Yên', '24TTT'),
('217HH', 'Huyện Lạng Giang', '24TTT'),
('218HH', 'Huyện Lục Nam', '24TTT'),
('219HH', 'Huyện Lục Ngạn', '24TTT'),
('220HH', 'Huyện Sơn Động', '24TTT'),
('221HH', 'Huyện Yên Dũng', '24TTT'),
('222HH', 'Huyện Việt Yên', '24TTT'),
('223HH', 'Huyện Hiệp Hòa', '24TTT'),
('227HH', 'Thành phố Việt Trì', '25TTT'),
('228HH', 'Thị xã Phú Thọ', '25TTT'),
('230HH', 'Huyện Đoan Hùng', '25TTT'),
('231HH', 'Huyện Hạ Hòa', '25TTT'),
('232HH', 'Huyện Thanh Ba', '25TTT'),
('233HH', 'Huyện Phù Ninh', '25TTT'),
('234HH', 'Huyện Yên Lập', '25TTT'),
('235HH', 'Huyện Cẩm Khê', '25TTT'),
('236HH', 'Huyện Tam Nông', '25TTT'),
('237HH', 'Huyện Lâm Thao', '25TTT'),
('238HH', 'Huyện Thanh Sơn', '25TTT'),
('239HH', 'Huyện Thanh Thuỷ', '25TTT'),
('240HH', 'Huyện Tân Sơn', '25TTT'),
('243HH', 'Thành phố Vĩnh Yên', '26TTT'),
('244HH', 'Thị xã Phúc Yên', '26TTT'),
('246HH', 'Huyện Lập Thạch', '26TTT'),
('247HH', 'Huyện Tam Dương', '26TTT'),
('248HH', 'Huyện Tam Đảo', '26TTT'),
('249HH', 'Huyện Bình Xuyên', '26TTT'),
('250HH', 'Huyện Mê Linh', '01TTT'),
('251HH', 'Huyện Yên Lạc', '26TTT'),
('252HH', 'Huyện Vĩnh Tường', '26TTT'),
('253HH', 'Huyện Sông Lô', '26TTT'),
('256HH', 'Thành phố Bắc Ninh', '27TTT'),
('258HH', 'Huyện Yên Phong', '27TTT'),
('259HH', 'Huyện Quế Võ', '27TTT'),
('260HH', 'Huyện Tiên Du', '27TTT'),
('261HH', 'Thị xã Từ Sơn', '27TTT'),
('262HH', 'Huyện Thuận Thành', '27TTT'),
('263HH', 'Huyện Gia Bình', '27TTT'),
('264HH', 'Huyện Lương Tài', '27TTT'),
('268HH', 'Quận Hà Đông', '01TTT'),
('269HH', 'Thị xã Sơn Tây', '01TTT'),
('271HH', 'Huyện Ba Vì', '01TTT'),
('272HH', 'Huyện Phúc Thọ', '01TTT'),
('273HH', 'Huyện Đan Phượng', '01TTT'),
('274HH', 'Huyện Hoài Đức', '01TTT'),
('275HH', 'Huyện Quốc Oai', '01TTT'),
('276HH', 'Huyện Thạch Thất', '01TTT'),
('277HH', 'Huyện Chương Mỹ', '01TTT'),
('278HH', 'Huyện Thanh Oai', '01TTT'),
('279HH', 'Huyện Thường Tín', '01TTT'),
('280HH', 'Huyện Phú Xuyên', '01TTT'),
('281HH', 'Huyện Ứng Hòa', '01TTT'),
('282HH', 'Huyện Mỹ Đức', '01TTT'),
('288HH', 'Thành phố Hải Dương', '30TTT'),
('290HH', 'Thị xã Chí Linh', '30TTT'),
('291HH', 'Huyện Nam Sách', '30TTT'),
('292HH', 'Huyện Kinh Môn', '30TTT'),
('293HH', 'Huyện Kim Thành', '30TTT'),
('294HH', 'Huyện Thanh Hà', '30TTT'),
('295HH', 'Huyện Cẩm Giàng', '30TTT'),
('296HH', 'Huyện Bình Giang', '30TTT'),
('297HH', 'Huyện Gia Lộc', '30TTT'),
('298HH', 'Huyện Tứ Kỳ', '30TTT'),
('299HH', 'Huyện Ninh Giang', '30TTT'),
('300HH', 'Huyện Thanh Miện', '30TTT'),
('303HH', 'Quận Hồng Bàng', '31TTT'),
('304HH', 'Quận Ngô Quyền', '31TTT'),
('305HH', 'Quận Lê Chân', '31TTT'),
('306HH', 'Quận Hải An', '31TTT'),
('307HH', 'Quận Kiến An', '31TTT'),
('308HH', 'Quận Đồ Sơn', '31TTT'),
('309HH', 'Quận Dương Kinh', '31TTT'),
('311HH', 'Huyện Thủy Nguyên', '31TTT'),
('312HH', 'Huyện An Dương', '31TTT'),
('313HH', 'Huyện An Lão', '31TTT'),
('314HH', 'Huyện Kiến Thuỵ', '31TTT'),
('315HH', 'Huyện Tiên Lãng', '31TTT'),
('316HH', 'Huyện Vĩnh Bảo', '31TTT'),
('317HH', 'Huyện Cát Hải', '31TTT'),
('318HH', 'Huyện Bạch Long Vĩ', '31TTT'),
('323HH', 'Thành phố Hưng Yên', '33TTT'),
('325HH', 'Huyện Văn Lâm', '33TTT'),
('326HH', 'Huyện Văn Giang', '33TTT'),
('327HH', 'Huyện Yên Mỹ', '33TTT'),
('328HH', 'Huyện Mỹ Hào', '33TTT'),
('329HH', 'Huyện Ân Thi', '33TTT'),
('330HH', 'Huyện Khoái Châu', '33TTT'),
('331HH', 'Huyện Kim Động', '33TTT'),
('332HH', 'Huyện Tiên Lữ', '33TTT'),
('333HH', 'Huyện Phù Cừ', '33TTT'),
('336HH', 'Thành phố Thái Bình', '34TTT'),
('338HH', 'Huyện Quỳnh Phụ', '34TTT'),
('339HH', 'Huyện Hưng Hà', '34TTT'),
('340HH', 'Huyện Đông Hưng', '34TTT'),
('341HH', 'Huyện Thái Thụy', '34TTT'),
('342HH', 'Huyện Tiền Hải', '34TTT'),
('343HH', 'Huyện Kiến Xương', '34TTT'),
('344HH', 'Huyện Vũ Thư', '34TTT'),
('347HH', 'Thành phố Phủ Lý', '35TTT'),
('349HH', 'Huyện Duy Tiên', '35TTT'),
('350HH', 'Huyện Kim Bảng', '35TTT'),
('351HH', 'Huyện Thanh Liêm', '35TTT'),
('352HH', 'Huyện Bình Lục', '35TTT'),
('353HH', 'Huyện Lý Nhân', '35TTT'),
('356HH', 'Thành phố Nam Định', '36TTT'),
('358HH', 'Huyện Mỹ Lộc', '36TTT'),
('359HH', 'Huyện Vụ Bản', '36TTT'),
('360HH', 'Huyện Ý Yên', '36TTT'),
('361HH', 'Huyện Nghĩa Hưng', '36TTT'),
('362HH', 'Huyện Nam Trực', '36TTT'),
('363HH', 'Huyện Trực Ninh', '36TTT'),
('364HH', 'Huyện Xuân Trường', '36TTT'),
('365HH', 'Huyện Giao Thủy', '36TTT'),
('366HH', 'Huyện Hải Hậu', '36TTT'),
('369HH', 'Thành phố Ninh Bình', '37TTT'),
('370HH', 'Thành phố Tam Điệp', '37TTT'),
('372HH', 'Huyện Nho Quan', '37TTT'),
('373HH', 'Huyện Gia Viễn', '37TTT'),
('374HH', 'Huyện Hoa Lư', '37TTT'),
('375HH', 'Huyện Yên Khánh', '37TTT'),
('376HH', 'Huyện Kim Sơn', '37TTT'),
('377HH', 'Huyện Yên Mô', '37TTT'),
('380HH', 'Thành phố Thanh Hóa', '38TTT'),
('381HH', 'Thị xã Bỉm Sơn', '38TTT'),
('382HH', 'Thành phố Sầm Sơn', '38TTT'),
('384HH', 'Huyện Mường Lát', '38TTT'),
('385HH', 'Huyện Quan Hóa', '38TTT'),
('386HH', 'Huyện Bá Thước', '38TTT'),
('387HH', 'Huyện Quan Sơn', '38TTT'),
('388HH', 'Huyện Lang Chánh', '38TTT'),
('389HH', 'Huyện Ngọc Lặc', '38TTT'),
('390HH', 'Huyện Cẩm Thủy', '38TTT'),
('391HH', 'Huyện Thạch Thành', '38TTT'),
('392HH', 'Huyện Hà Trung', '38TTT'),
('393HH', 'Huyện Vĩnh Lộc', '38TTT'),
('394HH', 'Huyện Yên Định', '38TTT'),
('395HH', 'Huyện Thọ Xuân', '38TTT'),
('396HH', 'Huyện Thường Xuân', '38TTT'),
('397HH', 'Huyện Triệu Sơn', '38TTT'),
('398HH', 'Huyện Thiệu Hóa', '38TTT'),
('399HH', 'Huyện Hoằng Hóa', '38TTT'),
('400HH', 'Huyện Hậu Lộc', '38TTT'),
('401HH', 'Huyện Nga Sơn', '38TTT'),
('402HH', 'Huyện Như Xuân', '38TTT'),
('403HH', 'Huyện Như Thanh', '38TTT'),
('404HH', 'Huyện Nông Cống', '38TTT'),
('405HH', 'Huyện Đông Sơn', '38TTT'),
('406HH', 'Huyện Quảng Xương', '38TTT'),
('407HH', 'Huyện Tĩnh Gia', '38TTT'),
('412HH', 'Thành phố Vinh', '40TTT'),
('413HH', 'Thị xã Cửa Lò', '40TTT'),
('414HH', 'Thị xã Thái Hòa', '40TTT'),
('415HH', 'Huyện Quế Phong', '40TTT'),
('416HH', 'Huyện Quỳ Châu', '40TTT'),
('417HH', 'Huyện Kỳ Sơn', '40TTT'),
('418HH', 'Huyện Tương Dương', '40TTT'),
('419HH', 'Huyện Nghĩa Đàn', '40TTT'),
('420HH', 'Huyện Quỳ Hợp', '40TTT'),
('421HH', 'Huyện Quỳnh Lưu', '40TTT'),
('422HH', 'Huyện Con Cuông', '40TTT'),
('423HH', 'Huyện Tân Kỳ', '40TTT'),
('424HH', 'Huyện Anh Sơn', '40TTT'),
('425HH', 'Huyện Diễn Châu', '40TTT'),
('426HH', 'Huyện Yên Thành', '40TTT'),
('427HH', 'Huyện Đô Lương', '40TTT'),
('428HH', 'Huyện Thanh Chương', '40TTT'),
('429HH', 'Huyện Nghi Lộc', '40TTT'),
('430HH', 'Huyện Nam Đàn', '40TTT'),
('431HH', 'Huyện Hưng Nguyên', '40TTT'),
('432HH', 'Thị xã Hoàng Mai', '40TTT'),
('436HH', 'Thành phố Hà Tĩnh', '42TTT'),
('437HH', 'Thị xã Hồng Lĩnh', '42TTT'),
('439HH', 'Huyện Hương Sơn', '42TTT'),
('440HH', 'Huyện Đức Thọ', '42TTT'),
('441HH', 'Huyện Vũ Quang', '42TTT'),
('442HH', 'Huyện Nghi Xuân', '42TTT'),
('443HH', 'Huyện Can Lộc', '42TTT'),
('444HH', 'Huyện Hương Khê', '42TTT'),
('445HH', 'Huyện Thạch Hà', '42TTT'),
('446HH', 'Huyện Cẩm Xuyên', '42TTT'),
('447HH', 'Huyện Kỳ Anh', '42TTT'),
('448HH', 'Huyện Lộc Hà', '42TTT'),
('449HH', 'Thị xã Kỳ Anh', '42TTT'),
('450HH', 'Thành Phố Đồng Hới', '44TTT'),
('452HH', 'Huyện Minh Hóa', '44TTT'),
('453HH', 'Huyện Tuyên Hóa', '44TTT'),
('454HH', 'Huyện Quảng Trạch', '44TTT'),
('455HH', 'Huyện Bố Trạch', '44TTT'),
('456HH', 'Huyện Quảng Ninh', '44TTT'),
('457HH', 'Huyện Lệ Thủy', '44TTT'),
('458HH', 'Thị xã Ba Đồn', '44TTT'),
('461HH', 'Thành phố Đông Hà', '45TTT'),
('462HH', 'Thị xã Quảng Trị', '45TTT'),
('464HH', 'Huyện Vĩnh Linh', '45TTT'),
('465HH', 'Huyện Hướng Hóa', '45TTT'),
('466HH', 'Huyện Gio Linh', '45TTT'),
('467HH', 'Huyện Đakrông', '45TTT'),
('468HH', 'Huyện Cam Lộ', '45TTT'),
('469HH', 'Huyện Triệu Phong', '45TTT'),
('470HH', 'Huyện Hải Lăng', '45TTT'),
('474HH', 'Thành phố Huế', '46TTT'),
('476HH', 'Huyện Phong Điền', '46TTT'),
('477HH', 'Huyện Quảng Điền', '46TTT'),
('478HH', 'Huyện Phú Vang', '46TTT'),
('479HH', 'Thị xã Hương Thủy', '46TTT'),
('480HH', 'Thị xã Hương Trà', '46TTT'),
('481HH', 'Huyện A Lưới', '46TTT'),
('482HH', 'Huyện Phú Lộc', '46TTT'),
('483HH', 'Huyện Nam Đông', '46TTT'),
('490HH', 'Quận Liên Chiểu', '48TTT'),
('491HH', 'Quận Thanh Khê', '48TTT'),
('492HH', 'Quận Hải Châu', '48TTT'),
('493HH', 'Quận Sơn Trà', '48TTT'),
('494HH', 'Quận Ngũ Hành Sơn', '48TTT'),
('495HH', 'Quận Cẩm Lệ', '48TTT'),
('497HH', 'Huyện Hòa Vang', '48TTT'),
('502HH', 'Thành phố Tam Kỳ', '49TTT'),
('503HH', 'Thành phố Hội An', '49TTT'),
('504HH', 'Huyện Tây Giang', '49TTT'),
('505HH', 'Huyện Đông Giang', '49TTT'),
('506HH', 'Huyện Đại Lộc', '49TTT'),
('507HH', 'Thị xã Điện Bàn', '49TTT'),
('508HH', 'Huyện Duy Xuyên', '49TTT'),
('509HH', 'Huyện Quế Sơn', '49TTT'),
('510HH', 'Huyện Nam Giang', '49TTT'),
('511HH', 'Huyện Phước Sơn', '49TTT'),
('512HH', 'Huyện Hiệp Đức', '49TTT'),
('513HH', 'Huyện Thăng Bình', '49TTT'),
('514HH', 'Huyện Tiên Phước', '49TTT'),
('515HH', 'Huyện Bắc Trà My', '49TTT'),
('516HH', 'Huyện Nam Trà My', '49TTT'),
('517HH', 'Huyện Núi Thành', '49TTT'),
('518HH', 'Huyện Phú Ninh', '49TTT'),
('519HH', 'Huyện Nông Sơn', '49TTT'),
('522HH', 'Thành phố Quảng Ngãi', '51TTT'),
('524HH', 'Huyện Bình Sơn', '51TTT'),
('525HH', 'Huyện Trà Bồng', '51TTT'),
('526HH', 'Huyện Tây Trà', '51TTT'),
('527HH', 'Huyện Sơn Tịnh', '51TTT'),
('528HH', 'Huyện Tư Nghĩa', '51TTT'),
('529HH', 'Huyện Sơn Hà', '51TTT'),
('530HH', 'Huyện Sơn Tây', '51TTT'),
('531HH', 'Huyện Minh Long', '51TTT'),
('532HH', 'Huyện Nghĩa Hành', '51TTT'),
('533HH', 'Huyện Mộ Đức', '51TTT'),
('534HH', 'Huyện Đức Phổ', '51TTT'),
('535HH', 'Huyện Ba Tơ', '51TTT'),
('536HH', 'Huyện Lý Sơn', '51TTT'),
('540HH', 'Thành phố Quy Nhơn', '52TTT'),
('542HH', 'Huyện An Lão', '52TTT'),
('543HH', 'Huyện Hoài Nhơn', '52TTT'),
('544HH', 'Huyện Hoài Ân', '52TTT'),
('545HH', 'Huyện Phù Mỹ', '52TTT'),
('546HH', 'Huyện Vĩnh Thạnh', '52TTT'),
('547HH', 'Huyện Tây Sơn', '52TTT'),
('548HH', 'Huyện Phù Cát', '52TTT'),
('549HH', 'Thị xã An Nhơn', '52TTT'),
('550HH', 'Huyện Tuy Phước', '52TTT'),
('551HH', 'Huyện Vân Canh', '52TTT'),
('555HH', 'Thành phố Tuy Hòa', '54TTT'),
('557HH', 'Thị xã Sông Cầu', '54TTT'),
('558HH', 'Huyện Đồng Xuân', '54TTT'),
('559HH', 'Huyện Tuy An', '54TTT'),
('560HH', 'Huyện Sơn Hòa', '54TTT'),
('561HH', 'Huyện Sông Hinh', '54TTT'),
('562HH', 'Huyện Tây Hòa', '54TTT'),
('563HH', 'Huyện Phú Hòa', '54TTT'),
('564HH', 'Huyện Đông Hòa', '54TTT'),
('568HH', 'Thành phố Nha Trang', '56TTT'),
('569HH', 'Thành phố Cam Ranh', '56TTT'),
('570HH', 'Huyện Cam Lâm', '56TTT'),
('571HH', 'Huyện Vạn Ninh', '56TTT'),
('572HH', 'Thị xã Ninh Hòa', '56TTT'),
('573HH', 'Huyện Khánh Vĩnh', '56TTT'),
('574HH', 'Huyện Diên Khánh', '56TTT'),
('575HH', 'Huyện Khánh Sơn', '56TTT'),
('576HH', 'Huyện Trường Sa', '56TTT'),
('582HH', 'Thành phố Phan Rang-Tháp Chàm', '58TTT'),
('584HH', 'Huyện Bác Ái', '58TTT'),
('585HH', 'Huyện Ninh Sơn', '58TTT'),
('586HH', 'Huyện Ninh Hải', '58TTT'),
('587HH', 'Huyện Ninh Phước', '58TTT'),
('588HH', 'Huyện Thuận Bắc', '58TTT'),
('589HH', 'Huyện Thuận Nam', '58TTT'),
('593HH', 'Thành phố Phan Thiết', '60TTT'),
('594HH', 'Thị xã La Gi', '60TTT'),
('595HH', 'Huyện Tuy Phong', '60TTT'),
('596HH', 'Huyện Bắc Bình', '60TTT'),
('597HH', 'Huyện Hàm Thuận Bắc', '60TTT'),
('598HH', 'Huyện Hàm Thuận Nam', '60TTT'),
('599HH', 'Huyện Tánh Linh', '60TTT'),
('600HH', 'Huyện Đức Linh', '60TTT'),
('601HH', 'Huyện Hàm Tân', '60TTT'),
('602HH', 'Huyện Phú Quí', '60TTT'),
('608HH', 'Thành phố Kon Tum', '62TTT'),
('610HH', 'Huyện Đắk Glei', '62TTT'),
('611HH', 'Huyện Ngọc Hồi', '62TTT'),
('612HH', 'Huyện Đắk Tô', '62TTT'),
('613HH', 'Huyện Kon Plông', '62TTT'),
('614HH', 'Huyện Kon Rẫy', '62TTT'),
('615HH', 'Huyện Đắk Hà', '62TTT'),
('616HH', 'Huyện Sa Thầy', '62TTT'),
('617HH', 'Huyện Tu Mơ Rông', '62TTT'),
('618HH', 'Huyện Ia H\' Drai', '62TTT'),
('622HH', 'Thành phố Pleiku', '64TTT'),
('623HH', 'Thị xã An Khê', '64TTT'),
('624HH', 'Thị xã Ayun Pa', '64TTT'),
('625HH', 'Huyện KBang', '64TTT'),
('626HH', 'Huyện Đăk Đoa', '64TTT'),
('627HH', 'Huyện Chư Păh', '64TTT'),
('628HH', 'Huyện Ia Grai', '64TTT'),
('629HH', 'Huyện Mang Yang', '64TTT'),
('630HH', 'Huyện Kông Chro', '64TTT'),
('631HH', 'Huyện Đức Cơ', '64TTT'),
('632HH', 'Huyện Chư Prông', '64TTT'),
('633HH', 'Huyện Chư Sê', '64TTT'),
('634HH', 'Huyện Đăk Pơ', '64TTT'),
('635HH', 'Huyện Ia Pa', '64TTT'),
('637HH', 'Huyện Krông Pa', '64TTT'),
('638HH', 'Huyện Phú Thiện', '64TTT'),
('639HH', 'Huyện Chư Pưh', '64TTT'),
('643HH', 'Thành phố Buôn Ma Thuột', '66TTT'),
('644HH', 'Thị Xã Buôn Hồ', '66TTT'),
('645HH', 'Huyện Ea H\'leo', '66TTT'),
('646HH', 'Huyện Ea Súp', '66TTT'),
('647HH', 'Huyện Buôn Đôn', '66TTT'),
('648HH', 'Huyện Cư M\'gar', '66TTT'),
('649HH', 'Huyện Krông Búk', '66TTT'),
('650HH', 'Huyện Krông Năng', '66TTT'),
('651HH', 'Huyện Ea Kar', '66TTT'),
('652HH', 'Huyện M\'Đrắk', '66TTT'),
('653HH', 'Huyện Krông Bông', '66TTT'),
('654HH', 'Huyện Krông Pắc', '66TTT'),
('655HH', 'Huyện Krông A Na', '66TTT'),
('656HH', 'Huyện Lắk', '66TTT'),
('657HH', 'Huyện Cư Kuin', '66TTT'),
('660HH', 'Thị xã Gia Nghĩa', '67TTT'),
('661HH', 'Huyện Đăk Glong', '67TTT'),
('662HH', 'Huyện Cư Jút', '67TTT'),
('663HH', 'Huyện Đắk Mil', '67TTT'),
('664HH', 'Huyện Krông Nô', '67TTT'),
('665HH', 'Huyện Đắk Song', '67TTT'),
('666HH', 'Huyện Đắk R\'Lấp', '67TTT'),
('667HH', 'Huyện Tuy Đức', '67TTT'),
('672HH', 'Thành phố Đà Lạt', '68TTT'),
('673HH', 'Thành phố Bảo Lộc', '68TTT'),
('674HH', 'Huyện Đam Rông', '68TTT'),
('675HH', 'Huyện Lạc Dương', '68TTT'),
('676HH', 'Huyện Lâm Hà', '68TTT'),
('677HH', 'Huyện Đơn Dương', '68TTT'),
('678HH', 'Huyện Đức Trọng', '68TTT'),
('679HH', 'Huyện Di Linh', '68TTT'),
('680HH', 'Huyện Bảo Lâm', '68TTT'),
('681HH', 'Huyện Đạ Huoai', '68TTT'),
('682HH', 'Huyện Đạ Tẻh', '68TTT'),
('683HH', 'Huyện Cát Tiên', '68TTT'),
('688HH', 'Thị xã Phước Long', '70TTT'),
('689HH', 'Thị xã Đồng Xoài', '70TTT'),
('690HH', 'Thị xã Bình Long', '70TTT'),
('691HH', 'Huyện Bù Gia Mập', '70TTT'),
('692HH', 'Huyện Lộc Ninh', '70TTT'),
('693HH', 'Huyện Bù Đốp', '70TTT'),
('694HH', 'Huyện Hớn Quản', '70TTT'),
('695HH', 'Huyện Đồng Phú', '70TTT'),
('696HH', 'Huyện Bù Đăng', '70TTT'),
('697HH', 'Huyện Chơn Thành', '70TTT'),
('698HH', 'Huyện Phú Riềng', '70TTT'),
('703HH', 'Thành phố Tây Ninh', '72TTT'),
('705HH', 'Huyện Tân Biên', '72TTT'),
('706HH', 'Huyện Tân Châu', '72TTT'),
('707HH', 'Huyện Dương Minh Châu', '72TTT'),
('708HH', 'Huyện Châu Thành', '72TTT'),
('709HH', 'Huyện Hòa Thành', '72TTT'),
('710HH', 'Huyện Gò Dầu', '72TTT'),
('711HH', 'Huyện Bến Cầu', '72TTT'),
('712HH', 'Huyện Trảng Bàng', '72TTT'),
('718HH', 'Thành phố Thủ Dầu Một', '74TTT'),
('719HH', 'Huyện Bàu Bàng', '74TTT'),
('720HH', 'Huyện Dầu Tiếng', '74TTT'),
('721HH', 'Thị xã Bến Cát', '74TTT'),
('722HH', 'Huyện Phú Giáo', '74TTT'),
('723HH', 'Thị xã Tân Uyên', '74TTT'),
('724HH', 'Thị xã Dĩ An', '74TTT'),
('725HH', 'Thị xã Thuận An', '74TTT'),
('726HH', 'Huyện Bắc Tân Uyên', '74TTT'),
('731HH', 'Thành phố Biên Hòa', '75TTT'),
('732HH', 'Thị xã Long Khánh', '75TTT'),
('734HH', 'Huyện Tân Phú', '75TTT'),
('735HH', 'Huyện Vĩnh Cửu', '75TTT'),
('736HH', 'Huyện Định Quán', '75TTT'),
('737HH', 'Huyện Trảng Bom', '75TTT'),
('738HH', 'Huyện Thống Nhất', '75TTT'),
('739HH', 'Huyện Cẩm Mỹ', '75TTT'),
('740HH', 'Huyện Long Thành', '75TTT'),
('741HH', 'Huyện Xuân Lộc', '75TTT'),
('742HH', 'Huyện Nhơn Trạch', '75TTT'),
('747HH', 'Thành phố Vũng Tàu', '77TTT'),
('748HH', 'Thành phố Bà Rịa', '77TTT'),
('750HH', 'Huyện Châu Đức', '77TTT'),
('751HH', 'Huyện Xuyên Mộc', '77TTT'),
('752HH', 'Huyện Long Điền', '77TTT'),
('753HH', 'Huyện Đất Đỏ', '77TTT'),
('754HH', 'Huyện Tân Thành', '77TTT'),
('755HH', 'Huyện Côn Đảo', '77TTT'),
('760HH', 'Quận 1', '79TTT'),
('761HH', 'Quận 12', '79TTT'),
('762HH', 'Quận Thủ Đức', '79TTT'),
('763HH', 'Quận 9', '79TTT'),
('764HH', 'Quận Gò Vấp', '79TTT'),
('765HH', 'Quận Bình Thạnh', '79TTT'),
('766HH', 'Quận Tân Bình', '79TTT'),
('767HH', 'Quận Tân Phú', '79TTT'),
('768HH', 'Quận Phú Nhuận', '79TTT'),
('769HH', 'Quận 2', '79TTT'),
('770HH', 'Quận 3', '79TTT'),
('771HH', 'Quận 10', '79TTT'),
('772HH', 'Quận 11', '79TTT'),
('773HH', 'Quận 4', '79TTT'),
('774HH', 'Quận 5', '79TTT'),
('775HH', 'Quận 6', '79TTT'),
('776HH', 'Quận 8', '79TTT'),
('777HH', 'Quận Bình Tân', '79TTT'),
('778HH', 'Quận 7', '79TTT'),
('783HH', 'Huyện Củ Chi', '79TTT'),
('784HH', 'Huyện Hóc Môn', '79TTT'),
('785HH', 'Huyện Bình Chánh', '79TTT'),
('786HH', 'Huyện Nhà Bè', '79TTT'),
('787HH', 'Huyện Cần Giờ', '79TTT'),
('794HH', 'Thành phố Tân An', '80TTT'),
('795HH', 'Thị xã Kiến Tường', '80TTT'),
('796HH', 'Huyện Tân Hưng', '80TTT'),
('797HH', 'Huyện Vĩnh Hưng', '80TTT'),
('798HH', 'Huyện Mộc Hóa', '80TTT'),
('799HH', 'Huyện Tân Thạnh', '80TTT'),
('800HH', 'Huyện Thạnh Hóa', '80TTT'),
('801HH', 'Huyện Đức Huệ', '80TTT'),
('802HH', 'Huyện Đức Hòa', '80TTT'),
('803HH', 'Huyện Bến Lức', '80TTT'),
('804HH', 'Huyện Thủ Thừa', '80TTT'),
('805HH', 'Huyện Tân Trụ', '80TTT'),
('806HH', 'Huyện Cần Đước', '80TTT'),
('807HH', 'Huyện Cần Giuộc', '80TTT'),
('808HH', 'Huyện Châu Thành', '80TTT'),
('815HH', 'Thành phố Mỹ Tho', '82TTT'),
('816HH', 'Thị xã Gò Công', '82TTT'),
('817HH', 'Thị xã Cai Lậy', '82TTT'),
('818HH', 'Huyện Tân Phước', '82TTT'),
('819HH', 'Huyện Cái Bè', '82TTT'),
('820HH', 'Huyện Cai Lậy', '82TTT'),
('821HH', 'Huyện Châu Thành', '82TTT'),
('822HH', 'Huyện Chợ Gạo', '82TTT'),
('823HH', 'Huyện Gò Công Tây', '82TTT'),
('824HH', 'Huyện Gò Công Đông', '82TTT'),
('825HH', 'Huyện Tân Phú Đông', '82TTT'),
('829HH', 'Thành phố Bến Tre', '83TTT'),
('831HH', 'Huyện Châu Thành', '83TTT'),
('832HH', 'Huyện Chợ Lách', '83TTT'),
('833HH', 'Huyện Mỏ Cày Nam', '83TTT'),
('834HH', 'Huyện Giồng Trôm', '83TTT'),
('835HH', 'Huyện Bình Đại', '83TTT'),
('836HH', 'Huyện Ba Tri', '83TTT'),
('837HH', 'Huyện Thạnh Phú', '83TTT'),
('838HH', 'Huyện Mỏ Cày Bắc', '83TTT'),
('842HH', 'Thành phố Trà Vinh', '84TTT'),
('844HH', 'Huyện Càng Long', '84TTT'),
('845HH', 'Huyện Cầu Kè', '84TTT'),
('846HH', 'Huyện Tiểu Cần', '84TTT'),
('847HH', 'Huyện Châu Thành', '84TTT'),
('848HH', 'Huyện Cầu Ngang', '84TTT'),
('849HH', 'Huyện Trà Cú', '84TTT'),
('850HH', 'Huyện Duyên Hải', '84TTT'),
('851HH', 'Thị xã Duyên Hải', '84TTT'),
('855HH', 'Thành phố Vĩnh Long', '86TTT'),
('857HH', 'Huyện Long Hồ', '86TTT'),
('858HH', 'Huyện Mang Thít', '86TTT'),
('859HH', 'Huyện Vũng Liêm', '86TTT'),
('860HH', 'Huyện Tam Bình', '86TTT'),
('861HH', 'Thị xã Bình Minh', '86TTT'),
('862HH', 'Huyện Trà Ôn', '86TTT'),
('863HH', 'Huyện Bình Tân', '86TTT'),
('866HH', 'Thành phố Cao Lãnh', '87TTT'),
('867HH', 'Thành phố Sa Đéc', '87TTT'),
('868HH', 'Thị xã Hồng Ngự', '87TTT'),
('869HH', 'Huyện Tân Hồng', '87TTT'),
('870HH', 'Huyện Hồng Ngự', '87TTT'),
('871HH', 'Huyện Tam Nông', '87TTT'),
('872HH', 'Huyện Tháp Mười', '87TTT'),
('873HH', 'Huyện Cao Lãnh', '87TTT'),
('874HH', 'Huyện Thanh Bình', '87TTT'),
('875HH', 'Huyện Lấp Vò', '87TTT'),
('876HH', 'Huyện Lai Vung', '87TTT'),
('877HH', 'Huyện Châu Thành', '87TTT'),
('883HH', 'Thành phố Long Xuyên', '89TTT'),
('884HH', 'Thành phố Châu Đốc', '89TTT'),
('886HH', 'Huyện An Phú', '89TTT'),
('887HH', 'Thị xã Tân Châu', '89TTT'),
('888HH', 'Huyện Phú Tân', '89TTT'),
('889HH', 'Huyện Châu Phú', '89TTT'),
('890HH', 'Huyện Tịnh Biên', '89TTT'),
('891HH', 'Huyện Tri Tôn', '89TTT'),
('892HH', 'Huyện Châu Thành', '89TTT'),
('893HH', 'Huyện Chợ Mới', '89TTT'),
('894HH', 'Huyện Thoại Sơn', '89TTT'),
('899HH', 'Thành phố Rạch Giá', '91TTT'),
('900HH', 'Thị xã Hà Tiên', '91TTT'),
('902HH', 'Huyện Kiên Lương', '91TTT'),
('903HH', 'Huyện Hòn Đất', '91TTT'),
('904HH', 'Huyện Tân Hiệp', '91TTT'),
('905HH', 'Huyện Châu Thành', '91TTT'),
('906HH', 'Huyện Giồng Riềng', '91TTT'),
('907HH', 'Huyện Gò Quao', '91TTT'),
('908HH', 'Huyện An Biên', '91TTT'),
('909HH', 'Huyện An Minh', '91TTT'),
('910HH', 'Huyện Vĩnh Thuận', '91TTT'),
('911HH', 'Huyện Phú Quốc', '91TTT'),
('912HH', 'Huyện Kiên Hải', '91TTT'),
('913HH', 'Huyện U Minh Thượng', '91TTT'),
('914HH', 'Huyện Giang Thành', '91TTT'),
('916HH', 'Quận Ninh Kiều', '92TTT'),
('917HH', 'Quận Ô Môn', '92TTT'),
('918HH', 'Quận Bình Thuỷ', '92TTT'),
('919HH', 'Quận Cái Răng', '92TTT'),
('923HH', 'Quận Thốt Nốt', '92TTT'),
('924HH', 'Huyện Vĩnh Thạnh', '92TTT'),
('925HH', 'Huyện Cờ Đỏ', '92TTT'),
('926HH', 'Huyện Phong Điền', '92TTT'),
('927HH', 'Huyện Thới Lai', '92TTT'),
('930HH', 'Thành phố Vị Thanh', '93TTT'),
('931HH', 'Thị xã Ngã Bảy', '93TTT'),
('932HH', 'Huyện Châu Thành A', '93TTT'),
('933HH', 'Huyện Châu Thành', '93TTT'),
('934HH', 'Huyện Phụng Hiệp', '93TTT'),
('935HH', 'Huyện Vị Thủy', '93TTT'),
('936HH', 'Huyện Long Mỹ', '93TTT'),
('937HH', 'Thị xã Long Mỹ', '93TTT'),
('941HH', 'Thành phố Sóc Trăng', '94TTT'),
('942HH', 'Huyện Châu Thành', '94TTT'),
('943HH', 'Huyện Kế Sách', '94TTT'),
('944HH', 'Huyện Mỹ Tú', '94TTT'),
('945HH', 'Huyện Cù Lao Dung', '94TTT'),
('946HH', 'Huyện Long Phú', '94TTT'),
('947HH', 'Huyện Mỹ Xuyên', '94TTT'),
('948HH', 'Thị xã Ngã Năm', '94TTT'),
('949HH', 'Huyện Thạnh Trị', '94TTT'),
('950HH', 'Thị xã Vĩnh Châu', '94TTT'),
('951HH', 'Huyện Trần Đề', '94TTT'),
('954HH', 'Thành phố Bạc Liêu', '95TTT'),
('956HH', 'Huyện Hồng Dân', '95TTT'),
('957HH', 'Huyện Phước Long', '95TTT'),
('958HH', 'Huyện Vĩnh Lợi', '95TTT'),
('959HH', 'Thị xã Giá Rai', '95TTT'),
('960HH', 'Huyện Đông Hải', '95TTT'),
('961HH', 'Huyện Hòa Bình', '95TTT'),
('964HH', 'Thành phố Cà Mau', '96TTT'),
('966HH', 'Huyện U Minh', '96TTT'),
('967HH', 'Huyện Thới Bình', '96TTT'),
('968HH', 'Huyện Trần Văn Thời', '96TTT'),
('969HH', 'Huyện Cái Nước', '96TTT'),
('970HH', 'Huyện Đầm Dơi', '96TTT'),
('971HH', 'Huyện Năm Căn', '96TTT'),
('972HH', 'Huyện Phú Tân', '96TTT'),
('973HH', 'Huyện Ngọc Hiển', '96TTT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(125, '2022_07_19_131522_create_banner_table', 1),
(180, '2014_10_12_000000_create_users_table', 2),
(181, '2014_10_12_100000_create_password_resets_table', 2),
(182, '2019_08_19_000000_create_failed_jobs_table', 2),
(183, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(184, '2022_07_04_063221_create_category_table', 2),
(185, '2022_07_04_063231_create_product_table', 2),
(186, '2022_07_04_063252_create_author_table', 2),
(187, '2022_07_10_112023_create_sub_category_table', 2),
(188, '2022_07_10_174346_create_publisher_table', 2),
(189, '2022_07_11_054022_create_size_table', 2),
(190, '2022_07_11_161708_create_discount_table', 2),
(191, '2022_07_18_180603_create_shipping_fee_table', 2),
(192, '2022_07_20_053022_create_table_banners_table', 2),
(193, '2022_07_23_043537_add_colums_into_user_table', 2),
(194, '2022_07_23_045147_orders_table_table', 2),
(195, '2022_07_23_045246_comments_table', 2),
(196, '2022_07_23_045334_order_details_table', 2),
(197, '2022_07_23_045423_saves_table', 2),
(198, '2022_07_23_045443_payments_table', 2),
(199, '2022_07_24_150454_add_colums_info_user_table', 3),
(200, '2022_08_01_023000_table_wishlist_table', 4),
(201, '2022_08_01_180831_add_columb_product_table', 5),
(202, '2022_08_01_181108_add_columb_table_wishlists', 6),
(203, '2022_08_01_181557_add_columb_2_table_wishlists', 7),
(204, '2022_08_01_185945_add_columb_ussers', 8),
(205, '2022_08_03_182007_add_columb_orders', 8),
(206, '2022_08_04_174630_add_columb_2_orders', 9),
(207, '2022_08_04_175419_add_columb_3_orders', 10),
(208, '2022_08_04_181409_add_columb_3_orders', 11),
(209, '2022_08_10_065337_delete_product', 12),
(210, '2022_08_10_082443_table_reviews_table', 13),
(211, '2022_08_10_082649_add_fk_review', 14),
(212, '2022_08_10_083134_add_fkw_review', 15),
(213, '2022_08_13_175256_add__product', 16),
(214, '2022_08_21_185536_add_fk_shipping', 17),
(215, '2022_08_22_153051_delete_products', 18),
(216, '2022_08_23_175807_add_fk_category', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
	`id` int(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`,`order_id`, `product_id`, `price`, `quantity`, `name`, `image`) VALUES
(1,20, 7, 120000, 2, 'Bao giờ hết ế?', 'img-01.jpg'),


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`provinceid`, `name`) VALUES
('01TTT', 'Thành phố Hà Nội'),
('02TTT', 'Tỉnh Hà Giang'),
('04TTT', 'Tỉnh Cao Bằng'),
('06TTT', 'Tỉnh Bắc Kạn'),
('08TTT', 'Tỉnh Tuyên Quang'),
('10TTT', 'Tỉnh Lào Cai'),
('11TTT', 'Tỉnh Điện Biên'),
('12TTT', 'Tỉnh Lai Châu'),
('14TTT', 'Tỉnh Sơn La'),
('15TTT', 'Tỉnh Yên Bái'),
('17TTT', 'Tỉnh Hòa Bình'),
('19TTT', 'Tỉnh Thái Nguyên'),
('20TTT', 'Tỉnh Lạng Sơn'),
('22TTT', 'Tỉnh Quảng Ninh'),
('24TTT', 'Tỉnh Bắc Giang'),
('25TTT', 'Tỉnh Phú Thọ'),
('26TTT', 'Tỉnh Vĩnh Phúc'),
('27TTT', 'Tỉnh Bắc Ninh'),
('30TTT', 'Tỉnh Hải Dương'),
('31TTT', 'Thành phố Hải Phòng'),
('33TTT', 'Tỉnh Hưng Yên'),
('34TTT', 'Tỉnh Thái Bình'),
('35TTT', 'Tỉnh Hà Nam'),
('36TTT', 'Tỉnh Nam Định'),
('37TTT', 'Tỉnh Ninh Bình'),
('38TTT', 'Tỉnh Thanh Hóa'),
('40TTT', 'Tỉnh Nghệ An'),
('42TTT', 'Tỉnh Hà Tĩnh'),
('44TTT', 'Tỉnh Quảng Bình'),
('45TTT', 'Tỉnh Quảng Trị'),
('46TTT', 'Tỉnh Thừa Thiên Huế'),
('48TTT', 'Thành phố Đà Nẵng'),
('49TTT', 'Tỉnh Quảng Nam'),
('51TTT', 'Tỉnh Quảng Ngãi'),
('52TTT', 'Tỉnh Bình Định'),
('54TTT', 'Tỉnh Phú Yên'),
('56TTT', 'Tỉnh Khánh Hòa'),
('58TTT', 'Tỉnh Ninh Thuận'),
('60TTT', 'Tỉnh Bình Thuận'),
('62TTT', 'Tỉnh Kon Tum'),
('64TTT', 'Tỉnh Gia Lai'),
('66TTT', 'Tỉnh Đắk Lắk'),
('67TTT', 'Tỉnh Đắk Nông'),
('68TTT', 'Tỉnh Lâm Đồng'),
('70TTT', 'Tỉnh Bình Phước'),
('72TTT', 'Tỉnh Tây Ninh'),
('74TTT', 'Tỉnh Bình Dương'),
('75TTT', 'Tỉnh Đồng Nai'),
('77TTT', 'Tỉnh Bà Rịa - Vũng Tàu'),
('79TTT', 'Thành phố Hồ Chí Minh'),
('80TTT', 'Tỉnh Long An'),
('82TTT', 'Tỉnh Tiền Giang'),
('83TTT', 'Tỉnh Bến Tre'),
('84TTT', 'Tỉnh Trà Vinh'),
('86TTT', 'Tỉnh Vĩnh Long'),
('87TTT', 'Tỉnh Đồng Tháp'),
('89TTT', 'Tỉnh An Giang'),
('91TTT', 'Tỉnh Kiên Giang'),
('92TTT', 'Thành phố Cần Thơ'),
('93TTT', 'Tỉnh Hậu Giang'),
('94TTT', 'Tỉnh Sóc Trăng'),
('95TTT', 'Tỉnh Bạc Liêu'),
('96TTT', 'Tỉnh Cà Mau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_author`
--

CREATE TABLE `table_author` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_author`
--

INSERT INTO `table_author` (`id`, `name`, `author_image`, `description`, `view_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Tuân', 'nguyen-tuan.jpg', 'Nguyễn Tuân (10 tháng 7 năm 1910 – 28 tháng 7 năm 1987) là một nhà văn người Việt Nam.\r\n\r\nNguyễn Tuân có sở trường về tùy bút và ký. Ông viết văn với một phong cách tài hoa uyên bác và được xem là bậc thầy trong việc sáng tạo và sử dụng tiếng Việt. Các tác phẩm của Nguyễn Tuân luôn thể hiện phong cách độc đáo, tài hoa, sự hiểu biết phong phú trong nhiều lĩnh vực và vốn ngôn ngữ giàu có, điêu luyện. Sách giáo khoa hiện hành xếp ông vào một trong 9 tác giả tiêu biểu của văn học Việt Nam hiện đại.', 4, 1, '2022-07-24 05:27:56', '2022-08-10 03:18:26'),
(2, 'taolathanh', 'download.jpeg', 'Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore tolore magna aliqua enim ad minim veniam, quis nostrud exercitation ullamcoiars nisi ut aliquip commodo.', 0, 1, '2022-07-26 09:48:56', '2022-08-09 23:13:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_banners`
--

CREATE TABLE `table_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_banners`
--

INSERT INTO `table_banners` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'banner 2', 'banner2.jpg', 1, '2022-07-24 05:23:55', '2022-08-09 23:12:42'),
(5, 'dev dev', '1660338322banner1.jpg', 1, '2022-08-12 14:05:22', '2022-08-12 14:05:22'),
(12, 'taolathanh', '16603632526HHNAJ7E.jpg', 0, '2022-08-12 21:00:52', '2022-08-12 21:00:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_category`
--

CREATE TABLE `table_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_category`
--

INSERT INTO `table_category` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sách trong nước', 'Sách trong nuớc', 1, '2022-07-24 05:24:51', '2022-07-24 05:24:51'),
(2, 'Sách nước ngoài', 'Sách nuớc ngoài', 1, '2022-07-24 05:25:05', '2022-07-24 05:25:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_discount`
--

CREATE TABLE `table_discount` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_discount`
--

INSERT INTO `table_discount` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sale 30%', 'Sale 30%', 30, 1, '2022-08-09 23:14:51', '2022-08-09 23:15:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_orders`
--

CREATE TABLE `table_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(20) UNSIGNED DEFAULT NULL,
  `payment_id` int(20) UNSIGNED DEFAULT NULL,
  `shipping_id` int(20) UNSIGNED DEFAULT NULL,
  `order_status` int(1) DEFAULT 1,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneReceiver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameReceiver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_orders`
--

INSERT INTO `table_orders` (`id`, `user_id`, `payment_id`, `shipping_id`, `order_status`, `shipping_address`, `phoneReceiver`, `nameReceiver`, `created_at`, `updated_at`) VALUES
(18, 8, 1, 4, 2, 'ádssdss,Huyện Trà Lĩnh,Tỉnh Cao Bằng', '355668062', 'Hongan', '2022-08-22 09:27:00', '2022-08-23 09:33:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_payments`
--

CREATE TABLE `table_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_payments`
--

INSERT INTO `table_payments` (`id`, `status`, `type`, `amount`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Hoàn thành', 'Thanh toán khi nhận hàng', 1, NULL, NULL, NULL),
(2, 'Hoàn thành', 'Thanh toán tại cửa hàng', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product`
--

CREATE TABLE `table_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `publisher_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity_page` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `weight` double(4,2) NOT NULL,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_product`
--

INSERT INTO `table_product` (`id`, `code`, `sub_category_id`, `author_id`, `publisher_id`, `size_id`, `discount_id`, `name`, `short_description`, `long_description`, `quantity`, `price`, `image`, `quantity_page`, `status`, `weight`, `view_count`, `created_at`, `updated_at`, `sale`, `size`) VALUES
(7, 'S001', 1, 2, 1, NULL, NULL, 'Bao giờ hết ế?', '<p>ko</p>', '<p>ko</p>', 1231, '120000', 'img-01.jpg', 232, 0, 1.30, 11, '2022-08-22 09:26:13', '2022-08-23 11:20:01', NULL, '120x120 cm'),
(8, 'S123', 2, 1, 1, NULL, NULL, 'Mèo và chuột', '<p>h&igrave; k c&oacute;</p>', '<p>h&igrave; k c&oacute;</p>', 1232, '120000', 'img-05.jpg', 232, 1, 1.30, 2, '2022-08-23 11:20:44', '2022-08-23 11:37:07', 30, '120x120 cm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_publisher`
--

CREATE TABLE `table_publisher` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `view_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_publisher`
--

INSERT INTO `table_publisher` (`id`, `name`, `description`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(1, 'Kim Đồng', 'Kim Đồng', 1, 0, '2022-07-24 05:27:18', '2022-07-24 05:27:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_reviews`
--

CREATE TABLE `table_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_reviews`
--

INSERT INTO `table_reviews` (`id`, `user_id`, `product_id`, `comment`, `rate`, `created_at`, `updated_at`) VALUES
(6, 8, 7, 'sdsada', 4, '2022-08-23 09:40:18', '2022-08-23 09:40:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_shipping_fee`
--

CREATE TABLE `table_shipping_fee` (
  `id` int(20) UNSIGNED NOT NULL,
  `provinceid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_shipping_fee`
--

INSERT INTO `table_shipping_fee` (`id`, `provinceid`, `name`, `price`, `created_at`, `updated_at`) VALUES
(4, '01TTT', 'Phí Nội Thành', '12000', NULL, NULL),
(5, '0', 'Phí Ngoại Thành', '30000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_size`
--

CREATE TABLE `table_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_sub_category`
--

CREATE TABLE `table_sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_sub_category`
--

INSERT INTO `table_sub_category` (`id`, `category_id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tình yêu', 'Tình yêu', 1, '2022-07-24 05:25:22', '2022-07-24 05:25:22'),
(2, 2, 'Ngụ ngôn', 'Ngụ ngôn', 1, '2022-07-24 05:26:18', '2022-07-24 05:26:18'),
(3, 1, 'Văn học', '<p>Văn học</p>', 1, '2022-07-24 05:26:44', '2022-08-12 22:49:18'),
(5, 1, 'Tiểu Thuyết', '<p>sssss</p>', 1, '2022-08-23 11:07:30', '2022-08-23 11:10:24'),
(6, 1, 'Ngôn tình', '<p>sssss</p>', 1, '2022-08-23 11:07:40', '2022-08-23 11:10:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_wishlists`
--

CREATE TABLE `table_wishlists` (
  `wish_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_wishlists`
--

INSERT INTO `table_wishlists` (`wish_id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 8, 7, '2022-08-23 09:22:34', '2022-08-23 09:22:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT 0 COMMENT '0:customer, 1:mod, 2:admin',
  `block` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'true:block',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'true:delete',
  `province_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `level`, `block`, `deleted`, `province_id`, `district_id`) VALUES
(2, 'admin11', 'admin@gmail.com', NULL, '$2y$10$7VdSC4ZhQ.cqUlk8Z6RsWeyk/qMuYO6wlwEknm4q.Hg8NtHtelzCC', NULL, '2022-07-24 11:47:52', '2022-07-24 11:47:52', 355668062, 'Đồng Nhân', 2, 0, 0, '01TTT', '006HH'),
(13, 'adminphuoc, 'admin20002@gmail.com', NULL, 'phuoc123', NULL, '2022-08-26 13:32:47', '2022-08-26 13:32:47', 234234234, 'hai duong', 2, 0, 0, '01TTT', '001HH');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);


--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD UNIQUE KEY `province_provinceid_unique` (`provinceid`);

--
-- Chỉ mục cho bảng `table_author`
--
ALTER TABLE `table_author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_banners`
--
ALTER TABLE `table_banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);
--
-- Chỉ mục cho bảng `table_discount`
--
ALTER TABLE `table_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_orders`
--
ALTER TABLE `table_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_orders_user_id_foreign` (`user_id`),
  ADD KEY `table_orders_payment_id_foreign` (`payment_id`),
  ADD KEY `table_orders_shipping_id_foreign` (`shipping_id`);

--
-- Chỉ mục cho bảng `table_payments`
--
ALTER TABLE `table_payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_product_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `table_product_author_id_foreign` (`author_id`),
  ADD KEY `table_product_publisher_id_foreign` (`publisher_id`);

--
-- Chỉ mục cho bảng `table_publisher`
--
ALTER TABLE `table_publisher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_reviews`
--
ALTER TABLE `table_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_reviews_user_id_foreign` (`user_id`),
  ADD KEY `table_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `table_shipping_fee`
--
ALTER TABLE `table_shipping_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceid` (`provinceid`);

--
-- Chỉ mục cho bảng `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_sub_category`
--
ALTER TABLE `table_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_wishlists`
--
ALTER TABLE `table_wishlists`
  ADD PRIMARY KEY (`wish_id`),
  ADD KEY `table_wishlists_product_id_foreign` (`product_id`),
  ADD KEY `table_wishlists_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `table_author`
--
ALTER TABLE `table_author`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `table_banners`
--
ALTER TABLE `table_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `table_category`
--
ALTER TABLE `table_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `table_discount`
--
ALTER TABLE `table_discount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_orders`
--
ALTER TABLE `table_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `table_payments`
--
ALTER TABLE `table_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `table_publisher`
--
ALTER TABLE `table_publisher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_reviews`
--
ALTER TABLE `table_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `table_shipping_fee`
--
ALTER TABLE `table_shipping_fee`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `table_size`
--
ALTER TABLE `table_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `table_sub_category`
--
ALTER TABLE `table_sub_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `table_wishlists`
--
ALTER TABLE `table_wishlists`
  MODIFY `wish_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `table_orders`
--
ALTER TABLE `table_orders`
  ADD CONSTRAINT `table_orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `table_payments` (`id`),
  ADD CONSTRAINT `table_orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `table_shipping_fee` (`id`),
  ADD CONSTRAINT `table_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);


--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `table_orders` (`id`);
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `table_product` (`id`) ON DELETE CASCADE;
--
-- Các ràng buộc cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD CONSTRAINT `table_product_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `table_author` (`id`),
  ADD CONSTRAINT `table_product_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `table_discount` (`id`),
  ADD CONSTRAINT `table_product_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `table_publisher` (`id`),
  ADD CONSTRAINT `table_product_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `table_size` (`id`),
  ADD CONSTRAINT `table_product_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `table_sub_category` (`id`);

--
-- Các ràng buộc cho bảng `table_reviews`
--
ALTER TABLE `table_reviews`
  ADD CONSTRAINT `table_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `table_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `table_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `table_shipping_fee`
--
ALTER TABLE `table_shipping_fee`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`provinceid`) REFERENCES `province` (`provinceid`);

--
-- Các ràng buộc cho bảng `table_wishlists`
--
ALTER TABLE `table_wishlists`
  ADD CONSTRAINT `table_wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `table_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `table_wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


//add subtotal
alter table table_orders
add subtotal DECIMAL(20, 2);

//procedure update_subtotal
DELIMITER //
CREATE PROCEDURE Update_Subtotal()
BEGIN
    UPDATE table_orders o
    SET o.subtotal = (
        SELECT SUM(d.price * d.quantity)
        FROM order_details d
        WHERE d.order_id = o.id
    )
    WHERE o.order_status = 3;
END //
DELIMITER ;
