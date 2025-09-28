-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 06:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datvemaybay`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `ID_News` int(11) NOT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `AnhBaiViet` text DEFAULT NULL,
  `NgayDang` datetime DEFAULT NULL,
  `ID_TheLoai` int(11) DEFAULT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `Tag` text DEFAULT NULL,
  `AnHien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`ID_News`, `ID_User`, `AnhBaiViet`, `NgayDang`, `ID_TheLoai`, `TieuDe`, `MoTa`, `Tag`, `AnHien`) VALUES
(1093, 2029, 'B1.1.png', '2024-03-12 00:00:00', 4, 'Top những địa điểm độc đáo vui chơi tại Phú Quốc', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size: 16pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" red;=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Top những địa điểm độc đáo vui chơi tại Phú Quốc</span></b><span style=\"font-size: 16pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có\r\nthể đặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc\r\nsắc văn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.&nbsp;</span><span style=\"font-size: 13pt;\">Phú Quốc là hòn đảo lớn nhất Việt Nam với khí hậu ôn hòa được thiên\r\nnhiên ưu ái, nơi đây dần trở thành thiên đường nghỉ dưỡng của cả du khách trong\r\nvà ngoài nước.</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Không hoa lệ như Sài Gòn, cũng không cổ kính như Hà Nội, các địa điểm\r\ndu lịch Phú Quốc sẽ mang đến cho bạn vô vàn trải nghiệm thú vị. Sau đây,\r\nBaywithVAA sẽ mang đến một số địa điểm độc đáo, hấp dẫn:</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">1. Grand World Phú Quốc – Khám phá “Thành phố không ngủ”</span></b><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Grand World Phú Quốc nằm trong quần thể nghỉ dưỡng, giải trí đẳng cấp\r\nhàng đầu tại Việt Nam - Phú Quốc United Center. Tổ hợp vui chơi, mua sắm, giải\r\ntrí này thuộc địa phận Bãi Dài, xã Gành Dầu, Phú Quốc, Kiên Giang.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://homepage.momocdn.net/blogscontents/momo-upload-api-220506094323-637874270038773004.jpg\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Đến với Grand World, bạn sẽ được hòa mình vào bầu không khí tưng bừng,\r\nnáo nhiệt của \"Thành phố không ngủ\" với các hoạt động vui chơi diễn\r\nra 24/7. Không chỉ vậy, du khách còn được khám phá, tìm hiểu về nét đẹp truyền\r\nthống của dân tộc thông qua show diễn thực cảnh “Tinh hoa Việt Nam” đầy mãn\r\nnhãn.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://danviet.mediacdn.vn/296231569849192448/2021/12/7/phu-quoc-united-center-12pwow-16388647399281675236909.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Thư thả chèo thuyền trên “kênh đào Venice phiên bản Việt”, tham quan Bảo\r\nTàng Gấu Teddy hay chụp ảnh cùng rất nhiều tác phẩm nghệ thuật đương đại hiện\r\ndiện ở nơi đây đều là những ý tưởng được yêu thích. Show diễn Tinh Hoa Việt Nam\r\n- tái hiện giai đoạn đỉnh cao của văn hoá Việt Nam bằng các công nghệ trình diễn\r\ntân tiến nhất thế giới - sẽ mang đến cho bạn phút giây thăng hoa về cảm xúc đấy.&nbsp;&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">2. Hòn Đồi Mồi – Ngắm san hô đẹp bậc nhất Phú Quốc</span></b><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">- Hòn đảo nổi\r\ntiếng với sự phong phú sinh vật độc đáo tại Phú Quốc, nằm ở phía Tây đảo Phú Quốc,\r\nthuộc địa phận xã Gành Dầu, Phú Quốc, tỉnh Kiên Giang. Đây được xem là một\r\ntrong số ít những hòn đảo còn lưu giữ nét đẹp hoang sơ, mộc mạc và yên bình nhất\r\nhiện nay. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">- Cách Bãi\r\nDài chỉ 1km, Hòn Đồi Mồi là lựa chọn tuyệt vời để tổ chức những buổi tiệc BBQ\r\ntrên bãi biển, tham gia các hoạt động vui chơi và teambuilding thú vị cùng bạn\r\nbè và người thân.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://images2.thanhnien.vn/528068263637045248/2023/4/20/base64-16819801589181341558180.png\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">- Nằm sâu\r\ntrong vịnh Thái Lan, được biển bao bọc ở 4 phía nên khí hậu quanh năm khá ôn\r\nhòa, dễ chịu với mức nhiệt trung bình chỉ từ 25 – 27 độ C. Vì vậy, bạn có thể lựa\r\nchọn du lịch hòn đảo này vào bất kỳ thời điểm nào trong năm.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">- Trong đó,\r\ntừ tháng 10 đến tháng 3 năm sau là khoảng thời gian lý tưởng nhất cho mọi hoạt\r\nđộng tham quan, trải nghiệm bởi thời tiết lúc này vô cùng thuận lợi. Ngoài ra,\r\nbạn cũng có thể tận hưởng trọn vẹn khoảnh khắc ngắm hoàng hôn cực kỳ lãng mạn tại\r\nđảo Đồi Mồi vào thời điểm mặt trời lặn dần xuống biển (khoảng 16 – 18h hàng\r\nngày).</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://tourcantho.vn/wp-content/uploads/tour-lan-ngam-san-ho-phu-quoc-1-ngay.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Ngoài tắm biển, lặn biển cũng là một môn thể thao dưới nước vô cùng\r\nthú vị và được nhiều du khách yêu thích khi tới Phú Quốc. Trong đó, hòn Đồi Mồi\r\nvà hòn Thầy Bói được xem là hai địa điểm lặn ngắm san hô đẹp nhất tại nơi đây.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Các rạn san hô ở đảo Đồi Mồi rất phong phú với khoảng 17 loại cứng, mềm\r\nvà hải quỳ khác nhau. Du khách có thể tham gia lặn biển ngắm san hô rực rỡ sắc\r\nmàu cùng với hệ sinh thái biển còn nguyên sơ ngay cả khi không biết bơi.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Với sự hỗ trợ nhiệt tình của các huấn luyện viên cùng những trang thiết\r\nbị lặn hiện đại bao gồm: bộ đồ lặn, mặt nạ, kính, ống thông hơi, chân vịt,… chắc\r\nchắn sẽ giúp bạn có thêm nhiều trải nghiệm thú vị và an toàn.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">&nbsp;</span><b style=\"font-size: 1rem;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">3. Nhà Tù Phú Quốc – “Nghĩa địa tù binh”</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Nhà tù Phú Quốc (nhà lao Cây Dừa, trại giam Phú Quốc) khác nhà tù Côn\r\nĐảo và được ví như “địa ngục trần gian” vì đã giam cầm hàng nghìn tù nhân yêu\r\nnước. Khi đến đây, du khách sẽ được nhìn thấy, nghe thấy và cảm nhận được nỗi\r\nđau thể xác lẫn tinh thần của những tù binh dưới sự tra tấn vô cùng dã man của\r\nkẻ thù.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://motogo.vn/wp-content/uploads/2020/12/nha-tu-phu-quoc-1.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\"></span><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Là địa điểm tham quan nổi tiếng được nhiều du khách lựa chọn trong\r\nhành trình du lịch Phú Quốc. Khi đến đây, bạn sẽ được chứng kiến hơn 40 kiểu\r\ntra tấn được mô phỏng qua những mô hình tù nhân và cai ngục. Đồng thời, bạn sẽ\r\nthấy khâm phục sự kiên cường, bền bỉ của quân dân Việt Nam trước tội ác của đế\r\nquốc thực dân.&nbsp;</span><span style=\"color: rgb(28, 25, 23); font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">Nơi đây được bao quanh bởi hàng rào dây thép gai chằng chịt, phía trên\r\nlà dây điện và đèn trần chiếu sáng toàn trại để ngăn tù nhân trốn ngục. Bên cạnh\r\nđó, cửa bằng tôn thiếc, nền phòng giam được tráng xi măng, tránh tù nhân đào hầm\r\nbỏ trốn.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">- Nhà tù Phú Quốc là một bằng chứng “sống” ghi lại dấu vết tội ác vô\r\ncùng dã man và tàn bạo của chế độ thực dân, đế quốc xâm lược. Đồng thời, nơi\r\nđây cũng khiến du khách cảm nhận rõ nhất về lòng dũng cảm, tinh thần bất khuất,\r\nđấu tranh kiên cường của các chiến sĩ cách mạng quân ta.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\">\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:#212121\"=\"\"><o:p><br></o:p></span></p>', 'Phú Quốc', 1),
(1094, 2029, 'bbb.png', '2024-03-12 00:00:00', 6, 'Du lịch tham quan Quy Nhơn – Bình Định', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size:14.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" color:red\"=\"\">Du lịch tham quan Quy Nhơn – Bình Định<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">&nbsp;</span><span style=\"color: rgb(28, 25, 23); font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có\r\nthể đặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc\r\nsắc văn hóa Việt Nam Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Là một thành phố lớn\r\nven biển miền Trung Việt Nam, được xem là điểm đến mới nổi của khu vực Miền\r\nTrung nói chung và tỉnh Bình Định nói riêng, bởi vẻ hoang sơ, chưa được khai\r\nthác hết.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://puluongexcursions.com/wp-content/uploads/2023/05/du-lich-quy-nhon-thang-5-1.jpg\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Thành phố biển tỉnh\r\nBình Định với những đường bờ biển dài thơ mộng nằm uốn lượn nép mình bên cạnh\r\nnhững dãy núi xinh đẹp. Với đặc trưng phía trước là biển, phía sau là núi đã biến\r\nQuy Nhơn trở thành một trong những thành phố du lịch biển xinh đẹp nhất.</span><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">1. Eo Gió</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Eo Gió là một trong những\r\nđịa điểm du lịch Quy Nhơn được nhiều khách du lịch ghé qua nhất. Nằm cách trung\r\ntâm thành phố Quy Nhơn từ 20km tại xã Nhơn Lý.</span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">&nbsp;Là một khu vực eo biển\r\nnhỏ, nằm nép mình bên trong hai dãy núi hùng vĩ với cảnh quan thiên nhiên vô\r\ncùng xinh đẹp, cái tên Eo Gió cũng xuất phát từ đây.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/blog/2022/06/dia-diem-du-lich-quy-nhon-2-1024x683.jpg?tr=dpr-2,w-675\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Eo Gió sở hữu làn nước\r\nbiển trong xanh với thiên nhiên vô cùng tươi đẹp, tại đây còn có một con đường\r\nđi bộ với những cột rào chắn màu đỏ và cũng chính là địa điểm “check-in” vô\r\ncùng nổi tiếng. Thế nên nếu muốn sở hữu những tấm hình đẹp nhất khi đến Quy\r\nNhơn thì Eo Gió chính là cái tên đầu tiên mà bạn nên cân nhắc.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">2. Đồi cát Phương Mai<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Quy Nhơn chắc chắn\r\nkhông chỉ có biển, mà còn có những đồi cát cho chúng ta trải nghiệm. Địa điểm\r\ndu lịch Quy Nhơn thú vị tiếp theo mà bạn nên ghé qua chính là đồi cát Phương\r\nMai. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Nơi đây được mệnh danh\r\nlà “Sahara” của Quy Nhơn với những đồi cát rộng lớn đến hàng chục cây số, ta có\r\nthể tản bộ trên những đồi cát này, ngắm nhìn toàn cảnh thiên nhiên nơi đây.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://phuongtrang.vn/wp-content/uploads/2022/05/doi-cat-phuong-mai.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Đồi cát Phương Mai nằm\r\ntại độ cao 100m so với mực nước biển, nơi đây còn có những rừng cây dương xanh\r\nnên vô cùng mát mẻ. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Ghé thăm đồi cát thì dĩ\r\nnhiên không thể bỏ qua trò chơi thú vị là trượt cát rồi phải không nào. Nếu muốn\r\ntìm kiếm một địa điểm mới mẻ trừ các bãi biển thì nơi đây chính là địa điểm bạn\r\nnên ghé qua.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">3. Kỳ Co<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Kỳ Co là một địa điểm\r\ndu lịch Quy Nhơn nổi tiếng với thiên nhiên hoang sơ, hoàn toàn chưa bị các hoạt\r\nđộng dịch vụ du lịch làm phiền. <o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Biển Kỳ Co khác biệt so\r\nvới những bãi tắm khác là nơi đây có nhiều bãi cát vàng, dòng nước xanh trong,\r\nbên cạnh đó còn có nhiều núi đá nhấp nhô vô cùng thú vị.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/blog/2024/02/ky-co-2-1024x767.jpg?tr=dpr-2,w-675\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Một điều được nhiều du\r\nkhách ưa thích nữa là Kỳ Co là bãi ngang, nên sóng biển khá yếu và có thể an\r\ntâm tận hưởng. Khí hậu tại đây có đặc trưng là khá mát mẻ ôn hoà cộng với sự ưu\r\nđãi từ thiên nhiên nên rất phù hợp để tìm kiếm một điều gì đó mới mẻ.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">4. Cù Lao Xanh<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Cù Lao Xanh là một hải\r\nđảo giữ được cho mình vẻ hoang sơ, được xem là một “viên ngọc thô” chưa bị khai\r\nphá nên sẽ là địa điểm du lịch Quy Nhơn lý tưởng cho những ai thích khám phá.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/blog/2022/06/dia-diem-du-lich-quy-nhon-4.jpg?tr=dpr-2,w-675\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p>', 'Quy nhơn - Bình Định', 1),
(1095, 2029, 'B1.2.png', '2024-03-14 00:00:00', 5, 'Cẩm nang chia sẻ du lịch trải nghiệm tại Hạ Long', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam.&nbsp;</span><span style=\"font-size: 13pt;\">Mỗi bước chân đặt đến miền đất Việt\r\nlà một nét văn hóa mới đang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA\r\nkhám phá và cập nhập những tin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:red\"=\"\">&nbsp;</span></b><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Thành Phố Hạ Long thuộc\r\ntỉnh Quảng Ninh là một điểm du lịch nổi tiếng không chỉ của miền Bắc, toàn quốc\r\nmà trên khắp thế giới. Hạ Long có vịnh biển, có các di sản thế giới, các hoạt động\r\ndu lịch phong phú, đồ ăn ngon.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://static.vinwonders.com/2022/07/thang-7-nen-di-du-lich-o-dau-2-1.jpg\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Nằm ở miền Bắc nên khí\r\nhậu đủ 4 mùa. Các tháng 4-6 trời ấm không mưa, tháng 6-8 nắng nóng có thể có\r\nmưa bão, tháng 9-12 tiết trời mát dần và trở lạnh. Mỗi mùa ở đây lại có một vẻ\r\nđẹp riêng, mùa hè bạn tới Hạ Long bơi lội, tắm nắng thì mùa xuân, thu mát mẻ\r\nthích hợp để ngắm một Hạ Long bớt ồn ào hơn và tham gia các hoạt động ngoài trời\r\ncũng như khám phá các khu vui chơi giải trí.</span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Di chuyển: <o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Từ Hà Nội, du khách có\r\nthể di chuyển bằng nhiều phương tiện. Ngoài xe cá nhân, có xe Limousine đưa đón\r\ntận nơi theo yêu cầu (Phúc Xuyên, Vân Đồn Xanh, Hạ Long Travel...) giá vé\r\n180.000 - 220.000 đồng một người. Ngoài ra, bạn đón xe khách ở các bến trong\r\nthành phố Hà Nội. Giá xe khách khoảng 150.000 - 200.000 đồng một người.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Hướng di chuyển lý tưởng\r\nnhất là cao tốc Hà Nội - Hải Phòng, Hải Phòng - Hạ Long. Đường đẹp, song bạn cần\r\nchú ý quan sát biển báo, chạy đúng tốc độ, bật đèn tín hiệu khi chuyển làn và\r\nluôn thắt dây an toàn. Thời gian di chuyển khoảng 2,5 đến 3 tiếng.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Quảng Ninh có sân bay\r\nVân Đồn. Nên từ TP HCM và Đà Nẵng, du khách có thể di chuyển bằng đường hàng\r\nkhông tới thẳng Quảng Ninh, sau đó đi đường bộ từ sân bay tới TP Hạ Long, chừng\r\n50 km. Có xe buýt từ sân bay tới trung tâm thành phố.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/image/imageResource/2023/07/12/1689132848254-71e6447027913a2be1937e27f0990e5b.jpeg?tr=q-75\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">&nbsp;Khách sạn, homestay:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Lựa chọn lưu trú ở Hạ\r\nLong rất đa dạng, bao gồm khách sạn bình dân, khu nghỉ dưỡng, homestay, nhà nghỉ\r\nhoặc các du thuyền từ cao cấp tới bình dân. Giá thuê dao động từ vài trăm nghìn\r\nđến vài triệu đồng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- TP Hạ Long phân chia\r\nthành hai khu vực là Bãi Cháy và Hòn Gai, bởi cầu Bãi Cháy. Phía Bãi Cháy tập\r\ntrung nhiều khu du lịch, khách sạn, nhà hàng còn phía Hòn Gai chủ yếu là các\r\nkhu dân cư.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Nếu chọn ở homestay thoải\r\nmái, giá dễ chịu hơn bạn có thể tham khảo The Bay, Halong Ginger, Orestay, Deja\r\nVu House. Cao cấp hơn, du khách có thể thuê phòng tại các khách sạn như FLC\r\nGrand Hotel trên đồi Văn Nghệ, Wyndham Legend Halong, Novotel, Sai Gon Hạ Long,\r\nhệ thống Mường Thanh, Royal Lotus... Các khu nghỉ dưỡng 5 sao có Vinpearl\r\nResort and Spa, Premier Village Ha Long Bay Resort...<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">&nbsp;</span><img src=\"https://cafefcdn.com/thumb_w/640/pr/2020/1608522432481-61-0-964-1445-crop-1608522438481-63744151892904.jpg\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Ăn uống:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Những món ngon nổi tiếng\r\nở Hạ Long phần lớn chế biến từ hải sản như cù kỳ, bề bề, sá sùng, ngán, tôm,\r\ncua, cá, mực... Các món bún hải sản rất được ưa chuộng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Bún bề bề là món ăn sáng và trưa phổ biến ở Quảng Ninh, nhất là ở thành phố Hạ Long. Bề bề (còn gọi là tôm tích, tôm tít, tôm búa) là loài hải sản có nhiều ở vùng biển Hạ Long, có thịt chắc, thơm ngọt và giàu dinh dưỡng. Một tô bún có giá khoảng 30.000 - 40.000 đồng.<br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://media.baoquangninh.vn/dataimages/201903/original/images1274446_Collage_Fotor__Copy_.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Sữa chua trân châu là món tráng miệng nhất định phải thử. Sữa chua ăn kèm trân châu xuất hiện khoảng 10 năm nay. Món ăn vặt nổi tiếng thành thương hiệu của Hạ Long làm mưa làm gió ở những thành phố khác. Các quán tự ủ sữa chua mềm mịn, không lẫn đá đông, mát lạnh.</span><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn.alongwalk.info/vn/wp-content/uploads/2022/03/03224932/image-thoa-con-them-voi-nhung-mon-an-tu-tra-xanh-lam-gioi-tre-me-met-164629737276172.jpg\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 17.3333px;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 17.3333px;\"=\"\">- Bún cù kỳ là món ăn chỉ ở Quảng Ninh mới có. Con cù kỳ thân nhỏ cỡ cua đá nhưng nhiều vỏ dăm ít thịt, bù lại có đôi càng to và nhiều thịt. Do đó, càng cù kỳ là nguyên liệu chính để chế biến món ăn. Thịt cù kỳ ăn ngọt, vị khác hẳn thịt cua, được gỡ ra phi sơ qua với hành tỏi cho thơm, rồi được cho vào tô bún trắng cùng đôi càng đã đập vỏ sẵn.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://media.baoquangninh.vn/dataimages/201903/original/images1274429_VnExpress_monngonQuangNinh5_2305_1552283110__Copy_.jpg\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 17.3333px;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Hy vọng với chia sẻ du\r\nlịch Hạ long ở trên sẽ giúp bạn lựa chọn được cho mình điểm nghỉ dưỡng lý tưởng\r\nnhất tại thành phố vịnh biển xinh đẹp. Ngoài ra, đồng hành cùng BaywithVAA để\r\nnhận thêm nhiều ưu đãi nhé.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n<span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p>', 'Hạ Long', 1);
INSERT INTO `baiviet` (`ID_News`, `ID_User`, `AnhBaiViet`, `NgayDang`, `ID_TheLoai`, `TieuDe`, `MoTa`, `Tag`, `AnHien`) VALUES
(1096, 2029, 'B1.png', '2024-03-14 00:00:00', 3, 'Những món ăn nên thưởng thức khi du lịch vịnh Hạ Long', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size:14.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" color:red\"=\"\">Những món ăn nên thưởng thức khi du lịch vịnh Hạ Long</span></b><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;color:red\"=\"\"> </span></b><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Đắm mình trong khung cảnh\r\nthiên nhiên hùng vĩ là một điều tuyệt vời nhưng du khách cũng đừng quên thưởng\r\nthức những món ăn đặc sản nơi đây. Hãy cùng mình khám phá đặc sản ở thành phố Hạ\r\nLong nhé!</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Chả mực:</span></b><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Đầu tiên, mang thương\r\nhiệu ẩm thực ở Hạ Long – Chả mực - một món ăn quen thuộc trên mâm cơm của rất\r\nnhiều gia đình miền biển. Dù chỉ là 1 món ăn đơn giản, nhưng lại được rất nhiều\r\ndu khách yêu thích và mua về làm quà cho người thân. <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Mực được dùng làm chả\r\nphải là mực mai tươi sống, dày mình, và được đánh bắt tại vùng biển Quảng Ninh.\r\nCác nguyên liệu khác cũng được lựa chọn cẩn thận và được chế biến theo công thức\r\nriêng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://media.loveitopcdn.com/270/151123-cha-muc-ha-long-cao-cap.jpg\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Điểm khác biệt của món\r\nchả mực Hạ Long là những miếng chả mực thơm ngon, ngọt đậm đà, giòn dai sần sật\r\nđều được giã bằng tay, nắm thành những miếng vừa ăn và chiên trong chảo dầu\r\nsôi. Chả mực có thể chế biến các món: chiên rán, sốt cà chua, bánh cuốn…<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Ruốc Tôm:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Ruốc tôm hay chà bông\r\nlà một trong những đặc sản nổi tiếng tại vùng đất Quảng Ninh. Sở dĩ vậy là vì\r\nloài tôm ở vùng biển Quảng Ninh được nhận xét là ngon hơn hẳn bởi nồng độ và lạch\r\nnước biển nằm sâu trong vùng vịnh. Chính điều này đã góp phần giúp cho tôm được\r\nđánh bắt tại đây có vị thơm ngon đậm đà, thịt chắc hơn bất kỳ nơi nào.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn-i.vtcnews.vn/resize/th/upload/2023/04/24/ruoc-tom-20224732.jpeg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Đây là một món ăn đầy\r\nchất dinh dưỡng được làm từ nguyên liệu tôm thịt giã nhuyễn, sau đó kết hợp\r\ncùng với nhiều loại gia vị khác nhau như tinh dầu gấc, nước mắm, gừng, mắc\r\nkén,.. Không chỉ đậm vị tôm, món ăn này còn có sự kết hợp cực kỳ hoàn hảo với vị\r\nngọt của thịt heo. Ruốc tôm là một loại thức ăn rất dễ ăn, chúng có ưu điểm là\r\ncó thể để được lâu ngày và là món ăn giàu chất dinh dưỡng, vitamin cho cơ thể.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span></b><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Sam biển:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Sam là một loại hải sản\r\nquý hiếm ở Hạ Long, đồng thời Sam biển là đặc sản vô cùng nổi tiếng nơi đây, được\r\ncả người dân địa phương và du khách yêu thích. Với hương vị thơm ngon và thành\r\nphần dinh dưỡng cao, Sam biển có thể chế biến các món: Sam trứng nướng, Chân\r\nSam xào chua ngọt, Gỏi sam biển, …</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://minio.fares.vn/mixivivu-dev/tour/ship/blog/bvd9vmfsfbd5zk7j.webp\" style=\"width: 838.75px;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Ngoài những món ngon kể\r\ntrên, người Hạ Long còn chế biến ra nhiều món ăn hấp dẫn khác từ sam như trứng\r\nsam chiên giòn, sam xào xả ớt, sam bao bột rán, sụn sam nướng, sam xào miến. Đặc\r\nđiểm chung của những món ăn này là mùi hương hấp dẫn, vị sam ngọt đậm đà hòa\r\nquyện cùng các loại gia vị thơm ngon khác.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span></b><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Bún hải sản:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">-Bún hải sản Hạ Long hay\r\nbún hải sản Quảng Ninh sẽ được chế biến từ: bề bề (tôm tích), ghẹ, cá tươi, chả\r\ncá, chả mức và các loại rau sống ăn kèm. Nguyên liệu được đánh bắt trực tiếp từ\r\nbiển nên sẽ tươi ngon hấp dẫn, đúng vị.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://minio.fares.vn/mixivivu-dev/tour/ship/blog/z1eklndighx7594k.webp\" style=\"width: 838.75px;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Trong đó, vị ngọt thanh\r\nđặc trưng của nước lèo chính là thứ tạo nên sự khác biệt và lưu luyến vị giác của\r\nngười thưởng thức.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Hàu sữa Hạ Long<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Hàu sữa có thể thấy ở\r\nkhắp các vùng biển trên cả nước nhưng ngon nhất là hàu sữa Bản Sen, được đánh bắt\r\nở vùng biển Vân Đồn, Quảng Ninh.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://minio.fares.vn/mixivivu-dev/tour/ship/blog/o85flov6gejdi7s1.webp\" style=\"width: 838.75px;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> <o:p></o:p></span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Hàu sữa ở đây rất to,\r\nbéo ngậy, thơm ngon và chứa nhiều chất dinh dưỡng giá trị với một loạt các chất:\r\nprotein, glucid, chất béo, kẽm, canxi, magie,….</span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"> </span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">Chính vì chứa hàm lượng chất dinh dưỡng cao nên hàu sữa mang lại nhiều lợi\r\ních như: tăng cường hệ miễn dịch, tốt cho hệ tim mạch và mắt, cải thiện chức\r\nnăng não,… </span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">Hàu sữa được chế biến\r\nthành rất nhiều món như: Chào hàu sữa, Hàu sữa đút lò, Hàu sữa nướng mỡ hành.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Trên đây là tổng hợp\r\nđánh giá từ nhiều du khách và cũng có đánh giá riêng, hy vọng sẽ nhận được nhiều\r\nsự chia sẻ của các bạn để BaywithVAA tiếp tục cập nhật những thông tin du lịch\r\nmới nhất.<o:p></o:p></span></p>', 'Hạ Long', 1),
(1097, 2029, 'fffff.png', '2024-03-14 00:00:00', 7, 'Địa điểm du lịch trải nghiệm, hấp dẫn tại Mũi Né', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" color:red\"=\"\">Địa điểm du lịch trải nghiệm, hấp dẫn tại Mũi Né</span></b></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: justify;\"><span style=\"font-size: 13pt; text-align: left;\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.</span></p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Với kinh nghiệm du lịch\r\nMũi Né siêu đầy đủ, mọi nỗi lo từ kế hoạch ăn chơi, vé máy bay hay khách sạn đều\r\nsẽ được giải quyết trong tích tắc. Giờ đây, bạn chỉ cần xếp hành lý và chào đón\r\nmột kỳ nghỉ tuyệt vời tại vùng biển xinh đẹp này!<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Mũi Né là tên một mũi\r\nbiển thuộc thành phố Phan Thiết, tỉnh Bình Thuận cách trung tâm thành phố Phan\r\nThiết hơn 20km về phía Đông Bắc, và được biết đến như là trung tâm du lịch của\r\nthành phố.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://static.vinwonders.com/production/mui-ne-co-gi-choi-1.jpg\" style=\"width: 800px;\" class=\"\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> <o:p></o:p></span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Mũi Né sở hữu khí hậu\r\nnhiệt đới đặc trưng của vùng duyên hải Nam Trung Bộ, thời tiết quanh nhiều nắng\r\nvà gió, ít bão, nên khá thuận lợi để phát triển du lịch.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><strong><span style=\"font-size: 13pt; line-height: 107%; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1.\r\nBiển Hòn Rơm</span></strong><strong><span style=\"font-size: 13pt; line-height: 107%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Hòn Rơm là vùng biển\r\ncòn tương đối hoang sơ tọa lạc tại ấp Long Sơn, thuộc phường Mũi Né. Địa điểm\r\ndu lịch Mũi Né này được yêu thích bởi vì có sóng êm, nguồn nước xanh trong veo,\r\nkhông có đá ngầm nguy hiểm.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/blog/2023/10/hon-rom-mui-ne-11.jpg?tr=dpr-2,w-675\" style=\"width: 838.75px;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Khi du lịch tại đây, bạn\r\ncó thể lựa chọn tổ chức lửa trại theo nhóm hay đơn giản chỉ là ngồi ngắm bình\r\nminh và hoàng hôn bên bờ biển, vô cùng yên bình và thư thái.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">2. Đồi Cát đỏ<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Đồi Cát Đỏ hay còn được\r\ngọi là Đồi Cát Bay, Đồi Cát Vàng, Đồi Cát Hồng hiện nằm cách trung tâm thành phố\r\nPhan Thiết 25km. Đây là địa điểm check-in và vui chơi nổi tiếng của được rất\r\nnhiều du khách yêu thích, thường xuyên lui tới.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://dulichvietnam.com.vn/kinh-nghiem/wp-content/uploads/2020/11/doi-cat-bay-mui-ne-1.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Đồi cát Mũi Né cũng được\r\nví như “thiên đường miền nhiệt đới” của Phan Thiết bởi vì sự thay đổi hình dạng\r\nvô cùng diệu kỳ trong từng ngày, từng tháng. Sự đổi thay kỳ diệu này đã giúp\r\ncho Đồi Cát Đỏ thu hút được rất nhiều du khách đến đây để trải nghiệm và khám\r\nphá.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Du khách khi đến Đồi\r\nCát Đỏ có thể tham gia các hoạt động thú vị như:<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Trượt cát: </span></b><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Đây\r\nlà trò chơi vô cùng thú vị cho những ai muốn tìm kiếm những cảm giác mới mẻ, thử\r\nthách và đôi chút mạo hiểm. Để tham gia trò chơi này, du khách có thể thuê tấm\r\ntrượt hoặc ván trượt với mức giá chỉ khoảng 20.000 VND.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Chạy mô tô trên cát: </span></b><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Du\r\nkhách có thể trải nghiệm chạy xe mô tô địa hình 4 bánh để ngắm nhìn đồi cát,\r\nđây là một trong những hoạt động giải trí mà giới trẻ vô cùng yêu thích khi ghé\r\nthăm địa điểm này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Check-in:</span></b><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\nVới phông nền ấn tượng được tạo nên bởi bờ biển xanh trong cùng cùng cát vàng\r\ntrải dài tít tắp, du khách sẽ được ngay những bức ảnh vô cùng chân thực, ưng ý.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Thưởng thức ẩm thực Mũi\r\nNé:</span></b><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\nSau khi tham gia các hoạt động vui chơi hấp dẫn, du khách có thể nạp lại năng\r\nlượng bằng món đậu hũ nóng với mức giá siêu rẻ tại đây.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">3. Làng chài Mũi Né<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Làng chài Mũi Né hay\r\n“ngôi làng thuần chất biển” là những cát tên thân thương mà du khách thường khi\r\nnhắc về vùng biển bình yên nằm ngay trên cung đường Huỳnh Thúc Kháng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://ik.imagekit.io/tvlk/blog/2023/10/lang-chai-mui-ne-11.png?tr=dpr-2,w-675\" style=\"width: 838.75px;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Ngôi làng chài này nằm\r\ntrải dài khoảng 1km. Nơi đây được thiên nhiên ưu ái cho sóng yên gió lặng quanh\r\nnăm nên người dân từ xa xưa đã chọn vùng này để mua bán hải sản và neo đậu tàu\r\nthuyền.</span><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Từ 5h30 đến 10h sáng\r\nchính là khung giờ lý tưởng cho du khách muốn khám phá sự nhộn nhịp của những\r\nbuổi chợ cá vùng biển. Tại đây, du khách có thể trực tiếp chọn mua những loại hải\r\nsản tươi ngon sau một đêm ngư dân rong buồm ngoài khơi. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">4. Suối tiên – Mũi Né<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Suối Tiên hay Suối Hồng\r\nlà con suối “có 1 không 2” nằm ngay tại phường Mũi Né của thành phố Phan Thiết,\r\nBình Thuận. Sở dĩ dòng suối này đặc biệt là vì dòng nước quanh năm có màu đỏ\r\ncam rực rỡ của cát.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span><img src=\"https://cdn.alongwalk.info/vn/wp-content/uploads/2023/08/25070827/image-du-lich-mui-ne-trong-ngay-2023-tu-binh-minh-den-hoang-hon-093d0c0fbc78b7f447dd0a869eb5b4e8.jpg\" style=\"width: 800px;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Thật không ngoa khi nói\r\nrằng du khách chỉ cần giơ máy lên và đứng tạm vào một góc nào đó thôi thì cũng\r\ncó thể có được ngay tấm hình “trăm like” cực xịn. Bởi vì chính cảnh sắc nơi đây\r\nđã là một một bức phông nền hoàn hảo rồi.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">5. Khu du lịch Bàu trắng<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Bàu Trắng được một tạp\r\nchí thời trang quốc tế chọn là điểm chụp ảnh thời trang đẹp nhất. Những đồi cát\r\nnối nhau trở thành background lý tưởng cho những khách du lịch yêu thích chụp ảnh.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://www.vietourist.com.vn/public/frontend/uploads/kceditor/images/phuot-bau-trang-binh-thuan-min%20%281%29.jpg\" style=\"width: 838.75px;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Khi đến Bàu Trắng du\r\nkhách còn được tham gia các hoạt động thú vị như đi xe Jeep. Chi phí thuê xe\r\nJeep dao động vào khoảng 300.000 - 800.000 VND/xe trong 20 - 30 phút. </span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">Du khách cũng có thể\r\nthuê ván trượt với giá chỉ 15.000 – 20.000 VND. Các hoạt động này đều vô cùng\r\nphù hợp cho trẻ em, gia đình và các nhóm bạn thân tham gia.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Ngoài ra, du khách có\r\nthể ghé thăm địa điểm du lịch Mũi Né này vào mùa sen nở để thử chèo thuyền đi\r\nxung quanh hồ nước. Giá cả cho dịch vụ này chỉ khoảng 100.000 VND/người.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"> </span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Bài viết trên đây của BaywithVAA\r\nlà tổng hợp một số địa điểm du lịch Mũi Né mang vẻ đẹp làm say đắm lòng bao\r\ndu khách. Nếu có dịp ghé thăm Mũi Né xinh đẹp, hãy lên kế hoạch thử một lần đến\r\nngay những địa điểm hấp dẫn này nhé.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p><br></o:p></span></p>', 'Mũi Né', 1),
(1098, 2029, 'a.6.png', '2024-03-14 00:00:00', 6, 'CHIA SẺ KINH NGHIỆM, CẨM NANG DU LỊCH TỚI CỐ ĐÔ HUẾ MỘNG MƠ', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size:12.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" color:red\"=\"\">CHIA SẺ KINH NGHIỆM, CẨM NANG DU LỊCH TỚI CỐ ĐÔ HUẾ MỘNG MƠ</span></b><span style=\"font-size: 12pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(28,=\"\" 25,=\"\" 23);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Huế từ lâu đã luôn gắn\r\nliền với vẻ đẹp trầm mặc, cổ kính của đất kinh kỳ xưa và nay đã trở thành một\r\ntrong những thành phố trung tâm của Việt Nam, thế nhưng Huế vẫn có những nét\r\nxưa cũ.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://static-images.vnncdn.net/files/publish/2022/6/6/ngo-mon-499.jpg\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Là trung tâm của dải đất\r\nmiền Trung, tỉnh Thừa Thiên – Huế nói riêng và thành phố Huế nói chung luôn được\r\nthiên nhiên ưu đãi khi nằm lọt giữa muôn vàn cảnh đẹp của biển cả, sông, suối\r\nvà núi non.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn.alongwalk.info/vn/wp-content/uploads/2022/06/28063537/image-cau-trang-tien-hue-chung-nhan-lich-su-dep-mai-theo-thoi-gian-165634773729313.jpg\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Sự thơ mộng pha trộn giữa\r\nnét cổ kính và hiện đại của vùng đất cố đô tạo nên nhu cầu khám phá cao, đặc biệt\r\nlà giới trẻ, những du khách đam mê xê dịch. Từ đó mà vé máy bay giá rẻ cũng được\r\nnhiều hành khách quan tâm.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Giá vé máy bay TPHCM – Huế:<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Khoảng cách đường bay từ\r\nTPHCM đến Huế khoảng 1000km vì thế sẽ mất thời gian bay ít nhất 1 tiếng 30 phút\r\ntrên máy bay.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://image.sggp.org.vn/w680/Uploaded/2024/duxredwsxr/2023_07_14/vna814ac1-9214.jpg.webp\" style=\"width: 100%;\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Đây là một trong những\r\nchặng bay sôi động, nhộn nhịp và cũng vì điều này, các hãng hàng không nội địa\r\nđiều khai thác nhiều và rất chú trọng đến chặng bay này, từ đó hành khách có thể\r\nchọn được nhiều ngày cũng như khung giờ để đặt vé máy bay hơn.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Giá vé máy bay TPHCM Huế\r\nmột chiều dao động khoảng 760.000Đ đến 2.500.000Đ, còn phụ thuộc nhiều vào những\r\nthời điểm giảm giá và chương trình khuyến mãi của các hãng trong năm. Vietnam\r\nAirlines và Vietjet Air là 2 hãng hàng không có số lượng những suất vé máy bay\r\nTPHCM Huế cao nhất và cũng thường có các đợt vé khuyến mãi lớn với các combo\r\nsiêu hấp dẫn. Bạn cũng có thể đặt vé qua Pacific airlines – một trong những\r\nhãng khai thác đường bay này với nhiều dịch vụ tốt cũng như giá cả siêu ưu đãi.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><span style=\"font-size: 13pt;\">&nbsp;</span></span><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Thời gian lý tưởng và một\r\nsố địa điểm du lịch tại Huế:</span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><span style=\"font-size: 13pt;\">- Là một trong những\r\nthành phố du lịch hàng đầu tại Việt Nam, bạn có thể đến Huế để trải nghiệm\r\ntrong hầu hết các thời gian của năm. Tuy nhiên, mùa du lịch Huế rơi vào tháng\r\n11 đến tháng 4 năm sau, lý tưởng nhất vẫn là 3-4 tháng đầu năm, tiết trời dễ chịu\r\nvà mát mẻ.</span></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://photographer.vn/wp-content/uploads/2016/12/10-y-tuong-chup-anh-nghe-thuat-vo-cung-doc-dao4-1.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><span style=\"font-size: 13pt;\"><br></span>&nbsp;<o:p></o:p></span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Những du khách nào yêu\r\nnúi, biển, thích ngắm nhìn bình minh và hoàng hôn thì thời điểm thích hợp nhất\r\nlà tháng 6-8, thời gian mà mặt trời đẹp nhất trong năm. Đối với du khách si mê\r\nvẻ đẹp của loài hoa thì nên đến Huế từ tháng 4 đến tháng 7, bạn sẽ được đắm\r\nchìm trong sắc vàng của hoa điệp, sắc hồng của muồng hoa đào, cũng như sắc tím\r\ncủa bằng lăng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">Một số địa điểm nổi tiếng\r\ntại Huế:<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Kinh Thành Huế – Đại Nội<o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">-Là một trong những công\r\ntrình tiêu biểu của triều đình nhà Nguyễn, nơi cất giữ ký ức về một thời đại\r\nphong kiến uy quyền của Việt Nam.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cms.thainguyen.vn/documents/130230/13566606/ngomon-hue-1635323560819jpeg-986.jpg/a136a865-50db-40bd-99ac-7c88e60d1178?t=1700963463598\" style=\"width: 100%;\"></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Là hệ thống các công\r\ntrình kiến trúc độc đáo, là biểu tượng xứ Huế thu hút nhiều du khách được xây dựng\r\ndưới triều nhà Nguyễn.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">&nbsp;</span><b style=\"font-size: 1rem;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Trường Quốc học Huế</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">- Ngôi trường sở hữu vẻ đẹp\r\nthơ mộng đặc trưng của mảnh đất cố đô. Với lối kiến trúc độc đáo được thiết kế\r\ntheo Pháp, nơi đây là một trong những ngôi trường đẹp nhất Việt Nam</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\">+ Chùa Thiên Mụ<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><span style=\"font-size: 13pt;\">Ngôi chùa linh thiêng nằm\r\ncạnh bờ sông Hương thơ mộng, một trong những biểu tượng của mảnh đất cố đô.</span></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn.vn.alongwalk.info/vn/wp-content/uploads/2023/02/14221748/image-hanh-trinh-kham-pha-tour-hanh-huong-xuyen-viet-day-moi-la-nam-2023-167636266880743.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><span style=\"font-size: 13pt;\"><br></span>&nbsp;</span><span style=\"font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" font-size:=\"\" 13pt;\"=\"\">- Đến Huế, ngoài thưởng\r\nthức khung cảnh thơ mộng, bạn nhất định phải thử qua nền ẩm thực tại nơi đây. Một\r\nsố món ăn nổi tiếng bạn có thể thử qua như: cơm hến/ bún hến, bún bò Huế, chè\r\nHuế, nem lụi Huế, tôm chua Huế, tré Huế,…</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" background-image:=\"\" initial;=\"\" background-position:=\"\" background-size:=\"\" background-repeat:=\"\" background-attachment:=\"\" background-origin:=\"\" background-clip:=\"\" initial;\"=\"\">BaywithVAA kính chúc bạn có chuyến ghé thăm đến cố đô Huế thật nhiều\r\nniềm vui và tận hưởng nhé!</span><span style=\"font-size:13.0pt;line-height:\r\n107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:13.0pt;\r\nline-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif\"=\"\"><o:p></o:p></span></p>', 'Huế', 1);
INSERT INTO `baiviet` (`ID_News`, `ID_User`, `AnhBaiViet`, `NgayDang`, `ID_TheLoai`, `TieuDe`, `MoTa`, `Tag`, `AnHien`) VALUES
(1099, 2029, '999999.png', '2024-03-14 00:00:00', 4, 'Khám phá 3 ngôi chùa nổi tiếng ở Quảng Ninh', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: red; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Khám phá 3 ngôi chùa nổi tiếng ở Quảng Ninh</span></b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: rgb(28, 25, 23); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: rgb(28, 25, 23); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Không chỉ được biết đến là một địa điểm du lịch\r\nnổi tiếng bao gồm: Vịnh Hạ Long, đảo Tuần Châu, …Ngoài ra, thành phố du lịch Quảng\r\nNinh còn thu hút du khách bởi những địa điểm du lịch tâm linh.</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1. Chùa Yên Tử</span></b><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></b></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Ngôi chùa này nằm ở thôn Nam Mẫu, xã Thượng Yên\r\nCông, TP. Uông Bí, Quảng Ninh. Nơi đây được Phật hoàng Trần Nhân Tông chọn làm\r\nnơi tu hành sau khi truyền ngôi và thành lập ra phái Thiền viện Trúc Lâm Yên Tử\r\n(một dòng Phật giáo đặc trưng ở Việt Nam).</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn.alongwalk.info/vn/wp-content/uploads/2022/06/20002921/image-chua-ba-vang-o-dau-chi-tiet-duong-di-cach-tham-quan-ba-vang-165563456155553.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Điều đầu tiên khi đặt chân đến địa điểm du lịch\r\nQuảng Ninh linh thiêng – chùa Yên Tử không chỉ gây ấn tượng bởi độ cao 1068m mà\r\ncòn mang đậm phong cách kiến trúc Phật giáo với nhiều chi tiết đặc trưng như cổng\r\ntam quan hai tầng tám mái uy nghiêm, mái chùa thì được lợp các tấm ngói vảy uốn\r\ncong hình đầu đao, cột chùa thì sử dụng chất liệu gỗ lim cứng cáp kết hợp với\r\ncác phiến đá lớn bao quanh dưới chân.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://goldencoto.vn/wp-content/uploads/2022/10/chua-yen-tu-1.jpeg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Không gian bên trong chùa được thiết kế tinh tế,\r\nthoáng mát. Các gian được thiết kế rất tinh tế bằng nhiều chi tiết sơn son thếp\r\nvàng lộng lẫy. Từng bức tượng Phật, án thờ, bức khảm, cửa,... đều được chạm khắc\r\ntinh xảo, tạo cảm giác rất sinh động và không kém phần uy nghiêm</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://congdankhuyenhoc.qltns.mediacdn.vn/thumb_w/840/449484899827462144/2023/1/23/32679691418406985763117146135528962567782135n-16744872475751321434541.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Xuất hiện từ lâu đời, lễ hội chùa Yên Tử Quảng\r\nNinh diễn ra từ tháng giêng đến hết tháng 3 âm lịch đã trở thành một nét văn\r\nhóa đẹp tại nơi đây. Đầu tiên là nghi lễ long trọng được người dân tổ chức dưới\r\nchân núi Yên Tử, sau đó là cuộc hành hương của hang vạn người lên đến nơi cao\r\nnhất Yên Tử chính là chùa Đồng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://media.baoquangninh.vn/upload/image/202205/medium/1970325_rung_yen_tu_da_dang_ve_gia_tri_sinh_hoc_18493816.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Với tổng diện tích lên tới 2.783 ha, rừng quốc\r\ngia Yên Tử nằm ở xã Thượng Yên Công và Phương Đông, TP. Uông Bí, Quảng Ninh.\r\nNơi đây lưu giữ và bảo tồn nhiều loại động vật và nguồn gen sinh vật quý hiếm.</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Ngoài ra, còn các địa điểm hấp dẫn khác để du\r\nkhách tham quan như: Thiền viện Trúc Lâm Yên Tử, Cổng trời bia Phật, …</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span></b><b style=\"font-size: 1rem;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2. Chùa Ba Vàng:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Chùa Ba Vàng hay còn gọi là Bảo Quang Tự làm trụ\r\ntrì từ năm 2007, nằm trên lưng chừng núi Thành Đẳng, phường Quang Trung, TP.\r\nUông Bí, Quảng Ninh. Chùa có vị trí rất đẹp khi nằm ở độ cao 340 mét so với mực\r\nnước biển, lưng tựa vào núi, trước mặt là dòng sông êm đềm, còn hai bên là rừng\r\nthông trải dài với một màu xanh ngát.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://dulichkhampha24.com/wp-content/uploads/2022/12/chua-ba-vang-2-3.jpg\" style=\"width: 800px;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Sở hữu một lối thiết kế vô cùng đặc sắc, tiêu biểu\r\ncho kết cấu của một ngôi chùa truyền thống tại Bắc Bộ với những công trình tiêu\r\nbiểu như: 3 gian bái đường, cổng tam quan, khu hậu cung thâm nghiêm, khu chính\r\nđiện cùng những công trình phụ nổi bật khác. Tiêu biểu nhất phải kể tới pho tượng\r\nQuan Thế Âm Bồ Tát cao 10.8m được chạm khắc vô cùng tinh tế. </span><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">Trong khuôn viên của chùa, còn được thiết kế\r\nthêm một giếng nước mát lạnh, trong vắt và không bao giờ hết nước.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Bên cạnh đó, từ cổng tam quan hướng về phía khu\r\nchính điện, khách vãng lai sẽ được chiêm ngưỡng toàn bộ ngôi chùa chính với phần\r\nmái cong vút, trang trí tỉ mỉ với hình ảnh rồng, phượng trang nghiêm. </span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://bandatnghiatrang.com/wp-content/uploads/2021/05/Nhieu-nguoi-tim-hieu-gioi-thieu-ve-chua-Mot-Cot-1.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Phía trước của Đại Hùng Bảo Điện là một hồ nước\r\ntrong ở giữa được cho xây dựng thêm một ngôi chùa nhỏ nhằm mô phỏng lại hình ảnh\r\nchùa Một Cột đặt trên đài sen. Hai kiến trúc độc đáo bậc nhất là Lầu Chuông – Lầu\r\nTrống, được thiết kế và trang trí bằng những hoa văn rất bắt mắt và tỉ mỉ mang\r\nđến cảm giác uy nghi và tĩnh lặng.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3. Chùa Cái Bầu</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">- Chùa Cái Bầu Quảng Ninh hay còn được gọi là Thiền\r\nViện Trúc Lâm Giác Tâm nằm ở thông 1 của xã Hạ Long, huyện Vân Đồn, tỉnh Quảng\r\nNinh. Chùa được xây dựng trên nền của Phúc Linh Tự (chùa cổ thời Trần) vào năm\r\n2007. </span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://cdn3.ivivu.com/2022/11/chua-cai-bau-ivivu-1.jpg\" style=\"width: 838.75px;\"><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">- Chùa được tu sửa trong khoảng 2 năm và khánh\r\nthành vào năm 2010 với tổng diện tích lên đến 20 ha. Đây cũng là một minh chứng\r\nlịch sử quan trọng, tạo tiền đề cho chiến thắng trên sông Bạch Đằng vào năm\r\n1288. </span><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">Cũng nhờ đó, chùa được chọn làm nơi thờ tự, tưởng\r\nnhớ công ơn của các vị tướng trong cuộc kháng chiến chống quân Nguyên Mông. </span><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">Với thế lưng tựa núi, mặt giáp biển và nằm xa\r\nkhu dân cư nên chùa càng thanh tịnh, uy nghiêm. Chùa Cái Bầu gồm có chính điện,\r\nlầu chuông, lầu trống, cổng tam quan.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://reviewvilla.vn/wp-content/uploads/2023/08/chua-cai-bau-4.jpg\" style=\"width: 800px;\"><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Chính điện của chùa có diện tích rộng lên đến\r\n6000m2. Không gian được xây theo lối kiến trúc độc đáo, có 2 tầng. Một tầng là\r\nnơi thờ Phật Thích Ca Mâu Ni, tầng còn lại là tượng Bồ Tát và Sư Lợi. Ngoài ra,\r\nở đây còn có rất nhiều bức tranh chạm khắc bằng đồng được treo ở 4 bức tường. </span><span style=\"color: black; font-family: \"Times New Roman\", serif; font-size: 13pt;\">Lầu trống để trưng bày một chiếc trống siêu to,\r\nvới những nét điêu khắc bằng đồng tái hiện quá trình hành hương của Đức Phật vô\r\ncùng độc đáo.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>', 'Quảng Ninh', 1),
(1100, 2029, 'ttttttt.png', '2024-03-14 00:00:00', 3, 'TOP đặc sản Đà Lạt làm quà nổi tiếng', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: red; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">TOP đặc sản Đà Lạt làm quà nổi tiếng</span></b><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: rgb(28, 25, 23); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: rgb(28, 25, 23); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Đồng hành cùng BaywithVAA trên những chuyến bay ngắn, chúng ta đã có thể\r\nđặt chân đến nhiều điểm du lịch hấp dẫn mang nhiều trải nghiệm thú vị, đặc sắc\r\nvăn hóa Việt Nam. Mỗi bước chân đặt đến miền đất Việt là một nét văn hóa mới\r\nđang chờ bạn khám phá, trải nghiệm. Hãy cùng BaywithVAA khám phá và cập nhập những\r\ntin tức hấp dẫn mới nhất từ điểm đến tuyệt vời này.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Đặc sản Đà Lạt mang đậm dấu ấn đặc trưng và\r\nvẻ đẹp văn hóa vùng miền ai cũng nên mua khi đặt chân đến Đà Lạt là\r\nđịa danh du lịch nổi tiếng mà ai cũng ao ước được một lần ghé chân\r\nđến, khí hậu ôn hòa mang đến cho vùng đất này những “món quà thiên\r\nnhiên” ưu ái nhất.</span><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span><b style=\"font-size: 1rem;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1. Dâu Tây:</span></b></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">- Cũng như mận tam hoa của Sapa hay su su của Tam\r\nĐảo thì dâu tây được xem là loại quả đặc trưng nhất khi nói tới Đà Lạt.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/dau-tay-da-lat-lam-qua.jpg\" style=\"width: 100%;\"><span style=\"font-size: 13pt; line-height: 107%; font-family: \"Times New Roman\", serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 17.3333px;\">- Dâu tây Đà Lạt nổi tiếng với nhiều giống dâu tươi ngon, vị ngọt thanh, thịt chắc, căng bóng đẹp mắt và còn bổ dưỡng cho sức khỏe, ngăn ngừa các bệnh về mắt, làm đẹp da và còn có tác dụng giải độc. </span></font><span style=\"color: rgb(0, 0, 0); font-family: \"Times New Roman\", serif; font-size: 17.3333px;\">Du khách có thể mua dâu tây tươi ở chợ Đà Lạt hoặc kết hợp tham quan và mua dâu tại các vườn dâu.</span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><b><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 17.3333px;\"> </span></font><span style=\"color: rgb(0, 0, 0); font-family: \"Times New Roman\", serif; font-size: 17.3333px;\">2. Hồng giòn, hồng treo gió Đà Lạt:</span></b></p><p class=\"MsoNormal\" style=\"text-align:justify\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 17.3333px;\"><span style=\"line-height: 107%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span><span style=\"line-height: 107%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></span></font></p><p class=\"MsoNormal\" style=\"text-align:justify\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 17.3333px;\"> - Hồng là một trong những loại trái cây rất phổ biến ở Đà Lạt. Mùa hồng Đà Lạt từ tháng 7 đến tháng 11, nếu đi đúng dịp bạn có thể mua hồng tươi tại vườn hoặc các chợ, còn không ban có thể lựa chọn hồng treo gió, hồng sấy khô làm đặc sản Đà Lạt làm quà cho mọi người.</span></font></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/11/Artishotel-quy-trinh-san-xuat-hong-treo-gio-da-lat-5.jpg\" style=\"width: 100%;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 17.3333px;\"><br></span></font></p><div style=\"text-align: justify;\"><p style=\"line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">- Hồng khô sẽ bảo\r\nquản được quanh năm, ăn ngọt đậm, bên ngoài cứng bên trong mềm ẩm, vị thanh\r\nthanh, dẻo thơm, đảm bảo ai cũng thích.<o:p></o:p></span></p>\r\n\r\n<p style=\"line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><b>3. Mứt dẻo, hoa quả\r\nsấy khô</b><o:p></o:p></span></p>\r\n\r\n<p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> - Mứt cũng là món ăn khá nổi tiếng khi nhắc\r\nđến danh sách những đặc sản của du lịch Đà Lạt. Có vô số những loại mức được\r\nlàm từ các loại hoa, củ, quả có sẵn của Đà Lạt và được sản xuất quanh năm chứ\r\nkhông chỉ có trong dịp Tết. </span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><o:p><br></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/mut-hoa-qua-say-kho-da-lat.jpg\" style=\"width: 100%;\"><br></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">- Mứt được bày bán\r\nnhiều nhất ở chợ Đà Lạt hay các địa chỉ uy tín trên đường Phù Đổng Thiên Vương,\r\nđường Mai Anh Đào, đường Nguyên Tử Lực, khách đi du lịch trong nước có thể tìm\r\nđến để lựa mua các loại mứt với đầy màu sắc và hương vị, như hồng sấy, mứt đào\r\nsữa, mứt khoai lang, mứt hoa hồng… với đủ vị chua, cay, mềm, dẻo …<o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span><span style=\"color: rgb(10, 10, 10); font-size: 13pt; letter-spacing: 0.75pt;\">- Mứt Đà Lạt rất đa\r\ndạng về chủng loại với đủ trạng thái sấy khô, sấy dẻo, giòn, chua, cay… Ngoài\r\nviệc phong phú về chủng loại, mứt của Đà Lạt cũng được đánh giá cao về độ ngon,\r\nrẻ, độc đáo, bởi hầu hết được chế biến từ các loại củ, quả thậm chí là các loại\r\nhoa của địa phương này.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span></b><b style=\"color: rgb(28, 28, 28); font-size: 13pt; letter-spacing: 0.75pt;\">4. Hoa Atiso/ Trà\r\nAtiso</b></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">- Hoa Atiso\r\nlà một biểu tượng của Đà Lạt, có nguồn gốc từ vùng đất Địa Trung Hải, nhưng do\r\nkhí hậu ôn hòa quanh năm nên Đà Lạt đã trở thành vùng đất vô cùng thích hợp để\r\nloại hoa này phát triển.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/tra-atiso-da-lat.jpg\" style=\"width: 100%;\"></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> - Nếu bạn\r\nđang băn khoăn không biết du lịch Đà Lạt mua gì làm quà, thì có thể lựa chọn\r\nmua hoa atiso tươi về nấu canh, hoặc mua các chế phẩm từ atiso như trà atiso\r\n(có tác dụng giải độc, mát gan, tác dụng an thần tốt…) về làm quà cũng là một\r\ngợi ý.<o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span></b><b><span style=\"font-size:13.0pt;color:#1C1C1C;letter-spacing:.75pt\">5. Các loại rượu\r\nđặc sản Đà Lạt</span></b><b><span style=\"font-size:13.0pt;color:#0A0A0A;\r\nletter-spacing:.75pt\"><o:p></o:p></span></b></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span><b><span style=\"font-size:13.0pt;color:#1C1C1C;letter-spacing:.75pt\">Rượu vang Đà Lạt</span></b><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> - Rượu vang\r\nĐà Lạt đã là một thương hiệu rượu nổi tiếng trong cả nước. Những chai rượu vang\r\nở đây được chế biến từ những trái dâu tằm (trái dâu để nuôi tằm), loại quả này\r\ncó màu đen thẫm, hương vị ngọt thanh cực phù hợp cho thứ rượu thượng hạng này.<o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> <o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">Được lên men bằng\r\ncông thức truyền thống nhưng vẫn đảm bảo vệ sinh an toàn thực phẩm để cho ra\r\nđời những chai rượu mang hương vị đậm đà, tốt sức khỏe.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/ruou-vang-da-lat.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><o:p><br></o:p></span></p><h3 style=\"margin-top: 0in; line-height: 15pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:13.0pt;font-family:\"Times New Roman\",serif;\r\ncolor:#1C1C1C;letter-spacing:.75pt\">Rượu cần Đà Lạt</span></b><span style=\"font-size:13.0pt;font-family:\"Times New Roman\",serif;color:#1C1C1C;\r\nletter-spacing:.75pt\"><o:p></o:p></span></h3><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n</p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">Rượu cần Đà\r\nLạt, một trong những sản phẩm mang đậm bản sắc núi rừng Tây Nguyên hoang sơ\r\nhùng vĩ.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/ruou-can-da-lat.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\">- Rượu cần Đà Lạt\r\ncó một hương vị đặc trưng khá riêng, mang đậm dấu ấn của vùng núi cao. Những\r\nsản phẩm rượu cần tại Đà Lạt đều là do những người đồng bào dân tộc thiểu số ủ,\r\nchưng cất.<o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span><strong><span style=\"font-size:13.0pt;color:#1C1C1C;letter-spacing:.75pt\">6. Nước cốt trái\r\ncây</span></strong><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:\r\n.75pt\"><o:p></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> - Nhắc tới\r\nđặc sản Đà Lạt không thể không nhắc tới sản phẩm nước cốt được chế biến từ các\r\nloại quả như dâu tằm, dâu tây, chanh leo…</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"https://artishotel.vn/wp-content/uploads/2021/12/nuoc-cot-trai-cay-da-lat.jpg\" style=\"width: 100%;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"><o:p><br></o:p></span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> - Đà Lạt với\r\nthế mạnh là vùng có khí hậu tươi mát, thổ nhưỡng tươi tốt nên các loại trái cây\r\ncũng tươi ngon hơn những vùng khác. Nước ép trái cây vì thế hương vị cũng thơm\r\nngon đậm đà hơn.</span><span style=\"color: rgb(10, 10, 10); font-size: 13pt; letter-spacing: 0.75pt;\"> Vừa là thức\r\nuống giải nhiệt mùa hè thích hợp, lại còn tốt cho sức khỏe. Chắc hẳn nước cốt\r\ntrái cây sẽ là thứ đứng đầu danh sách đặc sản mang về làm quà từ Đà Lạt của rất\r\nnhiều du khách.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> </span><span style=\"color: rgb(10, 10, 10); font-size: 13pt; letter-spacing: 0.75pt;\">- Có thể thấy đặc\r\nsản Đà Lạt rất phong phú và đặc biệt. Những món quà từ Đà lạt chắc chắn sẽ làm\r\nkhông phụ lòng những du khách khi đến với thành phố.</span></p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"margin: 0in; line-height: 20.25pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;color:#0A0A0A;letter-spacing:.75pt\"> <o:p></o:p></span></p></div>', 'Đà Lạt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `ID_Bookings` int(11) NOT NULL,
  `ID_KhachHang` int(11) DEFAULT NULL,
  `ID_Tour` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT NULL,
  `TongTien` decimal(10,2) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(255) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`ID_Bookings`, `ID_KhachHang`, `ID_Tour`, `NgayDat`, `TongTien`, `PhuongThucThanhToan`, `TrangThai`) VALUES
(1668, 3703, 1400, '2024-03-20 15:26:31', 20218000.00, 'MoMo', NULL),
(1669, 3704, 1400, '2024-03-20 15:36:57', 20218000.00, 'MoMo', NULL),
(1670, 3705, 1400, '2024-03-20 15:47:20', 20218000.00, 'MoMo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatve`
--

CREATE TABLE `chitietdatve` (
  `ID_ChiTietDatVe` int(11) NOT NULL,
  `ID_DatVe` int(11) DEFAULT NULL,
  `SoGhe` varchar(255) DEFAULT NULL,
  `ID_DichVu` int(11) DEFAULT NULL,
  `TongTien` decimal(10,2) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) DEFAULT NULL,
  `NgayDat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietdatve`
--

INSERT INTO `chitietdatve` (`ID_ChiTietDatVe`, `ID_DatVe`, `SoGhe`, `ID_DichVu`, `TongTien`, `PhuongThucThanhToan`, `NgayDat`) VALUES
(9174, 8766, NULL, 0, 3060000.00, 'momo', NULL),
(9175, 8768, 'A2, A3', 0, 2535780.00, 'MoMo', '2024-03-13 15:45:24'),
(9182, 8775, 'A1, A2', 0, 3040000.00, 'MoMo', '2024-03-19 20:38:05'),
(9183, 8776, 'A1', 0, 1520000.00, 'MoMo', '2024-03-19 20:48:45'),
(9184, 8777, 'D1', 0, 1520000.00, 'MoMo', '2024-03-19 20:53:17'),
(9185, 8778, 'D1, D2', 0, 3040000.00, 'MoMo', '2024-03-19 21:06:52'),
(9186, 8779, 'D1', 0, 1520000.00, 'MoMo', '2024-03-19 21:35:57'),
(9187, 8780, 'C1, C2', 0, 3040000.00, 'MoMo', '2024-03-19 21:40:05'),
(9188, 8781, 'A2, A3', 0, 3040000.00, 'MoMo', '2024-03-19 21:45:41'),
(9189, 8782, 'B1, B2', 0, 2736000.00, 'MoMo', '2024-03-19 21:55:29'),
(9190, 8783, 'C1, C2', 0, 3040000.00, 'MoMo', '2024-03-19 22:04:18'),
(9191, 8784, 'D1', 0, 1520000.00, 'MoMo', '2024-03-20 14:21:24'),
(9192, 8785, 'C3, C4', 0, 3040000.00, 'MoMo', '2024-03-20 15:56:52'),
(9193, 8786, 'A1', 0, 1520000.00, 'MoMo', '2024-03-20 22:17:26'),
(9194, 8787, 'D1', 0, 1520000.00, 'MoMo', '2024-03-21 19:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatvekhuhoi`
--

CREATE TABLE `chitietdatvekhuhoi` (
  `ID_ChiTietDatVeKhuHoi` int(11) NOT NULL,
  `ID_DatVeKhuHoi` int(11) DEFAULT NULL,
  `SoGhe` varchar(255) DEFAULT NULL,
  `ID_DichVu` int(11) DEFAULT NULL,
  `TongTien` decimal(10,2) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) DEFAULT NULL,
  `NgayDat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietdatvekhuhoi`
--

INSERT INTO `chitietdatvekhuhoi` (`ID_ChiTietDatVeKhuHoi`, `ID_DatVeKhuHoi`, `SoGhe`, `ID_DichVu`, `TongTien`, `PhuongThucThanhToan`, `NgayDat`) VALUES
(6470, 20262, NULL, 0, 7410400.00, 'momo', NULL),
(6471, 20263, NULL, 0, 4877400.00, 'momo', NULL),
(6472, 20264, NULL, 0, 7410400.00, 'momo', NULL),
(6473, 20265, NULL, 0, 4877400.00, 'momo', NULL),
(6475, 20267, 'C1, C2', 0, 5740000.00, 'MoMo', '2024-03-19 20:29:21'),
(6476, 20268, 'C1, C2', 0, 5740000.00, 'MoMo', '2024-03-19 21:59:08'),
(6477, 20269, 'A1', 0, 2870000.00, 'MoMo', '2024-03-20 14:26:50'),
(6478, 20270, 'B1', 0, 2870000.00, 'MoMo', '2024-03-20 14:44:26'),
(6479, 20271, 'C1, C2', 0, 5740000.00, 'MoMo', '2024-03-20 15:55:10'),
(6480, 20272, 'C2, C3', 0, 5740000.00, 'MoMo', '2024-03-21 19:59:00'),
(6481, 20273, 'B1', 0, 2870000.00, 'MoMo', '2024-03-21 20:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenbaydi`
--

CREATE TABLE `chuyenbaydi` (
  `ID_ChuyenBayDi` int(11) NOT NULL,
  `ID_CHK` varchar(50) DEFAULT NULL,
  `SoHieu` varchar(50) DEFAULT NULL,
  `ID_LoaiBay` int(11) DEFAULT NULL,
  `ThoiGianDi` datetime DEFAULT NULL,
  `ThoiGianDen` datetime DEFAULT NULL,
  `TrangThai` varchar(100) NOT NULL,
  `SoLuongVe` int(11) DEFAULT NULL,
  `GiaVe` decimal(10,2) DEFAULT NULL,
  `ID_MaTuyen` varchar(50) DEFAULT NULL,
  `ID_LoaiVe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chuyenbaydi`
--

INSERT INTO `chuyenbaydi` (`ID_ChuyenBayDi`, `ID_CHK`, `SoHieu`, `ID_LoaiBay`, `ThoiGianDi`, `ThoiGianDen`, `TrangThai`, `SoLuongVe`, `GiaVe`, `ID_MaTuyen`, `ID_LoaiVe`) VALUES
(7657, NULL, 'VJ002', 1, '2024-03-03 04:10:00', '2024-03-03 05:45:00', '0', 20, 1267890.00, 'LAQ745', 1),
(11324, NULL, 'QH007', 1, '2024-03-03 10:05:00', '2024-03-03 11:35:00', '0', 20, 1700000.00, 'SQP351', 2),
(12325, NULL, 'QH003', 1, '2024-03-03 00:20:00', '2024-03-03 01:55:00', '0', 20, 1534800.00, 'LAQ697', 2),
(12345, NULL, 'VJ007', 1, '2024-03-01 04:30:00', '2024-03-01 06:00:00', '0', 20, 1175840.00, 'PO003', 1),
(12368, NULL, 'VJ007', 1, '2024-03-04 06:05:00', '2024-03-04 07:35:00', '0', 20, 1866234.80, 'HSQ652', 2),
(12424, NULL, 'VN005', 1, '2024-04-02 10:05:00', '2024-04-02 11:20:00', '1', 20, 1200000.00, 'NH526', 2),
(12432, NULL, 'VN006', 1, '2024-05-04 10:05:00', '2024-05-04 11:30:00', '1', 20, 2000000.00, 'HDN226', 3),
(15463, NULL, 'VJ007', 1, '2024-03-01 04:00:00', '2024-03-01 05:30:00', '0', 20, 1175840.00, 'MT122', 1),
(15615, NULL, 'QH003', 1, '2024-03-01 00:20:00', '2024-03-01 01:50:00', '0', 20, 1534800.00, 'DA001', 1),
(15789, NULL, 'VN005', 1, '2024-03-01 15:00:00', '2024-03-01 16:30:00', '0', 20, 1905000.00, 'MT125', 1),
(15796, NULL, 'VN006', 1, '2024-03-01 08:00:00', '2024-03-01 09:20:00', '0', 20, 1905000.00, 'MT114', 1),
(15798, NULL, 'VN001', 1, '2024-03-01 14:20:00', '2024-03-01 15:40:00', '0', 20, 1470000.00, 'MT004', 3),
(15985, NULL, 'QH007', 1, '2024-03-02 04:10:00', '2024-03-02 05:40:00', '0', 20, 1267890.00, 'SDN001', 1),
(17833, NULL, 'VN001', 1, '2024-03-01 09:00:00', '2024-03-01 10:30:00', '0', 20, 1905000.00, 'MT126', 1),
(17846, NULL, 'VJ007', 1, '2024-03-01 17:00:00', '2024-03-01 18:30:00', '0', 20, 1274000.00, 'MT113', 1),
(17848, NULL, 'VN006', 1, '2024-03-01 08:30:00', '2024-03-01 10:00:00', '0', 20, 1960000.00, 'TM103', 2),
(17861, NULL, 'QH007', 1, '2024-03-01 05:00:00', '2024-03-01 06:40:00', '0', 20, 1303000.00, 'MT106', 1),
(17889, NULL, 'VN005', 1, '2024-03-01 07:00:00', '2024-03-01 08:30:00', '0', 20, 3268000.00, 'DA004', 3),
(17893, NULL, 'VJ002', 1, '2024-03-01 09:00:00', '2024-01-10 10:30:00', '0', 20, 1534000.00, 'MT003', 2),
(17896, NULL, 'VJ007', 1, '2024-03-01 07:00:00', '2024-03-01 08:30:00', '0', 20, 3268000.00, 'MT101', 3),
(18746, NULL, 'VJ006', 1, '2024-03-01 15:30:00', '2024-03-01 16:45:00', '0', 20, 1445100.00, 'MT112', 1),
(18975, NULL, 'VJ002', 1, '2024-03-01 14:30:00', '2024-03-01 15:50:00', '0', 20, 832000.00, 'MT100', 2),
(21323, NULL, 'VN006', 1, '2024-03-05 10:05:00', '2024-03-05 11:30:00', '0', 20, 2000000.00, 'ERQ226', 2),
(21765, NULL, 'QH003', 1, '2024-03-05 00:20:00', '2024-03-05 01:45:00', '0', 20, 2500000.00, 'ERQ486', 3),
(22234, NULL, 'VJ006', 1, '2024-03-01 05:00:00', '2024-03-01 06:40:00', '0', 20, 1303000.00, 'DA003', 1),
(23115, NULL, 'QH003', 1, '2024-03-05 00:20:00', '2024-03-05 01:20:00', '0', 20, 2500000.00, 'OPS486', 3),
(23123, NULL, 'VN005', 2, '2024-04-04 16:25:00', '2024-04-04 18:35:00', '1', 20, 1758000.00, 'HAH897', 1),
(23147, NULL, 'VN001', 1, '2024-03-02 09:10:00', '2024-03-02 10:40:00', '0', 20, 1947230.00, 'SDN125', 1),
(23156, NULL, 'QH003', 1, '2024-03-03 11:15:00', '2024-03-03 12:45:00', '0', 20, 1500000.00, 'SC741', 3),
(23214, NULL, 'VJ002', 1, '2024-03-04 11:05:00', '2024-03-04 12:40:00', '0', 20, 2376701.25, 'SDD348', 3),
(23432, NULL, 'QH007', 1, '2024-03-05 04:30:00', '2024-03-05 05:55:00', '0', 20, 1800000.00, 'ERQ501', 2),
(24784, NULL, 'VJ002', 1, '2024-03-01 19:00:00', '2024-02-01 20:10:00', '0', 20, 1534000.00, 'MT006', 2),
(25489, NULL, 'QH007', 1, '2024-03-01 06:00:00', '2024-03-01 07:20:00', '0', 20, 1470000.00, 'MT001', 2),
(25789, NULL, 'VN006', 1, '2024-03-01 16:00:00', '2024-01-10 17:30:00', '0', 20, 1905000.00, 'MT117', 1),
(26572, NULL, 'VJ006', 1, '2024-03-02 16:10:00', '2024-03-02 17:40:00', '0', 20, 1900980.00, 'SDL002', 2),
(26578, NULL, 'VJ007', 1, '2024-03-01 05:00:00', '2024-03-01 06:20:00', '0', 20, 2769000.00, 'DA002', 2),
(26789, NULL, 'VJ007', 1, '2024-03-02 09:10:00', '2024-03-02 10:30:00', '0', 20, 1598880.00, 'SDL123', 2),
(27896, NULL, 'VJ007', 1, '2024-03-01 14:00:00', '2024-03-01 15:30:00', '0', 20, 1178400.00, 'MT121', 1),
(28792, NULL, 'VJ002', 1, '2024-03-01 04:00:00', '2024-03-01 05:20:00', '0', 20, 1113700.00, 'MT111', 1),
(32156, NULL, 'VJ006', 1, '2024-03-02 14:30:00', '2024-03-02 15:50:00', '0', 20, 1784560.00, 'SDN123', 3),
(32554, NULL, 'QH003', 1, '2024-03-02 05:10:00', '2024-03-02 06:50:00', '0', 20, 1876500.00, 'SDN245', 1),
(34367, NULL, 'QH007', 1, '2024-03-04 10:15:00', '2024-03-04 11:45:00', '0', 20, 1388122.65, 'HSQ486', 2),
(34578, NULL, 'VJ006', 1, '2024-03-03 16:35:00', '2024-03-03 18:05:00', '0', 20, 1000000.00, 'SC692', 2),
(36578, NULL, 'VN001', 1, '2024-03-01 03:00:00', '2024-03-01 04:30:00', '0', 20, 4348000.00, 'MT124', 3),
(41232, NULL, 'QH007', 1, '2024-05-04 04:30:00', '2024-05-04 05:55:00', '1', 20, 900000.00, 'HDN001', 1),
(42132, NULL, 'VJ002', 1, '2024-03-04 09:55:00', '2024-03-04 11:30:00', '0', 20, 1298952.15, 'HSQ798', 1),
(43422, NULL, 'QH008', 1, '2024-03-04 09:45:00', '2024-03-04 11:15:00', '0', 20, 1600796.85, 'HSQ321', 2),
(44784, NULL, 'VJ006', 1, '2024-03-01 12:00:00', '2024-03-01 13:20:00', '0', 20, 1278000.00, 'MT123', 1),
(45543, NULL, 'VJ007', 2, '2024-04-04 10:20:00', '2024-04-04 12:30:00', '1', 20, 1798323.20, 'HAH031', 1),
(45678, NULL, 'VJ006', 1, '2024-03-01 08:30:00', '2024-03-01 10:00:00', '0', 20, 1405000.00, 'PO005', 1),
(45766, NULL, 'QH007', 1, '2024-03-04 11:25:00', '2024-03-04 12:55:00', '0', 20, 2320567.75, 'SDD732', 3),
(45894, NULL, 'QH007', 2, '2024-03-04 08:40:00', '2024-03-04 10:50:00', '0', 20, 2208233.90, 'SHH234', 2),
(46587, NULL, 'VJ006', 1, '2024-03-01 17:00:00', '2024-03-01 18:20:00', '0', 20, 2949000.00, 'MT110', 2),
(47853, NULL, 'VN001', 1, '2024-03-01 07:15:00', '2024-03-01 08:35:00', '0', 20, 3500000.00, 'HC003', 2),
(47882, NULL, 'VJ007', 1, '2024-03-02 08:10:00', '2024-03-02 09:30:00', '0', 20, 1598880.00, 'SDN003', 1),
(48796, NULL, 'VJ006', 1, '2024-03-01 21:00:00', '2024-03-01 22:30:00', '0', 20, 1178400.00, 'MT120', 1),
(48922, NULL, 'VJ007', 1, '2024-03-01 00:20:00', '2024-01-10 01:50:00', '0', 20, 1534800.00, 'MT005', 2),
(48981, NULL, 'VJ006', 1, '2024-03-01 15:30:00', '2024-03-01 17:00:00', '0', 20, 1450000.00, 'TM102', 1),
(51344, NULL, 'VN001', 2, '2024-03-04 14:15:00', '2024-03-04 16:25:00', '0', 20, 2496395.50, 'SHH754', 2),
(52365, NULL, 'QH008', 1, '2024-03-03 06:15:00', '2024-03-03 07:45:00', '0', 20, 1600000.00, 'SQP771', 2),
(53243, NULL, 'VJ007', 1, '2024-03-03 04:30:00', '2024-03-03 06:05:00', '0', 20, 1175840.00, 'LAQ098', 1),
(54341, NULL, 'VJ002', 2, '2024-03-04 08:20:00', '2024-03-04 10:30:00', '0', 20, 1731284.85, 'SHH665', 1),
(54343, NULL, 'QH003', 1, '2024-05-04 00:20:00', '2024-05-04 01:45:00', '1', 20, 2500000.00, 'HDN486', 4),
(54353, NULL, 'VJ007', 1, '2024-05-04 04:10:00', '2024-05-04 05:35:00', '1', 20, 1500000.00, 'HDN098', 2),
(54354, NULL, 'VJ002', 2, '2024-04-04 10:30:00', '2024-04-04 12:40:00', '1', 20, 2393821.75, 'HAH554', 2),
(54366, NULL, 'QH003', 1, '2024-04-02 00:20:00', '2024-04-02 01:35:00', '1', 20, 2300000.00, 'NH686', 4),
(54367, NULL, 'VJ002', 1, '2024-03-05 04:10:00', '2024-03-05 05:10:00', '0', 20, 1800000.00, 'OPS098', 2),
(54377, NULL, 'VN005', 1, '2024-03-03 06:40:00', '2024-03-03 08:10:00', '0', 20, 1200000.00, 'SC226', 2),
(54655, NULL, 'QH003', 2, '2024-04-04 06:40:00', '2024-04-04 08:50:00', '1', 20, 1610570.55, 'HAH035', 1),
(54667, NULL, 'VN001', 1, '2024-03-03 04:00:00', '2024-03-03 05:35:00', '0', 20, 1175840.00, 'LAQ226', 1),
(54688, NULL, 'VN001', 1, '2024-03-03 05:30:00', '2024-03-03 07:00:00', '0', 20, 1800000.00, 'SQP226', 2),
(55567, NULL, 'VJ007', 1, '2024-03-01 05:00:00', '2024-03-01 06:20:00', '0', 20, 3200000.00, 'HC002', 2),
(56546, NULL, 'VJ002', 1, '2024-03-05 04:10:00', '2024-03-05 05:35:00', '0', 20, 1500000.00, 'ERQ198', 1),
(56597, NULL, 'QH003', 1, '2024-03-01 00:20:00', '2024-03-01 01:50:00', '0', 20, 2200000.00, 'HC001', 1),
(56989, NULL, 'QH008', 1, '2024-03-02 05:10:00', '2024-03-02 06:40:00', '0', 20, 1267890.00, 'SDL001', 1),
(57846, NULL, 'VN005', 1, '2024-03-01 15:00:00', '2024-01-10 16:40:00', '0', 20, 832000.00, 'MT105', 1),
(58768, NULL, 'QH008', 1, '2024-03-01 13:00:00', '2024-03-01 14:40:00', '0', 20, 1519000.00, 'MT107', 1),
(58797, NULL, 'VN001', 1, '2024-03-01 14:45:00', '2024-03-01 16:15:00', '0', 20, 1240000.00, 'TM104', 1),
(59788, NULL, 'VJ006', 1, '2024-03-02 00:20:00', '2024-03-02 01:50:00', '0', 20, 2478110.00, 'HAL152', 1),
(65243, NULL, 'VJ006', 1, '2024-03-03 16:25:00', '2024-03-03 17:55:00', '0', 20, 1200000.00, 'SQP365', 1),
(65334, NULL, 'QH003', 2, '2024-03-04 04:30:00', '2024-03-04 06:40:00', '0', 20, 1629301.55, 'SHH245', 1),
(65421, NULL, 'VJ006', 1, '2024-03-05 04:30:00', '2024-03-05 05:30:00', '0', 20, 1200000.00, 'OPS001', 1),
(65431, NULL, 'VJ007', 1, '2024-03-05 06:05:00', '2024-03-05 08:05:00', '0', 20, 2300000.00, 'SPH102', 3),
(65435, NULL, 'VJ006', 1, '2024-05-04 06:05:00', '2024-05-04 07:30:00', '1', 20, 2300000.00, 'HDN002', 4),
(65456, NULL, 'VJ002', 1, '2024-04-02 04:10:00', '2024-04-02 05:25:00', '1', 20, 800000.00, 'NH018', 1),
(65467, NULL, 'QH007', 1, '2024-04-02 04:30:00', '2024-04-02 05:45:00', '1', 20, 1300000.00, 'NH401', 2),
(65483, NULL, 'VJ006', 1, '2024-03-05 06:05:00', '2024-03-05 07:30:00', '0', 20, 2300000.00, 'ERQ602', 3),
(65622, NULL, 'VN006', 1, '2024-03-03 18:40:00', '2024-03-03 20:10:00', '0', 20, 2000000.00, 'SC556', 4),
(65644, NULL, 'VJ007', 1, '2024-03-03 07:10:00', '2024-03-03 08:40:00', '0', 20, 800000.00, 'SC098', 1),
(65674, NULL, 'VN006', 1, '2024-03-02 15:30:00', '2024-03-02 16:50:00', '0', 20, 1784560.00, 'SDL125', 2),
(65743, NULL, 'VJ007', 1, '2024-03-03 06:00:00', '2024-03-03 07:30:00', '0', 20, 1500000.00, 'SQP098', 2),
(65754, NULL, 'VN005', 1, '2024-03-04 15:50:00', '2024-03-04 17:20:00', '0', 20, 1070455.80, 'HSQ216', 1),
(65789, NULL, 'VN006', 1, '2024-03-03 08:00:00', '2024-03-03 09:35:00', '0', 20, 1905000.00, 'LAQ726', 3),
(65978, NULL, 'VN006', 1, '2024-03-02 15:00:00', '2024-03-02 16:30:00', '0', 20, 2822370.00, 'HAL230', 1),
(66543, NULL, 'VN005', 1, '2024-03-04 16:00:00', '2024-03-04 17:30:00', '0', 20, 1687418.90, 'SDD766', 2),
(67890, NULL, 'VJ007', 1, '2024-03-01 15:30:00', '2024-03-01 17:00:00', '0', 20, 1305000.00, 'PO004', 1),
(68746, NULL, 'VN006', 1, '2024-03-01 10:00:00', '2024-03-01 11:30:00', '0', 20, 1905000.00, 'MT116', 1),
(68884, NULL, 'VJ006', 1, '2024-03-03 15:00:00', '2024-03-03 16:35:00', '0', 20, 1905000.00, 'LAQ778', 2),
(68920, NULL, 'VJ007', 1, '2024-03-01 17:00:00', '2024-01-10 18:20:00', '0', 20, 1534800.00, 'MT007', 2),
(68957, NULL, 'VJ002', 1, '2024-03-02 15:10:00', '2024-03-02 16:40:00', '0', 20, 1900980.00, 'SDN002', 1),
(74823, NULL, 'VJ002', 1, '2024-03-01 14:20:00', '2024-03-01 15:30:00', '0', 20, 1530000.00, 'MT002', 2),
(75644, NULL, 'QH008', 2, '2024-04-04 10:50:00', '2024-04-04 13:00:00', '1', 20, 1358000.00, 'HAH055', 1),
(76454, NULL, 'QH003', 1, '2024-03-04 07:15:00', '2024-03-04 08:40:00', '0', 20, 2032798.60, 'SDD546', 3),
(76534, NULL, 'VJ007', 2, '2024-03-04 08:10:00', '2024-03-04 10:20:00', '0', 20, 2293795.20, 'SHH132', 2),
(76555, NULL, 'VN001', 1, '2024-03-05 10:05:00', '2024-03-05 11:05:00', '0', 20, 2000000.00, 'OPS226', 2),
(77646, NULL, 'QH003', 1, '2024-03-03 01:50:00', '2024-03-03 03:20:00', '0', 20, 1300000.00, 'SQP447', 1),
(77894, NULL, 'QH007', 1, '2024-03-01 09:00:00', '2024-03-01 10:40:00', '0', 20, 2636000.00, 'MT109', 3),
(78436, NULL, 'VJ002', 1, '2024-03-01 13:00:00', '2024-03-01 14:30:00', '0', 20, 1123380.00, 'MT102', 1),
(78564, NULL, 'VN001', 1, '2024-03-04 10:55:00', '2024-03-04 12:25:00', '0', 20, 1894159.35, 'SDD121', 2),
(78946, NULL, 'QH003', 1, '2024-03-01 04:00:00', '2024-03-01 06:00:00', '0', 20, 3175840.00, 'HL109', 3),
(87453, NULL, 'QH003', 1, '2024-03-04 06:05:00', '2024-03-04 07:30:00', '0', 20, 1561232.75, 'HSQ456', 2),
(87456, NULL, 'VJ007', 1, '2024-03-01 04:30:00', '2024-03-01 06:00:00', '0', 20, 1780000.00, 'TM101', 1),
(87562, NULL, 'VN006', 1, '2024-03-01 18:20:00', '2024-01-10 20:00:00', '0', 20, 2459000.00, 'MT104', 2),
(87634, NULL, 'VJ007', 1, '2024-04-02 06:05:00', '2024-04-02 07:20:00', '1', 20, 2300000.00, 'NH102', 4),
(87855, NULL, 'VJ002', 1, '2024-03-01 09:20:00', '2024-03-01 11:20:00', '0', 20, 2340000.00, 'HL111', 2),
(87879, NULL, 'QH007', 1, '2024-03-03 03:00:00', '2024-03-03 04:30:00', '0', 20, 1700000.00, 'SC486', 3),
(87926, NULL, 'VN005', 1, '2024-03-01 21:00:00', '2024-01-10 22:30:00', '0', 20, 1905000.00, 'MT115', 1),
(87956, NULL, 'VN005', 1, '2024-03-02 17:10:00', '2024-03-02 18:40:00', '0', 20, 1356780.00, 'SDN126', 1),
(88576, NULL, 'VN005', 1, '2024-03-03 17:30:00', '2024-03-03 19:00:00', '0', 20, 2000000.00, 'SQP256', 3),
(88669, NULL, 'VJ007', 1, '2024-03-01 16:30:00', '2024-03-01 18:30:00', '0', 20, 2950000.00, 'HL110', 3),
(92657, NULL, 'QH007', 1, '2024-03-01 19:20:00', '2024-03-01 21:00:00', '0', 20, 2431000.00, 'MT108', 3),
(96454, NULL, 'VJ006', 1, '2024-03-04 07:15:00', '2024-03-04 08:45:00', '0', 20, 2203084.05, 'SDD412', 3),
(97867, NULL, 'QH003', 1, '2024-03-03 14:20:00', '2024-03-03 15:55:00', '0', 20, 1470000.00, 'LAQ647', 2),
(98267, NULL, 'VN001', 1, '2024-03-01 05:00:00', '2024-01-10 06:40:00', '0', 20, 1400000.00, 'MT103', 1),
(98765, NULL, 'VJ002', 1, '2024-03-01 14:45:00', '2024-03-01 16:15:00', '0', 20, 1470000.00, 'PO006', 1),
(99863, NULL, 'QH007', 1, '2024-03-02 10:10:00', '2024-03-02 11:40:00', '0', 20, 1947230.00, 'SDL245', 2),
(112324, NULL, 'VJ002', 1, '2024-03-04 05:30:00', '2024-03-04 06:50:00', '0', 20, 1897210.50, 'HAD098', 2),
(123126, NULL, 'QH003', 2, '2024-04-02 00:20:00', '2024-04-02 01:20:00', '1', 20, 2500000.00, 'SDX486', 3),
(123155, NULL, 'QH007', 2, '2024-03-03 08:25:00', '2024-03-03 10:35:00', '0', 20, 1600000.00, 'NQ546', 2),
(123256, NULL, 'VJ006', 1, '2024-03-02 16:50:00', '2024-03-02 18:20:00', '0', 20, 1905000.00, 'DH226', 2),
(123547, NULL, 'QH003', 1, '2024-03-05 00:20:00', '2024-03-05 01:40:00', '0', 20, 2500000.00, 'NDA876', 3),
(123578, NULL, 'QH008', 1, '2024-03-05 04:30:00', '2024-03-05 06:40:00', '0', 20, 2000000.00, 'NGS651', 2),
(123676, NULL, 'VJ007', 1, '2024-03-04 06:50:00', '2024-03-04 08:10:00', '0', 20, 1175840.00, 'HAD432', 1),
(124356, NULL, 'QH003', 1, '2024-03-02 02:30:00', '2024-03-02 04:00:00', '0', 20, 2345678.00, 'DD001', 1),
(132554, NULL, 'VN006', 1, '2024-04-03 12:15:00', '2024-04-03 13:45:00', '1', 20, 2251054.50, 'JAK126', 2),
(156789, NULL, 'VJ007', 1, '2024-04-01 05:30:00', '2024-04-01 07:30:00', '1', 20, 1520000.00, 'AB478', 1),
(213546, NULL, 'VJ007', 1, '2024-03-02 08:20:00', '2024-03-02 09:50:00', '0', 20, 1403522.35, 'PSQ502', 1),
(214125, NULL, 'VJ002', 1, '2024-03-05 04:10:00', '2024-03-05 05:30:00', '0', 20, 1500000.00, 'NDA231', 1),
(214366, NULL, 'VJ007', 2, '2024-04-03 12:30:00', '2024-04-03 14:40:00', '1', 20, 1200000.00, 'GA098', 1),
(241256, NULL, 'VJ007', 1, '2024-03-03 04:30:00', '2024-03-03 06:40:00', '0', 20, 1175840.00, 'BWL098', 1),
(241887, NULL, 'VN001', 2, '2024-04-03 09:50:00', '2024-04-03 12:00:00', '1', 20, 1574000.00, 'NN226', 2),
(243653, NULL, 'VN001', 1, '2024-03-02 04:50:00', '2024-03-02 06:20:00', '0', 20, 1650475.00, 'DH078', 1),
(265988, NULL, 'QH007', 1, '2024-03-02 08:00:00', '2024-03-02 09:20:00', '0', 20, 2557050.00, 'HAL231', 1),
(268446, NULL, 'VJ007', 1, '2024-03-02 04:30:00', '2024-03-02 06:00:00', '0', 20, 2310470.00, 'HAL123', 3),
(321312, NULL, 'VJ002', 1, '2024-03-03 11:15:00', '2024-03-03 12:45:00', '0', 20, 1697000.75, 'SU112', 1),
(321314, NULL, 'VN001', 1, '2024-03-04 11:05:00', '2024-03-04 12:35:00', '0', 20, 1241158.50, 'SIL534', 2),
(321345, NULL, 'QH007', 1, '2024-03-04 01:20:00', '2024-03-04 02:50:00', '0', 20, 1553867.00, 'SIL154', 2),
(321443, NULL, 'VJ007', 1, '2024-03-02 02:00:00', '2024-03-02 03:30:00', '0', 20, 3245678.00, 'DD002', 2),
(321453, NULL, 'QH003', 1, '2024-04-03 02:30:00', '2024-04-03 04:05:00', '1', 20, 1637805.25, 'JAK486', 1),
(321456, NULL, 'QH003', 1, '2024-03-03 00:20:00', '2024-03-03 01:30:00', '0', 20, 1534800.00, 'BWL486', 2),
(321565, NULL, 'QH007', 1, '2024-03-04 06:30:00', '2024-03-04 08:00:00', '0', 20, 1658545.70, 'SQC645', 3),
(323123, NULL, 'QH008', 2, '2024-04-05 04:30:00', '2024-04-05 06:40:00', '1', 20, 1300000.00, 'HQB411', 1),
(325364, NULL, 'QH008', 1, '2024-03-03 18:40:00', '2024-03-03 20:10:00', '0', 20, 1978000.25, 'SU001', 2),
(325467, NULL, 'VN006', 1, '2024-03-03 05:00:00', '2024-03-03 06:35:00', '0', 20, 1000000.00, 'TD226', 1),
(325567, NULL, 'VJ006', 1, '2024-03-03 08:00:00', '2024-03-03 09:10:00', '0', 20, 1905000.00, 'BWL002', 2),
(335223, NULL, 'VJ002', 1, '2024-04-03 06:20:00', '2024-04-03 07:55:00', '1', 20, 2056980.75, 'JAK698', 2),
(343523, NULL, 'VJ002', 1, '2024-03-02 02:10:00', '2024-03-02 03:40:00', '0', 20, 1744950.00, 'DH098', 1),
(346876, NULL, 'VJ007', 1, '2024-03-02 09:50:00', '2024-03-02 11:10:00', '0', 20, 1905000.00, 'AL098', 2),
(358875, NULL, 'VJ007', 1, '2024-04-01 06:10:00', '2024-04-01 07:40:00', '1', 20, 2193074.30, 'JAK242', 2),
(387895, NULL, 'PA004', 1, '2024-04-01 10:00:00', '2024-04-01 11:30:00', '1', 20, 1270000.00, 'AB666', 1),
(421322, NULL, 'VN006', 1, '2024-03-04 14:25:00', '2024-03-04 15:55:00', '0', 20, 1378491.25, 'PSQ726', 1),
(423424, NULL, 'QH003', 1, '2024-03-04 02:20:00', '2024-03-04 03:55:00', '0', 20, 1767861.15, 'SQC655', 3),
(423466, NULL, 'QH008', 1, '2024-04-01 06:40:00', '2024-04-01 08:10:00', '1', 20, 2731423.70, 'JAK741', 3),
(425461, NULL, 'VN001', 1, '2024-03-03 04:00:00', '2024-03-03 05:10:00', '0', 20, 1175840.00, 'BWL226', 1),
(432345, NULL, 'QH003', 1, '2024-03-04 05:00:00', '2024-03-04 06:30:00', '0', 20, 865414.50, 'SIL124', 1),
(432356, NULL, 'VN001', 1, '2024-03-05 10:05:00', '2024-03-05 12:15:00', '0', 20, 1700000.00, 'NGS226', 2),
(432456, NULL, 'QH008', 1, '2024-03-04 05:30:00', '2024-03-04 07:00:00', '0', 20, 1864908.15, 'SIL422', 3),
(432661, NULL, 'QH003', 1, '2024-03-03 03:00:00', '2024-03-03 04:30:00', '0', 20, 1323000.25, 'SU486', 1),
(434358, NULL, 'VJ002', 1, '2024-03-03 14:20:00', '2024-03-03 15:30:00', '0', 20, 1470000.00, 'BWL267', 2),
(434361, NULL, 'QH007', 1, '2024-03-03 15:00:00', '2024-03-03 16:10:00', '0', 20, 1905000.00, 'BWL001', 2),
(435476, NULL, 'VJ002', 2, '2024-04-03 05:10:00', '2024-04-03 07:20:00', '1', 20, 2340000.00, 'NN502', 3),
(435575, NULL, 'QH003', 1, '2024-03-02 16:10:00', '2024-03-02 17:40:00', '0', 20, 3567890.00, 'DDA001', 2),
(436578, NULL, 'VN001', 1, '2024-03-03 04:10:00', '2024-03-03 05:20:00', '0', 20, 1267890.00, 'BWL157', 1),
(523431, NULL, 'VJ002', 1, '2024-03-05 06:10:00', '2024-03-05 08:20:00', '0', 20, 1267890.00, 'NGS222', 1),
(532431, NULL, 'VJ002', 1, '2024-03-04 08:30:00', '2024-03-04 10:05:00', '0', 20, 1617980.45, 'PSQ098', 1),
(542132, NULL, 'VJ007', 2, '2024-04-05 06:05:00', '2024-04-05 08:15:00', '1', 20, 2300000.00, 'HQB652', 3),
(543132, NULL, 'VJ007', 1, '2024-03-05 06:05:00', '2024-03-05 08:15:00', '0', 20, 2500000.00, 'NGS442', 3),
(543232, NULL, 'QH008', 1, '2024-03-05 04:30:00', '2024-03-05 05:50:00', '0', 20, 1800000.00, 'DAD054', 2),
(543451, NULL, 'VJ002', 2, '2024-04-05 04:10:00', '2024-04-05 05:10:00', '1', 20, 9300000.00, 'DSQ098', 1),
(543453, NULL, 'VJ002', 2, '2024-04-05 04:10:00', '2024-04-05 06:20:00', '1', 20, 1500000.00, 'HQB421', 1),
(543455, NULL, 'VJ002', 1, '2024-03-04 06:10:00', '2024-03-04 07:45:00', '0', 20, 873469.30, 'SQC698', 1),
(543533, NULL, 'VN005', 1, '2024-03-04 11:25:00', '2024-03-04 12:45:00', '0', 20, 1200358.25, 'HAD216', 2),
(543543, NULL, 'QH003', 1, '2024-03-04 01:20:00', '2024-03-04 02:55:00', '0', 20, 991235.75, 'SIL442', 1),
(543546, NULL, 'QH003', 2, '2024-03-03 03:00:00', '2024-03-03 05:10:00', '0', 20, 1300000.00, 'NQ286', 2),
(543671, NULL, 'QH008', 1, '2024-03-05 04:30:00', '2024-03-05 06:30:00', '0', 20, 1800000.00, 'SPH021', 2),
(543673, NULL, 'VN005', 1, '2024-03-03 06:40:00', '2024-03-03 08:10:00', '0', 20, 1890000.75, 'SU226', 2),
(545234, NULL, 'QH003', 1, '2024-03-02 04:20:00', '2024-03-02 06:10:00', '0', 20, 1650475.00, 'DH486', 1),
(545412, NULL, 'VJ007', 1, '2024-03-03 05:30:00', '2024-03-03 07:05:00', '0', 20, 1200000.00, 'TD098', 1),
(545433, NULL, 'VJ007', 2, '2024-04-03 10:20:00', '2024-04-03 12:30:00', '1', 20, 943000.00, 'NN098', 1),
(545478, NULL, 'QH003', 1, '2024-03-04 04:40:00', '2024-03-04 06:15:00', '0', 20, 2780627.15, 'PSQ786', 3),
(546422, NULL, 'VJ007', 2, '2024-03-03 08:10:00', '2024-03-03 10:20:00', '0', 20, 800000.00, 'NQ198', 1),
(546543, NULL, 'VJ007', 1, '2024-03-03 07:10:00', '2024-03-03 08:40:00', '0', 20, 1578000.50, 'SU098', 1),
(546678, NULL, 'VJ006', 1, '2024-03-02 09:10:00', '2024-03-02 10:30:00', '0', 20, 2978901.00, 'DDA002', 2),
(547678, NULL, 'VN001', 2, '2024-04-03 12:00:00', '2024-04-03 14:10:00', '1', 20, 1600000.00, 'GA226', 2),
(554112, NULL, 'VJ002', 1, '2024-03-04 05:10:00', '2024-03-04 06:45:00', '0', 20, 1957300.25, 'SIL668', 3),
(564642, NULL, 'VN005', 1, '2024-03-05 10:05:00', '2024-03-05 11:25:00', '0', 20, 2000000.00, 'NDA653', 2),
(568945, NULL, 'VJ006', 1, '2024-03-02 09:00:00', '2024-03-02 10:30:00', '0', 20, 2557050.00, 'HAL653', 1),
(576854, NULL, 'VJ002', 1, '2024-03-02 01:20:00', '2024-03-02 02:50:00', '0', 20, 2845678.00, 'DD003', 1),
(645769, NULL, 'QH003', 1, '2024-03-03 17:00:00', '2024-03-03 18:10:00', '0', 20, 1274000.00, 'BWL697', 1),
(652324, NULL, 'QH003', 1, '2024-03-04 02:40:00', '2024-03-04 04:00:00', '0', 20, 1534800.00, 'HAD486', 2),
(653123, NULL, 'VJ002', 2, '2024-04-02 04:10:00', '2024-04-02 05:10:00', '1', 20, 1100000.00, 'SDX098', 1),
(654112, NULL, 'VN006', 1, '2024-03-05 10:05:00', '2024-03-05 12:05:00', '0', 20, 2000000.00, 'SPH626', 2),
(654231, NULL, 'VN006', 2, '2024-04-05 10:05:00', '2024-04-05 12:15:00', '1', 20, 2000000.00, 'HQB216', 2),
(654413, NULL, 'QH003', 2, '2024-04-05 00:20:00', '2024-04-05 01:20:00', '1', 20, 2100000.00, 'DSQ486', 3),
(654446, NULL, 'VJ002', 1, '2024-03-05 04:10:00', '2024-03-05 06:20:00', '0', 20, 1267890.00, 'NGS498', 1),
(654522, NULL, 'VN001', 1, '2024-03-05 10:05:00', '2024-03-05 12:15:00', '0', 20, 1700000.00, 'NGS658', 2),
(654562, NULL, 'VN006', 2, '2024-04-02 10:05:00', '2024-04-02 11:05:00', '1', 20, 2000000.00, 'SDX226', 2),
(654593, NULL, 'VJ002', 2, '2024-03-03 18:35:00', '2024-03-03 20:45:00', '0', 20, 1300000.00, 'NQ516', 2),
(654654, NULL, 'VJ002', 1, '2024-03-05 04:10:00', '2024-03-05 06:10:00', '0', 20, 1500000.00, 'SPH538', 1),
(654672, NULL, 'VN005', 2, '2024-04-05 10:05:00', '2024-04-05 11:05:00', '1', 20, 1500000.00, 'DSQ226', 2),
(654744, NULL, 'VJ002', 1, '2024-03-03 09:00:00', '2024-03-03 10:35:00', '0', 20, 2000000.00, 'TD002', 3),
(654785, NULL, 'QH008', 1, '2024-03-03 16:00:00', '2024-03-03 17:35:00', '0', 20, 1800000.00, 'TD001', 3),
(657678, NULL, 'QH007', 1, '2024-03-02 10:50:00', '2024-03-02 12:20:00', '0', 20, 1905000.00, 'AL486', 2),
(657897, NULL, 'VJ007', 1, '2024-03-04 16:00:00', '2024-03-04 17:30:00', '0', 20, 1428124.75, 'SIL235', 2),
(659875, NULL, 'QH008', 1, '2024-03-02 14:20:00', '2024-03-02 15:40:00', '0', 20, 2639400.00, 'HAL245', 3),
(761232, NULL, 'VJ007', 2, '2024-04-02 06:05:00', '2024-04-02 07:05:00', '1', 20, 930000.00, 'SDX002', 1),
(763421, NULL, 'QH008', 2, '2024-04-05 04:30:00', '2024-04-05 05:30:00', '1', 20, 1630000.00, 'DSQ001', 2),
(764311, NULL, 'QH003', 2, '2024-04-05 00:20:00', '2024-04-05 02:30:00', '1', 20, 2500000.00, 'HQB586', 3),
(765231, NULL, 'VJ006', 2, '2024-03-03 12:15:00', '2024-03-03 14:25:00', '0', 20, 2100000.00, 'NQ602', 3),
(765431, NULL, 'QH003', 1, '2024-03-04 06:20:00', '2024-03-04 07:40:00', '0', 20, 1175840.00, 'HAD221', 1),
(765543, NULL, 'QH003', 1, '2024-03-05 00:20:00', '2024-03-05 02:30:00', '0', 20, 1534800.00, 'NGS486', 2),
(765756, NULL, 'VN001', 1, '2024-03-04 12:05:00', '2024-03-04 13:35:00', '0', 20, 1121937.60, 'SQC426', 2),
(768681, NULL, 'QH007', 2, '2024-04-02 04:30:00', '2024-04-02 05:30:00', '1', 20, 1800000.00, 'SDX001', 2),
(768971, NULL, 'VJ006', 2, '2024-04-05 06:05:00', '2024-04-05 07:05:00', '1', 20, 900000.00, 'DSQ002', 1),
(776654, NULL, 'VN001', 2, '2024-03-03 07:40:00', '2024-03-03 09:50:00', '0', 20, 1600000.00, 'NQ526', 2),
(785231, NULL, 'QH003', 1, '2024-03-05 00:20:00', '2024-03-05 02:20:00', '0', 20, 2500000.00, 'SPH486', 3),
(876556, NULL, 'VJ006', 1, '2024-03-04 06:00:00', '2024-03-04 07:30:00', '0', 20, 901967.40, 'SQC431', 1),
(876565, NULL, 'QH008', 1, '2024-03-02 08:50:00', '2024-03-02 10:20:00', '0', 20, 1765376.55, 'PSQ201', 2),
(876713, NULL, 'VJ007', 1, '2024-03-05 06:05:00', '2024-03-05 07:25:00', '0', 20, 2300000.00, 'DAD096', 2),
(978765, NULL, 'QH007', 1, '2024-03-03 01:20:00', '2024-03-03 02:55:00', '0', 20, 1500000.00, 'TD486', 2),
(980655, NULL, 'QH008', 1, '2024-03-03 09:00:00', '2024-03-03 10:10:00', '0', 20, 1905000.00, 'BWL874', 2),
(989761, NULL, 'QH007', 2, '2024-03-03 19:40:00', '2024-03-03 21:50:00', '0', 20, 2400000.00, 'NQ331', 3),
(998654, NULL, 'VN001', 1, '2024-03-02 15:40:00', '2024-03-02 17:00:00', '0', 20, 3745678.00, 'DDA003', 3),
(2564874, NULL, 'VN001', 1, '2024-03-02 04:00:00', '2024-03-02 05:30:00', '0', 20, 1318000.00, 'HAL125', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chuyenbayve`
--

CREATE TABLE `chuyenbayve` (
  `ID_ChuyenBayVe` int(11) NOT NULL,
  `ID_CHK` char(50) DEFAULT NULL,
  `SoHieu` varchar(50) DEFAULT NULL,
  `ID_LoaiBay` int(11) DEFAULT NULL,
  `ThoiGianDi` datetime DEFAULT NULL,
  `ThoiGianDen` datetime DEFAULT NULL,
  `TrangThai` varchar(100) NOT NULL,
  `SoLuongVe` int(11) DEFAULT NULL,
  `GiaVe` decimal(10,2) DEFAULT NULL,
  `ID_MaTuyen` varchar(50) DEFAULT NULL,
  `ID_LoaiVe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chuyenbayve`
--

INSERT INTO `chuyenbayve` (`ID_ChuyenBayVe`, `ID_CHK`, `SoHieu`, `ID_LoaiBay`, `ThoiGianDi`, `ThoiGianDen`, `TrangThai`, `SoLuongVe`, `GiaVe`, `ID_MaTuyen`, `ID_LoaiVe`) VALUES
(1546, NULL, 'VJ007', 2, '2024-03-01 10:00:00', '2024-03-01 11:30:00', '0', 20, 832800.00, 'XB101', 1),
(2323, NULL, 'VJ007', 2, '2024-05-01 00:20:00', '2024-01-05 01:50:00', '0', 20, 1534800.00, 'BA005', 2),
(3789, NULL, 'QH007', 2, '2024-04-01 08:04:00', '2024-04-01 10:05:00', '1', 20, 1500000.00, 'BB017', 1),
(5478, NULL, 'VJ006', 2, '2024-03-01 09:00:00', '2024-03-01 10:30:00', '0', 20, 1520760.00, 'SQ120', 1),
(6985, NULL, 'VJ007', 2, '2024-03-01 12:00:00', '2024-03-01 13:30:00', '0', 20, 1605000.00, 'SQ123', 1),
(12324, NULL, 'VJ007', 2, '2024-04-01 05:00:00', '2024-04-01 06:20:00', '1', 20, 2398000.00, 'SHN216', 2),
(12356, NULL, 'QH008', 2, '2024-03-04 14:25:00', '2024-03-04 15:55:00', '0', 20, 1327229.25, 'SGP876', 1),
(13256, NULL, 'VJ002', 2, '2024-03-04 12:00:00', '2024-03-04 13:30:00', '0', 20, 1605000.00, 'GP542', 2),
(15633, NULL, 'QH008', 1, '2024-03-01 00:20:00', '2024-03-01 01:50:00', '0', 20, 1534800.00, 'ND001', 1),
(15647, NULL, 'VJ007', 1, '2024-03-01 01:50:00', '2024-03-01 03:20:00', '0', 20, 2769000.00, 'SA002', 3),
(15789, NULL, 'PA004', 2, '2024-04-01 20:04:00', '2024-04-01 22:05:00', '1', 20, 1500000.00, 'AA745', 1),
(15986, NULL, 'VJ006', 1, '2024-03-01 05:00:00', '2024-03-01 06:40:00', '0', 20, 1303000.00, 'ND003', 1),
(17894, NULL, 'QH003', 2, '2024-05-01 02:00:00', '2024-05-01 03:30:00', '1', 20, 2139000.00, 'HD001', 1),
(17895, NULL, 'VJ007', 2, '2024-03-01 05:00:00', '2024-03-01 06:30:00', '0', 20, 832800.00, 'XB100', 1),
(17896, NULL, 'VJ007', 2, '2024-05-01 05:00:00', '2024-05-01 06:20:00', '1', 20, 2769000.00, 'SS202', 1),
(22267, NULL, 'QH007', 2, '2024-05-01 06:00:00', '2024-05-01 07:30:00', '1', 20, 2139000.00, 'SSQ001', 1),
(22434, NULL, 'QH008', 2, '2024-03-03 10:20:00', '2024-03-03 11:50:00', '0', 20, 1600000.00, 'DNA486', 1),
(23131, NULL, 'QH007', 2, '2024-05-01 05:00:00', '2024-05-01 06:40:00', '1', 20, 1303000.00, 'BA106', 1),
(23132, NULL, 'VJ007', 2, '2024-05-01 07:00:00', '2024-05-01 08:30:00', '1', 20, 3268000.00, 'BA101', 3),
(23154, NULL, 'VJ007', 2, '2024-05-01 04:00:00', '2024-05-01 05:30:00', '1', 20, 1175840.00, 'BA122', 1),
(23178, NULL, 'VJ002', 2, '2024-05-01 14:30:00', '2024-05-01 15:50:00', '1', 20, 832000.00, 'BA100', 2),
(23243, NULL, 'VJ006', 2, '2024-05-01 15:30:00', '2024-05-01 16:45:00', '1', 20, 1445100.00, 'BA112', 1),
(23251, NULL, 'VJ002', 2, '2024-05-01 14:20:00', '2024-05-01 15:30:00', '1', 20, 1530000.00, 'BA002', 2),
(23313, NULL, 'VN001', 2, '2024-05-01 09:00:00', '2024-05-01 10:30:00', '1', 20, 1905000.00, 'BA126', 1),
(23331, NULL, 'VJ007', 2, '2024-05-01 17:00:00', '2024-05-01 18:30:00', '1', 20, 1274000.00, 'BA113', 1),
(23551, NULL, 'VJ002', 2, '2024-05-01 07:00:00', '2024-05-01 08:40:00', '1', 20, 2028000.00, 'HD003', 1),
(25146, NULL, 'VN006', 2, '2024-05-01 08:00:00', '2024-05-01 09:20:00', '1', 20, 1905000.00, 'BA114', 1),
(25321, NULL, 'VN005', 2, '2024-05-01 15:00:00', '2024-05-01 16:30:00', '1', 20, 1905000.00, 'BA125', 1),
(25343, NULL, 'VN001', 2, '2024-05-01 14:20:00', '2024-05-01 15:40:00', '1', 20, 1470000.00, 'BA004', 3),
(25789, NULL, 'VN005', 1, '2024-03-01 05:30:00', '2024-03-01 07:00:00', '0', 20, 3268000.00, 'SA004', 3),
(27665, NULL, 'VJ002', 2, '2024-05-01 19:00:00', '2024-02-05 20:10:00', '0', 20, 1534000.00, 'BA006', 2),
(28789, NULL, 'PA004', 2, '2024-04-03 08:04:00', '2024-04-03 10:05:00', '1', 20, 1370000.00, 'BB133', 1),
(29786, NULL, 'VJ002', 2, '2024-05-01 13:00:00', '2024-05-01 14:25:00', '1', 20, 2658000.00, 'YQ202', 1),
(31234, NULL, 'VN006', 2, '2024-05-01 10:00:00', '2024-05-01 11:30:00', '1', 20, 1905000.00, 'BA116', 1),
(32134, NULL, 'VN006', 2, '2024-03-03 13:25:00', '2024-03-03 14:55:00', '0', 20, 1991000.00, 'SHU557', 2),
(32144, NULL, 'VN005', 2, '2024-03-04 04:55:00', '2024-03-04 06:25:00', '0', 20, 1200358.25, 'SDI765', 1),
(32312, NULL, 'VJ006', 2, '2024-05-01 17:00:00', '2024-05-01 18:20:00', '1', 20, 2949000.00, 'BA110', 2),
(32315, NULL, 'QH008', 2, '2024-03-03 10:25:00', '2024-03-03 11:55:00', '0', 20, 2048000.00, 'SHU486', 2),
(32321, NULL, 'VN001', 2, '2024-05-01 03:00:00', '2024-05-01 04:30:00', '1', 20, 4348000.00, 'BA124', 3),
(32324, NULL, 'VJ002', 2, '2024-05-01 09:00:00', '2024-01-05 10:30:00', '0', 20, 1534000.00, 'BA003', 2),
(32413, NULL, 'VN001', 2, '2024-04-03 13:25:00', '2024-04-03 14:55:00', '1', 20, 2187000.00, 'DAQ236', 3),
(32512, NULL, 'VN006', 2, '2024-04-03 02:45:00', '2024-04-03 04:15:00', '1', 20, 2215000.00, 'DAQ226', 3),
(32515, NULL, 'VN001', 2, '2024-05-01 07:00:00', '2024-05-01 08:20:00', '1', 20, 2102000.00, 'HD002', 1),
(32567, NULL, 'VN006', 2, '2024-03-03 06:20:00', '2024-03-03 07:40:00', '0', 20, 1800000.00, 'DNA554', 2),
(33112, NULL, 'QH008', 2, '2024-05-01 13:00:00', '2024-05-01 14:40:00', '1', 20, 1519000.00, 'BA107', 1),
(33311, NULL, 'VJ006', 2, '2024-05-01 12:00:00', '2024-05-01 13:20:00', '1', 20, 1278000.00, 'BA123', 1),
(33312, NULL, 'VJ006', 2, '2024-05-01 21:00:00', '2024-05-01 22:30:00', '1', 20, 1178400.00, 'BA120', 1),
(33367, NULL, 'VJ002', 1, '2024-03-01 05:00:00', '2024-03-01 06:20:00', '0', 20, 2769000.00, 'ND002', 3),
(35465, NULL, 'QH003', 2, '2024-04-03 10:25:00', '2024-04-03 11:55:00', '1', 20, 1832580.00, 'DAQ486', 2),
(35468, NULL, 'QH003', 2, '2024-04-01 06:25:00', '2024-04-01 07:45:00', '1', 20, 1892000.00, 'SHU169', 2),
(41435, NULL, 'VJ007', 2, '2024-03-03 10:25:00', '2024-03-03 11:50:00', '0', 20, 2320000.00, 'SHU898', 3),
(43234, NULL, 'QH007', 2, '2024-04-01 05:00:00', '2024-04-01 06:40:00', '1', 20, 1590000.00, 'SHN268', 1),
(43242, NULL, 'VN001', 2, '2024-03-04 00:20:00', '2024-03-04 01:50:00', '0', 20, 1534800.00, 'GP123', 2),
(43243, NULL, 'VJ007', 2, '2024-03-02 09:00:00', '2024-03-02 10:30:00', '0', 20, 1887000.00, 'SHN003', 2),
(43245, NULL, 'QH008', 2, '2024-03-04 14:30:00', '2024-03-04 16:00:00', '0', 20, 1749235.75, 'SDA121', 1),
(43432, NULL, 'VN005', 2, '2024-03-04 02:30:00', '2024-03-04 04:00:00', '0', 20, 1275489.50, 'SDA226', 1),
(43454, NULL, 'VJ006', 2, '2024-03-02 00:20:00', '2024-03-02 01:50:00', '0', 20, 1680000.00, 'SHN002', 2),
(43512, NULL, 'VJ007', 2, '2024-04-03 11:25:00', '2024-04-03 12:55:00', '1', 20, 1885200.00, 'DAQ098', 2),
(43546, NULL, 'VJ007', 2, '2024-03-03 11:20:00', '2024-03-03 12:50:00', '0', 20, 1800000.00, 'DNA098', 2),
(44411, NULL, 'VJ007', 2, '2024-05-01 17:00:00', '2024-01-05 18:20:00', '0', 20, 1534800.00, 'BA007', 2),
(44895, NULL, 'VJ007', 2, '2024-05-01 11:00:00', '2024-05-01 12:20:00', '1', 20, 2102000.00, 'SSQ002', 1),
(45321, NULL, 'VN001', 2, '2024-03-03 01:45:00', '2024-03-03 03:15:00', '0', 20, 1734000.00, 'SHU226', 2),
(46564, NULL, 'VJ006', 2, '2024-04-01 06:00:00', '2024-04-01 07:30:00', '1', 20, 2470000.00, 'SHN975', 3),
(47846, NULL, 'VJ006', 2, '2024-05-01 12:00:00', '2024-05-01 13:30:00', '1', 20, 2658000.00, 'SS200', 1),
(47856, NULL, 'VJ002', 2, '2024-05-01 09:00:00', '2024-05-01 10:40:00', '1', 20, 2028000.00, 'HSQ003', 1),
(47895, NULL, 'VJ007', 2, '2024-05-01 18:00:00', '2024-05-01 19:30:00', '1', 20, 3046800.00, 'SS201', 1),
(48486, NULL, 'QH007', 2, '2024-05-01 04:00:00', '2024-05-01 05:30:00', '1', 20, 2139000.00, 'HSQ001', 1),
(52354, NULL, 'QH003', 2, '2024-03-02 10:00:00', '2024-03-02 11:30:00', '0', 20, 1325000.00, 'SHN001', 1),
(53411, NULL, 'VN006', 2, '2024-04-05 10:05:00', '2024-04-05 11:05:00', '1', 20, 2000000.00, 'SN226', 3),
(53566, NULL, 'VJ002', 2, '2024-05-01 16:30:00', '2024-05-01 17:50:00', '1', 20, 2135000.00, 'DH003', 1),
(54235, NULL, 'VJ002', 2, '2024-04-05 04:10:00', '2024-04-05 05:10:00', '1', 20, 700000.00, 'SN098', 1),
(54344, NULL, 'VJ007', 2, '2024-03-04 14:35:00', '2024-03-04 16:45:00', '0', 20, 1897210.50, 'SDI553', 2),
(54345, NULL, 'QH003', 2, '2024-03-04 10:10:00', '2024-03-04 11:40:00', '0', 20, 2120862.25, 'SDA446', 2),
(54354, NULL, 'VJ007', 2, '2024-03-04 12:10:00', '2024-03-04 14:20:00', '0', 20, 1987634.75, 'SDA448', 2),
(54363, NULL, 'VJ007', 2, '2024-05-01 14:00:00', '2024-05-01 15:30:00', '1', 20, 1178400.00, 'BA121', 1),
(54366, NULL, 'VN005', 2, '2024-03-03 01:40:00', '2024-03-03 03:10:00', '0', 20, 2234567.89, 'DNA226', 3),
(54367, NULL, 'VJ007', 2, '2024-04-04 13:35:00', '2024-04-04 15:45:00', '1', 20, 2718321.50, 'NDG024', 3),
(54436, NULL, 'QH003', 2, '2024-03-03 01:40:00', '2024-03-03 03:10:00', '0', 20, 2234567.89, 'DNA231', 2),
(54533, NULL, 'VJ002', 2, '2024-05-01 04:00:00', '2024-05-01 05:20:00', '1', 20, 1113700.00, 'BA111', 1),
(54646, NULL, 'VN001', 2, '2024-03-02 12:00:00', '2024-03-02 13:30:00', '0', 20, 1615000.00, 'SHN004', 1),
(54789, NULL, 'VN005', 2, '2024-03-01 12:00:00', '2024-03-01 13:30:00', '0', 20, 1184000.00, 'XB103', 1),
(55552, NULL, 'QH003', 2, '2024-05-01 09:00:00', '2024-05-01 10:30:00', '1', 20, 2778000.00, 'DH001', 2),
(55567, NULL, 'VJ002', 2, '2024-03-01 19:00:00', '2024-03-01 20:20:00', '0', 20, 1178400.00, 'SP112', 1),
(55778, NULL, 'VN006', 1, '2024-03-01 07:00:00', '2024-03-01 08:30:00', '0', 20, 3268000.00, 'ND004', 2),
(57445, NULL, 'QH008', 2, '2024-03-01 20:00:00', '2024-03-01 21:30:00', '0', 20, 1184000.00, 'VQ109', 1),
(57812, NULL, 'VJ002', 2, '2024-04-04 09:45:00', '2024-04-04 11:05:00', '1', 20, 2276550.75, 'NDG865', 2),
(57846, NULL, 'VN005', 2, '2024-05-01 15:00:00', '2024-01-05 16:40:00', '0', 20, 832000.00, 'BA105', 1),
(58879, NULL, 'VN001', 2, '2024-03-01 17:00:00', '2024-03-01 18:20:00', '0', 20, 1605000.00, 'SQ124', 1),
(58963, NULL, 'VJ006', 2, '2024-03-01 07:00:00', '2024-03-01 08:30:00', '0', 20, 832800.00, 'VQ100', 1),
(59769, NULL, 'VJ002', 2, '2024-05-01 21:00:00', '2024-01-11 22:20:00', '0', 20, 3067000.00, 'YQ200', 1),
(59878, NULL, 'VJ006', 1, '2024-03-01 03:20:00', '2024-03-01 04:50:00', '0', 20, 1303000.00, 'SA003', 1),
(65443, NULL, 'VN006', 2, '2024-05-01 16:00:00', '2024-01-05 17:30:00', '0', 20, 1905000.00, 'BA117', 1),
(65445, NULL, 'QH008', 2, '2024-04-05 04:30:00', '2024-04-05 05:30:00', '1', 20, 1200000.00, 'SN001', 1),
(65456, NULL, 'QH007', 2, '2024-05-01 06:00:00', '2024-05-01 07:20:00', '1', 20, 1470000.00, 'BA001', 2),
(65464, NULL, 'QH003', 2, '2024-04-05 00:20:00', '2024-04-05 01:20:00', '1', 20, 2500000.00, 'SN486', 4),
(65478, NULL, 'VJ007', 2, '2024-03-04 13:25:00', '2024-03-04 14:55:00', '0', 20, 2398000.00, 'SGP432', 2),
(65646, NULL, 'VJ007', 2, '2024-03-04 10:00:00', '2024-03-04 11:30:00', '0', 20, 832800.00, 'GP098', 1),
(65722, NULL, 'VJ002', 2, '2024-03-03 13:20:00', '2024-03-03 14:50:00', '0', 20, 2400000.00, 'DNA332', 2),
(65745, NULL, 'QH007', 2, '2024-04-03 06:25:00', '2024-04-03 07:45:00', '1', 20, 2130150.00, 'DAQ636', 3),
(65754, NULL, 'VJ002', 2, '2024-03-04 05:35:00', '2024-03-04 07:05:00', '0', 20, 2495246.00, 'SGP778', 2),
(65788, NULL, 'VN006', 2, '2024-05-01 18:20:00', '2024-01-05 20:00:00', '0', 20, 2459000.00, 'BA104', 2),
(65890, NULL, 'VJ002', 2, '2024-05-01 13:00:00', '2024-05-01 14:30:00', '1', 20, 1123380.00, 'BA102', 1),
(66657, NULL, 'QH003', 1, '2024-03-01 00:20:00', '2024-03-01 01:50:00', '0', 20, 1534800.00, 'SA001', 1),
(66895, NULL, 'VJ007', 2, '2024-03-01 15:00:00', '2024-03-01 16:30:00', '0', 20, 832000.00, 'VQ102', 1),
(68923, NULL, 'VJ007', 2, '2024-03-01 14:00:00', '2024-03-01 15:30:00', '0', 20, 832800.00, 'XB102', 1),
(76544, NULL, 'VN005', 2, '2024-03-04 03:45:00', '2024-03-04 05:15:00', '0', 20, 1025154.25, 'SGP541', 1),
(76545, NULL, 'QH007', 2, '2024-03-04 09:00:00', '2024-03-04 10:30:00', '0', 20, 1520760.00, 'GP443', 2),
(76553, NULL, 'QH003', 2, '2024-03-04 12:35:00', '2024-03-04 14:05:00', '0', 20, 1687541.75, 'SDI987', 2),
(77876, NULL, 'QH007', 2, '2024-05-01 19:20:00', '2024-05-01 21:00:00', '1', 20, 2431000.00, 'BA108', 3),
(78422, NULL, 'QH003', 2, '2024-03-01 17:00:00', '2024-03-01 18:20:00', '0', 20, 1519000.00, 'XB107', 1),
(78456, NULL, 'VJ006', 2, '2024-05-01 15:00:00', '2024-05-01 17:40:00', '1', 20, 2028000.00, 'SSQ003', 1),
(78957, NULL, 'VJ007', 2, '2024-05-01 10:00:00', '2024-05-01 11:20:00', '1', 20, 3067800.00, 'YQ201', 1),
(84846, NULL, 'VJ007', 2, '2024-05-01 09:00:00', '2024-05-01 10:20:00', '1', 20, 2102000.00, 'HSQ002', 1),
(85433, NULL, 'QH007', 2, '2024-03-04 17:05:00', '2024-03-04 18:35:00', '0', 20, 857481.50, 'SDI876', 1),
(87462, NULL, 'VN005', 2, '2024-03-01 10:00:00', '2024-03-01 11:20:00', '0', 20, 1184000.00, 'XB105', 1),
(87546, NULL, 'VJ006', 2, '2024-03-04 08:20:00', '2024-03-04 09:40:00', '0', 20, 2497110.25, 'SDA542', 3),
(87556, NULL, 'QH008', 2, '2024-03-01 15:00:00', '2024-03-01 16:20:00', '0', 20, 1245000.00, 'SP109', 1),
(87654, NULL, 'QH007', 2, '2024-04-04 16:05:00', '2024-04-04 17:35:00', '1', 20, 1193925.50, 'NDG231', 1),
(87656, NULL, 'VJ006', 2, '2024-04-05 06:05:00', '2024-04-05 07:05:00', '1', 20, 2300000.00, 'SN002', 4),
(87665, NULL, 'VN005', 2, '2024-04-04 03:55:00', '2024-04-04 05:25:00', '1', 20, 1639270.25, 'NDG221', 1),
(87675, NULL, 'VN006', 2, '2024-03-04 11:15:00', '2024-03-04 12:45:00', '0', 20, 1154952.75, 'SGP153', 1),
(87865, NULL, 'QH007', 2, '2024-05-01 09:00:00', '2024-05-01 10:40:00', '1', 20, 2636000.00, 'BA109', 3),
(87976, NULL, 'VJ007', 2, '2024-05-01 06:00:00', '2024-05-01 07:30:00', '1', 20, 1634920.00, 'DH002', 1),
(88765, NULL, 'VN001', 2, '2024-05-01 05:00:00', '2024-01-05 06:40:00', '0', 20, 1400000.00, 'BA103', 1),
(89766, NULL, 'VJ002', 2, '2024-04-01 05:00:00', '2024-04-01 06:40:00', '1', 20, 1590000.00, 'SHN336', 1),
(89978, NULL, 'VJ007', 2, '2024-03-01 11:00:00', '2024-03-01 12:20:00', '0', 20, 1113600.00, 'SP110', 1),
(90879, NULL, 'VN005', 2, '2024-05-01 21:00:00', '2024-01-05 22:30:00', '0', 20, 1905000.00, 'BA115', 1),
(92381, NULL, 'VJ002', 2, '2024-03-04 10:45:00', '2024-03-04 12:05:00', '0', 20, 1893075.75, 'SDI054', 3),
(95876, NULL, 'VN001', 2, '2024-03-01 12:00:00', '2024-03-01 13:30:00', '0', 20, 1184000.00, 'VQ104', 1),
(97665, NULL, 'VJ006', 2, '2024-04-04 11:35:00', '2024-04-04 13:05:00', '1', 20, 1934501.75, 'NDG455', 2),
(98765, NULL, 'QH007', 2, '2024-04-01 08:00:00', '2024-04-01 09:20:00', '1', 20, 1800000.00, 'GDS005', 1),
(98766, NULL, 'VJ007', 2, '2024-04-01 10:00:00', '2024-04-01 11:20:00', '1', 20, 1500000.00, 'GDS006', 1),
(98767, NULL, 'VJ002', 2, '2024-04-01 12:30:00', '2024-04-01 13:50:00', '1', 20, 2200000.00, 'GDS007', 2),
(98768, NULL, 'VN001', 2, '2024-04-01 14:30:00', '2024-04-01 15:50:00', '1', 20, 1900000.00, 'GDS008', 1),
(98769, NULL, 'QH003', 2, '2024-03-02 08:00:00', '2024-03-02 09:20:00', '0', 20, 2100000.00, 'GDS157', 2),
(98770, NULL, 'VJ002', 2, '2024-03-02 10:00:00', '2024-03-02 11:20:00', '0', 20, 1800000.00, 'GDS706', 1),
(98771, NULL, 'VJ006', 2, '2024-03-02 12:30:00', '2024-03-02 13:50:00', '0', 20, 1600000.00, 'GDS555', 1),
(98772, NULL, 'VN005', 2, '2024-03-02 14:30:00', '2024-03-02 15:50:00', '0', 20, 1300000.00, 'GDS478', 1),
(123124, NULL, 'VJ006', 2, '2024-03-04 02:30:00', '2024-03-04 03:00:00', '0', 20, 1200358.25, 'DHI411', 1),
(123543, NULL, 'QH008', 2, '2024-04-05 04:30:00', '2024-04-05 05:55:00', '1', 20, 1800000.00, 'NDN021', 2),
(132155, NULL, 'QH003', 2, '2024-04-04 10:15:00', '2024-04-04 11:45:00', '1', 20, 1154952.75, 'HSL654', 1),
(153568, NULL, 'QH003', 2, '2024-03-01 08:00:00', '2024-03-01 09:20:00', '0', 20, 1800000.00, 'SSQ234', 1),
(162324, NULL, 'QH003', 2, '2024-04-02 10:00:00', '2024-04-02 11:30:00', '1', 20, 832800.00, 'SNN001', 1),
(253534, NULL, 'VN005', 2, '2024-04-03 03:15:00', '2024-04-03 04:45:00', '1', 20, 1734000.00, 'USH226', 2),
(323578, NULL, 'VJ007', 2, '2024-04-02 00:20:00', '2024-04-02 01:50:00', '1', 20, 1534800.00, 'SNN002', 2),
(325234, NULL, 'VN001', 2, '2024-04-05 10:05:00', '2024-04-05 11:30:00', '1', 20, 2000000.00, 'NDN226', 2),
(342311, NULL, 'VJ007', 1, '2024-04-04 02:15:00', '2024-04-04 03:45:00', '1', 20, 2340983.75, 'HSL125', 3),
(342354, NULL, 'VJ002', 2, '2024-04-01 00:20:00', '2024-04-01 01:50:00', '1', 20, 1587000.00, 'SHQ003', 1),
(345363, NULL, 'VN006', 2, '2024-04-04 00:45:00', '2024-04-04 02:15:00', '1', 20, 1025154.25, 'HSL432', 1),
(345377, NULL, 'VN001', 2, '2024-04-04 18:05:00', '2024-04-04 19:35:00', '1', 20, 857481.50, 'DLQ765', 1),
(345463, NULL, 'VJ007', 2, '2024-03-02 00:20:00', '2024-03-02 01:50:00', '0', 20, 1680000.00, 'SQN002', 2),
(432343, NULL, 'VN006', 2, '2024-04-01 01:50:00', '2024-04-01 03:20:00', '1', 20, 2925000.00, 'SHQ004', 3),
(432435, NULL, 'VJ007', 2, '2024-04-02 02:00:00', '2024-04-02 03:30:00', '1', 20, 2725000.00, 'SHQ187', 3),
(432436, NULL, 'VJ006', 2, '2024-03-02 09:00:00', '2024-03-02 10:30:00', '0', 20, 1887000.00, 'SQN003', 2),
(432566, NULL, 'VJ002', 2, '2024-04-01 06:00:00', '2024-04-01 07:30:00', '1', 20, 2470000.00, 'SHN784', 3),
(432667, NULL, 'VJ002', 2, '2024-04-04 11:45:00', '2024-04-04 12:05:00', '1', 20, 1893075.75, 'DLQ654', 2),
(434234, NULL, 'VN001', 2, '2024-04-02 05:00:00', '2024-04-02 06:30:00', '1', 20, 1440000.00, 'SHQ459', 1),
(434315, NULL, 'QH003', 2, '2024-03-02 10:00:00', '2024-03-02 11:30:00', '0', 20, 1325000.00, 'SQN001', 1),
(435221, NULL, 'VJ007', 2, '2024-04-03 11:50:00', '2024-04-03 13:15:00', '1', 20, 2320000.00, 'USH098', 3),
(543127, NULL, 'VJ002', 2, '2024-04-04 07:35:00', '2024-04-04 09:05:00', '1', 20, 2495246.00, 'PGQ646', 3),
(543433, NULL, 'VJ007', 2, '2024-03-04 14:10:00', '2024-03-04 15:20:00', '0', 20, 1897210.50, 'DHI441', 3),
(545454, NULL, 'VJ007', 2, '2024-04-04 15:35:00', '2024-04-04 16:45:00', '1', 20, 1897210.50, 'DLQ444', 2),
(564674, NULL, 'QH003', 2, '2024-04-05 00:20:00', '2024-04-05 01:45:00', '1', 20, 2500000.00, 'NDN486', 3),
(645354, NULL, 'VJ002', 2, '2024-04-05 04:10:00', '2024-04-05 05:35:00', '1', 20, 1500000.00, 'NDN438', 1),
(645788, NULL, 'VN001', 2, '2024-04-04 13:25:00', '2024-04-04 14:55:00', '1', 20, 1327229.25, 'HSL421', 1),
(654566, NULL, 'VJ007', 2, '2024-04-04 11:25:00', '2024-04-04 12:55:00', '1', 20, 2398000.00, 'HSL444', 3),
(654577, NULL, 'VJ007', 2, '2024-04-04 15:25:00', '2024-04-04 16:55:00', '1', 20, 2398000.00, 'PGQ321', 3),
(654665, NULL, 'VN005', 2, '2024-03-04 02:30:00', '2024-03-04 03:00:00', '0', 20, 1200358.25, 'DHI876', 2),
(657554, NULL, 'QH007', 2, '2024-04-03 11:55:00', '2024-04-03 13:20:00', '1', 20, 2048000.00, 'USH486', 2),
(657562, NULL, 'VN001', 2, '2024-04-03 15:25:00', '2024-04-03 16:50:00', '1', 20, 1991000.00, 'USH116', 2),
(659787, NULL, 'VJ002', 2, '2024-04-02 09:00:00', '2024-04-02 10:30:00', '1', 20, 1520760.00, 'SNN003', 2),
(687699, NULL, 'VN006', 2, '2024-04-04 05:45:00', '2024-04-04 07:15:00', '1', 20, 1025154.25, 'PGQ412', 1),
(765331, NULL, 'QH008', 2, '2024-04-04 13:15:00', '2024-04-04 14:45:00', '1', 20, 1154952.75, 'PGQ432', 1),
(765645, NULL, 'VN001', 1, '2024-04-04 00:45:00', '2024-04-04 02:15:00', '1', 20, 1637563.00, 'HSL656', 2),
(765655, NULL, 'VN005', 2, '2024-04-04 05:55:00', '2024-04-04 06:25:00', '1', 20, 1200358.25, 'DLQ231', 1),
(766577, NULL, 'QH003', 2, '2024-03-04 12:10:00', '2024-03-04 12:40:00', '0', 20, 1687541.75, 'DHI654', 2),
(832123, NULL, 'QH003', 2, '2024-04-04 16:25:00', '2024-04-04 17:55:00', '1', 20, 1327229.25, 'PGQ554', 1),
(876555, NULL, 'QH007', 2, '2024-04-04 13:35:00', '2024-04-04 14:05:00', '1', 20, 1687541.75, 'DLQ465', 2),
(876676, NULL, 'QH007', 2, '2024-03-04 16:40:00', '2024-03-04 18:10:00', '0', 20, 857481.50, 'DHI432', 1),
(876756, NULL, 'VJ007', 2, '2024-04-05 06:05:00', '2024-04-05 07:30:00', '1', 20, 2300000.00, 'NDN122', 3),
(876998, NULL, 'QH008', 2, '2024-04-04 04:35:00', '2024-04-04 06:05:00', '1', 20, 2495246.00, 'HSL776', 3),
(976241, NULL, 'QH008', 2, '2024-04-01 07:45:00', '2024-04-01 09:05:00', '1', 20, 1892000.00, 'USH536', 2),
(987778, NULL, 'VJ002', 2, '2024-03-04 09:20:00', '2024-03-04 09:40:00', '0', 20, 1893075.75, 'DHI021', 3),
(5789566, NULL, 'VJ002', 2, '2024-03-01 10:00:00', '2024-03-01 11:20:00', '0', 20, 1500000.00, 'SSQ123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datve`
--

CREATE TABLE `datve` (
  `ID_DatVe` int(11) NOT NULL,
  `ID_MaTuyen` varchar(255) DEFAULT NULL,
  `ID_ThongTin` int(11) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `CCCD` varchar(50) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL,
  `SoVeNguoiLon` int(11) DEFAULT NULL,
  `SoVeTreEm` int(11) DEFAULT NULL,
  `SoVeEmBe` int(11) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datve`
--

INSERT INTO `datve` (`ID_DatVe`, `ID_MaTuyen`, `ID_ThongTin`, `DiaChi`, `CCCD`, `GhiChu`, `SoVeNguoiLon`, `SoVeTreEm`, `SoVeEmBe`, `TrangThai`) VALUES
(8766, 'NGS226', 4690, 'dwqdqw', '0159489489', '', 1, 1, 0, NULL),
(8767, 'SDN001', 4693, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(8768, 'SDN001', 4694, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(8775, 'AB478', 4703, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(8776, 'AB478', 4704, 'dwqdqw', '0159489489', 'không có\r\n', 1, 0, 0, NULL),
(8777, 'AB478', 4705, 'dwqdqw', '0159489489', 'không', 1, 0, 0, NULL),
(8778, 'AB478', 4706, 'dwqdqw', '0159489489', 'khong', 2, 0, 0, NULL),
(8779, 'AB478', 4707, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, NULL),
(8780, 'AB478', 4708, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(8781, 'AB478', 4709, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(8782, 'AB478', 4710, 'dwqdqw', '0159489489', 'không có', 1, 1, 0, NULL),
(8783, 'AB478', 4712, 'dwqdqw', '0159489489', '', 2, 0, 0, NULL),
(8784, 'AB478', 4713, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, NULL),
(8785, 'AB478', 4717, 'dwqdqw', '0159489489', 'không có\r\n', 2, 0, 0, NULL),
(8786, 'AB478', 4718, 'dwqdqw', '0159489489', '', 1, 0, 0, NULL),
(8787, 'AB478', 4719, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datvekhuhoi`
--

CREATE TABLE `datvekhuhoi` (
  `ID_DatVeKhuHoi` int(11) NOT NULL,
  `ID_MaTuyen` varchar(255) DEFAULT NULL,
  `ID_ThongTin` int(11) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `CCCD` varchar(50) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL,
  `SoVeNguoiLon` int(11) DEFAULT NULL,
  `SoVeTreEm` int(11) DEFAULT NULL,
  `SoVeEmBe` int(11) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datvekhuhoi`
--

INSERT INTO `datvekhuhoi` (`ID_DatVeKhuHoi`, `ID_MaTuyen`, `ID_ThongTin`, `DiaChi`, `CCCD`, `GhiChu`, `SoVeNguoiLon`, `SoVeTreEm`, `SoVeEmBe`, `TrangThai`) VALUES
(20262, 'SHN268, NN098', 4688, 'dwqdqw', '0159489489', '', 2, 1, 0, NULL),
(20263, 'SHN336, NN098', 4689, 'dwqdqw', '0159489489', '', 1, 1, 0, NULL),
(20264, 'SHN268, NN098', 4691, 'dwqdqw', '0159489489', '', 2, 1, 0, NULL),
(20265, 'SHN268, NN098', 4692, 'dwqdqw', '0159489489', 'không có', 1, 1, 0, NULL),
(20267, 'AA745, BB133', 4702, 'dwqdqw', '0159489489', 'khọng có', 2, 0, 0, NULL),
(20268, 'AA745, BB133', 4711, 'dwqdqw', '0159489489', 'không', 2, 0, 0, NULL),
(20269, 'BB017, BB133', 4714, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, NULL),
(20270, 'AA745, BB133', 4715, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, NULL),
(20271, 'AA745, BB133', 4716, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(20272, 'AA745, BB133', 4720, 'dwqdqw', '0159489489', 'không có', 2, 0, 0, NULL),
(20273, 'AA745, BB133', 4721, 'dwqdqw', '0159489489', 'không có', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `ID_DichVu` int(11) NOT NULL,
  `TenDichVu` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`ID_DichVu`, `TenDichVu`, `MoTa`) VALUES
(1, 'Dịch vụ hàng hóa', 'Các hãng hàng không có thể cung cấp các dịch vụ hàng hóa như bán lẻ trên máy bay, bao gồm các sản phẩm như quần áo, mỹ phẩm, và quà lưu niệm.'),
(2, 'Dịch vụ hỗ trợ', 'Hãng hàng không cung cấp dịch vụ hỗ trợ như hỗ trợ cho người khuyết tật, dịch vụ trẻ em và hộ sinh, cũng như dịch vụ đặc biệt cho hành khách yêu cầu.'),
(3, 'Dịch vụ hàng không doanh nghiệp', 'Đối với hành khách hạng doanh nghiệp hoặc hạng hạng thương gia, các dịch vụ có thể bao gồm ghế ngồi rộng rãi hơn, thức ăn chất lượng cao và dịch vụ cá nhân.'),
(4, 'Giải trí trên chuyến bay', 'Các hãng hàng không thường cung cấp hệ thống giải trí trên chuyến bay, bao gồm màn hình cá nhân với các bộ phim, chương trình TV, âm nhạc và trò chơi. Một số hãng hàng không cung cấp cả kết nối Wi-Fi và dịch vụ truyền hình trực tiếp.'),
(5, 'Thủ tục và tiện ích sân bay', 'Ngoài các dịch vụ trên máy bay, các hãng hàng không cũng cung cấp các dịch vụ và tiện ích tại sân bay như phòng chờ hạng thương gia, dịch vụ gửi hành lý, và các dịch vụ khác.'),
(6, 'Bữa ăn và đồ uống', 'Hầu hết các hãng hàng không cung cấp bữa ăn và đồ uống miễn phí trong các chuyến bay dài hạng phổ thông hoặc hạng phổ thông cao cấp. Các món ăn và đồ uống có thể được phục vụ trên máy bay hoặc trước khi lên máy bay.'),
(7, 'Không chọn dịch vụ', 'Không');

-- --------------------------------------------------------

--
-- Table structure for table `huongdanvien`
--

CREATE TABLE `huongdanvien` (
  `ID_HuongDanVien` int(11) NOT NULL,
  `TenHuongDanVien` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HinhAnh` text DEFAULT NULL,
  `NoiSinh` varchar(255) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `CCCD` varchar(255) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `huongdanvien`
--

INSERT INTO `huongdanvien` (`ID_HuongDanVien`, `TenHuongDanVien`, `SoDienThoai`, `Email`, `HinhAnh`, `NoiSinh`, `DiaChi`, `NgaySinh`, `CCCD`, `TrangThai`) VALUES
(1574, 'TEST', '0000000000', 'test@gmail.com', 'b2ap3_large_du-lich-the-gioi.jpg', 'test', 'test', '0000-00-00', 'test', NULL),
(6784, 'Nguyễn Văn B', '0156849781', 'Bnguyenvan48@gmail.com', '828px-User_icon-cp.svg.png', '', '', '0000-00-00', '', NULL),
(6788, 'Nguyen Van C', '0123456789', 'nguyenvanc@gmail.com', '828px-User_icon-cp.svg.png', 'tp hcm', 'tp hcm', '2024-03-28', '0156489897', NULL),
(6789, 'Nguyen Van D', '0123456789', 'nguyenvand@gmail.com', '828px-User_icon-cp.svg.png', 'tp hcm', 'tp hcm', '2024-03-28', '067845687984', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `ID_KhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(255) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `CCCD` varchar(255) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL,
  `SoVeNguoiLon` int(11) DEFAULT NULL,
  `SoVeTreEm` int(11) DEFAULT NULL,
  `SoVeEmBe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`ID_KhachHang`, `TenKhachHang`, `SoDienThoai`, `Email`, `NgaySinh`, `GioiTinh`, `DiaChi`, `CCCD`, `GhiChu`, `SoVeNguoiLon`, `SoVeTreEm`, `SoVeEmBe`) VALUES
(3703, 'nguyen van a', '0124567899', 'eyelessjack0903@gmail.com', '2024-03-29', 'Ông', 'dwqdqw', '0159489489', 'không có', 2, 0, 0),
(3704, 'nguyen van a', '0124567899', 'eyelessjack0903@gmail.com', '2024-03-23', 'Ông', 'dwqdqw', '0159489489', 'khong có', 2, 0, 0),
(3705, 'nguyen van a', '0124567899', 'eyelessjack0903@gmail.com', '2024-03-30', 'Ông', 'dwqdqw', '0159489489', 'không có', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `ID_LienHe` int(11) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SoDienThoai` varchar(50) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `Ngay` datetime DEFAULT NULL,
  `TrangThai` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`ID_LienHe`, `HoTen`, `Email`, `SoDienThoai`, `NoiDung`, `Ngay`, `TrangThai`) VALUES
(582, 'Nguyen van A', 'laptrinhweb123@gmail.com', '0123456789', 'dwqw', '2024-02-28 00:00:00', '1'),
(583, 'Nguyen van A', 'laptrinhweb123@gmail.com', '0123456789', 'dsadw', '2024-02-28 00:00:00', '1'),
(584, 'Nguyen van A', 'laptrinhweb123@gmail.com', '0123456789', 'dwqdqw', '2024-02-28 00:00:00', '1'),
(592, 'Nguyen van A', 'teo@gmail.com', '0123456789', 'mgpsgmpsd', '2024-02-29 00:00:00', '1'),
(593, 'Nguyen van A', 'ekko0903@gmail.com', '0123456789', 'hello tôi cần bạn hỗ trợ', '2024-03-06 00:00:00', NULL),
(594, 'Nguyen van A', 'ekko0903@gmail.com', '0123456789', 'hello tôi cần bạn hỗ trợ', '2024-03-06 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaibay`
--

CREATE TABLE `loaibay` (
  `ID_LoaiBay` int(11) NOT NULL,
  `TenLoaiBay` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loaibay`
--

INSERT INTO `loaibay` (`ID_LoaiBay`, `TenLoaiBay`) VALUES
(1, 'Một Chiều'),
(2, 'Khứ Hồi');

-- --------------------------------------------------------

--
-- Table structure for table `loaive`
--

CREATE TABLE `loaive` (
  `ID_LoaiVe` int(11) NOT NULL,
  `TenLoaiVe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loaive`
--

INSERT INTO `loaive` (`ID_LoaiVe`, `TenLoaiVe`) VALUES
(1, 'Economy'),
(2, 'Premium Economy'),
(3, 'Business'),
(4, 'First');

-- --------------------------------------------------------

--
-- Table structure for table `matuyen`
--

CREATE TABLE `matuyen` (
  `ID_MaTuyen` varchar(50) NOT NULL,
  `ID_SanBayDi` varchar(50) NOT NULL,
  `ID_SanBayDen` varchar(50) NOT NULL,
  `ID_LoaiBay` int(11) NOT NULL,
  `KhoangCach` decimal(10,4) NOT NULL,
  `ThoiGian` date DEFAULT NULL,
  `HangBay` varchar(255) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matuyen`
--

INSERT INTO `matuyen` (`ID_MaTuyen`, `ID_SanBayDi`, `ID_SanBayDen`, `ID_LoaiBay`, `KhoangCach`, `ThoiGian`, `HangBay`, `TrangThai`) VALUES
('AA745', 'SGN', 'HAN', 2, 1.7540, '2024-04-01', 'Vietjet Air', 1),
('AB478', 'SGN', 'DAD', 1, 1.7540, '2024-04-01', 'Vietnam Airlines', 1),
('AB666', 'SGN', 'DLI', 1, 1.7540, '2024-04-01', 'Bamboo Airways', 1),
('AL098', 'DLI', 'HAN', 1, 1.4110, '2024-03-02', 'Vietjet Air', 0),
('AL486', 'DLI', 'HAN', 1, 1.4110, '2024-03-02', 'Bamboo Airways', 0),
('BA001', 'HAN', 'SGN', 2, 1.1620, '2024-05-01', 'Bamboo Airways', 1),
('BA002', 'HAN', 'SGN', 2, 1.1620, '2024-05-01', 'Vietjet Air', 1),
('BA003', 'HAN', 'SGN', 2, 1.1620, '2024-05-01', 'Vietjet Air', 1),
('BA004', 'HAN', 'SGN', 2, 1.1610, '2024-05-01', 'Vietravel Airlines', 1),
('BA005', 'HAN', 'SGN', 2, 1.1610, '2024-05-01', 'Vietjet Air', 1),
('BA006', 'HAN', 'SGN', 2, 1.1610, '2024-05-01', 'Vietjet Air', 1),
('BA007', 'HAN', 'SGN', 2, 1.1610, '2024-05-01', 'Vietjet Air', 1),
('BA100', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('BA101', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('BA102', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('BA103', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA104', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA105', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA106', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Bamboo Airways', 1),
('BA107', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Bamboo Airways', 1),
('BA108', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Bamboo Airways', 1),
('BA109', 'CXR', 'SGN', 2, 369.0000, '2024-05-01', 'Bamboo Airways', 1),
('BA110', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietjet Air', 1),
('BA111', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietjet Air', 1),
('BA112', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietjet Air', 1),
('BA113', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietjet Air', 1),
('BA114', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA115', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA116', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA117', 'PQC', 'SGN', 2, 395.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA120', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietjet Air', 1),
('BA121', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietjet Air', 1),
('BA122', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietjet Air', 1),
('BA123', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietjet Air', 1),
('BA124', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA125', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BA126', 'DLI', 'SGN', 2, 275.0000, '2024-05-01', 'Vietnam Airlines', 1),
('BB017', 'SGN', 'HAN', 2, 1.7540, '2024-04-01', 'Bamboo Airways', 1),
('BB133', 'HAN', 'SGN', 2, 1.7540, '2024-04-03', 'Vietjet Air', 1),
('BB978', 'HAN', 'SGN', 2, 1.7540, '2024-04-03', 'Vietjet Air', 1),
('BWL001', 'SGN', 'HAN', 1, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('BWL002', 'SGN', 'HAN', 1, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('BWL098', 'SGN', 'HAN', 1, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('BWL157', 'HAN', 'SGN', 1, 1.1620, '2024-03-03', 'Vietnam Airlines', 0),
('BWL226', 'SGN', 'HAN', 1, 1.1620, '2024-03-03', 'Vietnam Airlines', 0),
('BWL267', 'HAN', 'SGN', 1, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('BWL486', 'SGN', 'HAN', 1, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('BWL697', 'HAN', 'SGN', 1, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('BWL874', 'HAN', 'SGN', 1, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('DA001', 'DAD', 'HAN', 1, 975.0000, '2024-03-01', 'Bamboo Airways', 0),
('DA002', 'DAD', 'HAN', 1, 975.0000, '2024-03-01', 'Vietjet Air', 0),
('DA003', 'DAD', 'HAN', 1, 975.0000, '2024-03-01', 'Vietjet Air', 0),
('DA004', 'DAD', 'HAN', 1, 976.0000, '2024-03-01', 'Vietnam Airlines', 0),
('DAD054', 'HAN', 'DAD', 1, 760.0000, '2024-03-05', 'Bamboo Airways', 0),
('DAD096', 'HAN', 'DAD', 1, 760.0000, '2024-03-05', 'Vietjet Air', 0),
('DAQ098', 'SGN', 'DAD', 2, 958.0000, '2024-04-03', 'Vietjet Air', 1),
('DAQ226', 'SGN', 'DAD', 2, 958.0000, '2024-04-03', 'Vietnam Airlines', 1),
('DAQ236', 'DAD', 'SGN', 2, 958.0000, '2024-04-03', 'Vietnam Airlines', 1),
('DAQ486', 'SGN', 'DAD', 2, 958.0000, '2024-04-03', 'Bamboo Airways', 1),
('DAQ636', 'DAD', 'SGN', 2, 958.0000, '2024-04-03', 'Bamboo Airways', 1),
('DD001', 'DLI', 'DAD', 1, 654.0000, '2024-03-02', 'Bamboo Airways', 0),
('DD002', 'DLI', 'DAD', 1, 654.0000, '2024-03-02', 'Vietjet Air', 0),
('DD003', 'DLI', 'DAD', 1, 654.0000, '2024-03-02', 'Vietjet Air', 0),
('DDA001', 'DAD', 'DLI', 1, 654.0000, '2024-03-02', 'Bamboo Airways', 0),
('DDA002', 'DAD', 'DLI', 1, 654.0000, '2024-03-02', 'Vietjet Air', 0),
('DDA003', 'DAD', 'DLI', 1, 654.0000, '2024-03-02', 'Vietnam Airlines', 0),
('DH001', 'DAD', 'HAN', 2, 1.4790, '2024-03-01', 'Bamboo Airways', 0),
('DH002', 'DAD', 'HAN', 2, 1.4790, '2024-03-01', 'Vietjet Air', 0),
('DH003', 'DAD', 'HAN', 2, 1.4790, '2024-03-01', 'Vietjet Air', 0),
('DH078', 'HAN', 'DLI', 1, 1.4110, '2024-03-02', 'Vietnam Airlines', 0),
('DH098', 'HAN', 'DLI', 1, 1.4110, '2024-03-02', 'Vietjet Air', 0),
('DH226', 'HAN', 'DLI', 1, 1.4110, '2024-03-02', 'Vietjet Air', 0),
('DH486', 'HAN', 'DLI', 1, 1.4110, '2024-03-02', 'Bamboo Airways', 0),
('DHI021', 'HUI', 'SGN', 2, 957.0000, '2024-03-04', 'Vietjet Air', 0),
('DHI411', 'HUI', 'SGN', 2, 957.0000, '2024-03-04', 'Vietjet Air', 0),
('DHI432', 'HUI', 'SGN', 2, 957.0000, '2024-03-04', 'Bamboo Airways', 0),
('DHI441', 'SGN', 'HUI', 2, 957.0000, '2024-03-04', 'Vietjet Air', 0),
('DHI654', 'SGN', 'HUI', 2, 957.0000, '2024-03-04', 'Bamboo Airways', 0),
('DHI876', 'SGN', 'HUI', 2, 957.0000, '2024-03-04', 'Vietnam Airlines', 0),
('DLQ231', 'SGN', 'DLI', 2, 309.0000, '2024-04-04', 'Vietnam Airlines', 1),
('DLQ444', 'SGN', 'DLI', 2, 309.0000, '2024-04-04', 'Vietjet Air', 1),
('DLQ465', 'SGN', 'DLI', 2, 309.0000, '2024-04-04', 'Bamboo Airways', 1),
('DLQ654', 'DLI', 'SGN', 2, 309.0000, '2024-04-04', 'Vietjet Air', 1),
('DLQ765', 'DLI', 'SGN', 2, 309.0000, '2024-04-04', 'Vietnam Airlines', 1),
('DNA098', 'SGN', 'DAD', 2, 958.0000, '2024-03-03', 'Vietjet Air', 0),
('DNA226', 'SGN', 'DAD', 2, 958.0000, '2024-03-03', 'Vietnam Airlines', 0),
('DNA231', 'DAD', 'SGN', 2, 958.0000, '2024-03-03', 'Bamboo Airways', 0),
('DNA332', 'DAD', 'SGN', 2, 958.0000, '2024-03-03', 'Vietjet Air', 0),
('DNA486', 'SGN', 'DAD', 2, 958.0000, '2024-03-03', 'Bamboo Airways', 0),
('DNA554', 'DAD', 'SGN', 2, 958.0000, '2024-03-03', 'Vietnam Airlines', 0),
('DSQ001', 'DLI', 'SGN', 2, 308.0000, '2024-04-05', 'Bamboo Airways', 1),
('DSQ002', 'DLI', 'SGN', 2, 308.0000, '2024-04-05', 'Vietjet Air', 1),
('DSQ098', 'SGN', 'DLI', 2, 308.0000, '2024-04-05', 'Vietjet Air', 1),
('DSQ226', 'SGN', 'DLI', 2, 308.0000, '2024-04-05', 'Vietnam Airlines', 1),
('DSQ486', 'SGN', 'DLI', 2, 308.0000, '2024-04-05', 'Bamboo Airways', 1),
('ERQ198', 'SGN', 'DAD', 1, 958.0000, '2024-03-05', 'Vietjet Air', 0),
('ERQ226', 'SGN', 'DAD', 1, 958.0000, '2024-03-05', 'Vietnam Airlines', 0),
('ERQ486', 'SGN', 'DAD', 1, 958.0000, '2024-03-05', 'Bamboo Airways', 0),
('ERQ501', 'DAD', 'SGN', 1, 958.0000, '2024-03-05', 'Bamboo Airways', 0),
('ERQ602', 'DAD', 'SGN', 1, 958.0000, '2024-03-05', 'Vietjet Air', 0),
('GA098', 'SGN', 'HAN', 2, 1.1620, '2024-04-03', 'Vietjet Air', 1),
('GA226', 'SGN', 'HAN', 2, 1.1620, '2024-04-03', 'Vietnam Airlines', 1),
('GDS005', 'DAD', 'SGN', 2, 958.0000, '2024-04-01', 'Bamboo Airways', 1),
('GDS006', 'DAD', 'SGN', 2, 958.0000, '2024-04-01', 'Vietjet Air', 1),
('GDS007', 'DAD', 'SGN', 2, 958.0000, '2024-04-01', 'Vietjet Air', 1),
('GDS008', 'DAD', 'SGN', 2, 957.0000, '2024-04-01', 'Vietnam Airlines', 1),
('GDS157', 'SGN', 'DAD', 2, 958.0000, '2024-03-02', 'Bamboo Airways', 0),
('GDS478', 'SGN', 'DAD', 2, 957.0000, '2024-03-02', 'Vietnam Airlines', 0),
('GDS555', 'SGN', 'DAD', 2, 958.0000, '2024-03-02', 'Vietjet Air', 0),
('GDS706', 'SGN', 'DAD', 2, 958.0000, '2024-03-02', 'Vietjet Air', 0),
('GP098', 'SGN', 'HPH', 1, 1.7940, '2024-03-04', 'Vietjet Air', 0),
('GP123', 'SGN', 'HPH', 1, 1.7940, '2024-03-04', 'Vietnam Airlines', 0),
('GP443', 'HPH', 'SGN', 1, 1.7940, '2024-03-04', 'Bamboo Airways', 0),
('GP542', 'HPH', 'SGN', 1, 1.7940, '2024-03-04', 'Vietjet Air', 0),
('HAD098', 'HAN', 'DAD', 1, 975.0000, '2024-03-04', 'Vietjet Air', 0),
('HAD216', 'HAN', 'DAD', 1, 975.0000, '2024-03-04', 'Vietnam Airlines', 0),
('HAD221', 'DAD', 'HAN', 1, 975.0000, '2024-03-04', 'Bamboo Airways', 0),
('HAD432', 'DAD', 'HAN', 1, 975.0000, '2024-03-04', 'Vietjet Air', 0),
('HAD486', 'HAN', 'DAD', 1, 975.0000, '2024-03-04', 'Bamboo Airways', 0),
('HAH031', 'HAN', 'SGN', 2, 1.1620, '2024-04-04', 'Vietjet Air', 1),
('HAH035', 'SGN', 'HAN', 2, 1.1620, '2024-04-04', 'Bamboo Airways', 1),
('HAH055', 'HAN', 'SGN', 2, 1.1620, '2024-04-04', 'Bamboo Airways', 1),
('HAH554', 'SGN', 'HAN', 2, 1.1620, '2024-04-04', 'Vietjet Air', 1),
('HAH897', 'SGN', 'HAN', 2, 1.1620, '2024-04-04', 'Vietnam Airlines', 1),
('HAL123', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('HAL125', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Vietnam Airlines', 0),
('HAL152', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('HAL230', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Vietnam Airlines', 0),
('HAL231', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Bamboo Airways', 0),
('HAL245', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Bamboo Airways', 0),
('HAL653', 'HAN', 'SGN', 1, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('HC001', 'HAN', 'PQC', 2, 1.6630, '2024-03-01', 'Bamboo Airways', 0),
('HC002', 'HAN', 'PQC', 2, 1.6630, '2024-03-01', 'Vietjet Air', 0),
('HC003', 'HAN', 'PQC', 2, 1.6630, '2024-03-01', 'Vietnam Airlines', 0),
('HD001', 'HAN', 'DAD', 2, 1.4790, '2024-03-01', 'Bamboo Airways', 0),
('HD002', 'HAN', 'DAD', 2, 1.4790, '2024-03-01', 'Vietnam Airlines', 0),
('HD003', 'HAN', 'DAD', 2, 1.4790, '2024-03-01', 'Vietjet Air', 0),
('HDN001', 'HUI', 'SGN', 2, 929.0000, '2024-04-05', 'Bamboo Airways', 1),
('HDN002', 'HUI', 'SGN', 2, 929.0000, '2024-04-05', 'Vietjet Air', 1),
('HDN098', 'SGN', 'HUI', 2, 929.0000, '2024-04-05', 'Vietjet Air', 1),
('HDN226', 'SGN', 'HUI', 2, 929.0000, '2024-04-05', 'Vietnam Airlines', 1),
('HDN486', 'SGN', 'HUI', 2, 929.0000, '2024-04-05', 'Bamboo Airways', 1),
('HL109', 'HAN', 'DLI', 1, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('HL110', 'HAN', 'DLI', 1, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('HL111', 'HAN', 'DLI', 1, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('HQB216', 'SGN', 'HAN', 2, 1.1620, '2024-04-05', 'Vietnam Airlines', 1),
('HQB411', 'HAN', 'SGN', 2, 1.1620, '2024-04-05', 'Bamboo Airways', 1),
('HQB421', 'SGN', 'HAN', 2, 1.1620, '2024-04-05', 'Vietjet Air', 1),
('HQB586', 'SGN', 'HAN', 2, 1.1620, '2024-04-05', 'Bamboo Airways', 1),
('HQB652', 'HAN', 'SGN', 2, 1.1620, '2024-04-05', 'Vietjet Air', 1),
('HSL125', 'HUI', 'SGN', 2, 957.0000, '2024-04-04', 'Vietjet Air', 1),
('HSL421', 'SGN', 'HUI', 2, 957.0000, '2024-04-04', 'Vietnam Airlines', 1),
('HSL432', 'SGN', 'HUI', 2, 957.0000, '2024-04-04', 'Vietnam Airlines', 1),
('HSL444', 'SGN', 'HUI', 2, 957.0000, '2024-04-04', 'Vietjet Air', 1),
('HSL654', 'SGN', 'HUI', 2, 957.0000, '2024-04-04', 'Bamboo Airways', 1),
('HSL656', 'HUI', 'SGN', 2, 957.0000, '2024-04-04', 'Vietnam Airlines', 1),
('HSL776', 'HUI', 'SGN', 2, 957.0000, '2024-04-04', 'Bamboo Airways', 1),
('HSQ001', 'DAD', 'HAN', 2, 1.4790, '2024-05-01', 'Bamboo Airways', 1),
('HSQ002', 'DAD', 'HAN', 2, 1.4790, '2024-05-01', 'Vietjet Air', 1),
('HSQ003', 'DAD', 'HAN', 2, 1.4790, '2024-05-01', 'Vietjet Air', 1),
('HSQ216', 'SGN', 'HUI', 1, 1.0420, '2024-03-04', 'Vietnam Airlines', 0),
('HSQ321', 'HUI', 'SGN', 1, 1.0420, '2024-03-04', 'Bamboo Airways', 0),
('HSQ456', 'SGN', 'HUI', 1, 1.0420, '2024-03-04', 'Bamboo Airways', 0),
('HSQ486', 'SGN', 'HUI', 1, 1.0420, '2024-03-04', 'Bamboo Airways', 0),
('HSQ652', 'HUI', 'SGN', 1, 1.0420, '2024-03-04', 'Vietjet Air', 0),
('HSQ798', 'SGN', 'HUI', 1, 1.0420, '2024-03-04', 'Vietjet Air', 0),
('JAK126', 'SGN', 'HAN', 1, 1.1620, '2024-04-03', 'Vietnam Airlines', 1),
('JAK242', 'HAN', 'SGN', 1, 1.1620, '2024-04-03', 'Vietjet Air', 1),
('JAK486', 'SGN', 'HAN', 1, 1.1620, '2024-04-03', 'Bamboo Airways', 1),
('JAK698', 'SGN', 'HAN', 1, 1.1620, '2024-04-03', 'Vietjet Air', 1),
('JAK741', 'HAN', 'SGN', 1, 1.1620, '2024-04-03', 'Bamboo Airways', 1),
('LAQ098', 'SGN', 'DAD', 1, 958.0000, '2024-03-03', 'Vietjet Air', 0),
('LAQ226', 'SGN', 'DAD', 1, 958.0000, '2024-03-03', 'Vietnam Airlines', 0),
('LAQ647', 'DAD', 'SGN', 1, 958.0000, '2024-03-03', 'Bamboo Airways', 0),
('LAQ697', 'SGN', 'DAD', 1, 958.0000, '2024-03-03', 'Bamboo Airways', 0),
('LAQ726', 'DAD', 'SGN', 1, 958.0000, '2024-03-03', 'Vietnam Airlines', 0),
('LAQ745', 'DAD', 'SGN', 1, 958.0000, '2024-03-03', 'Vietjet Air', 0),
('LAQ778', 'SGN', 'DAD', 1, 958.0000, '2024-03-03', 'Vietjet Air', 0),
('MT001', 'SGN', 'HAN', 1, 1.1620, '2024-03-01', 'Bamboo Airways', 0),
('MT002', 'SGN', 'HAN', 1, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('MT003', 'SGN', 'HAN', 1, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('MT004', 'SGN', 'HAN', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('MT005', 'SGN', 'HAN', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('MT006', 'SGN', 'HAN', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('MT007', 'SGN', 'HAN', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('MT100', 'SGB', 'CXR', 1, 369.0000, '2024-03-01', 'Vietjet Air', 0),
('MT101', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Vietjet Air', 0),
('MT102', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Vietjet Air', 0),
('MT103', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT104', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT105', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT106', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('MT107', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('MT108', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('MT109', 'SGN', 'CXR', 1, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('MT110', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('MT111', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('MT112', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('MT113', 'SGN', 'PQC', 1, 395.0000, '2024-02-01', 'Vietjet Air', 0),
('MT114', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT115', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT116', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT117', 'SGN', 'PQC', 1, 395.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT120', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('MT121', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('MT122', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('MT123', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('MT124', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT125', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietnam Airlines', 0),
('MT126', 'SGN', 'DLI', 1, 275.0000, '2024-03-01', 'Vietnam Airlines', 0),
('ND001', 'HAN', 'DAD', 1, 975.0000, '2024-03-01', 'Bamboo Airways', 0),
('ND002', 'HAN', 'DAD', 1, 975.0000, '2024-03-01', 'Vietjet Air', 0),
('ND003', 'HAN', 'DAD', 1, 975.0000, '2024-03-01', 'Vietjet Air', 0),
('ND004', 'HAN', 'DAD', 1, 976.0000, '2024-03-01', 'Vietnam Airlines', 0),
('NDA231', 'DAD', 'HAN', 1, 760.0000, '2024-03-05', 'Vietjet Air', 0),
('NDA653', 'DAD', 'HAN', 1, 760.0000, '2024-03-05', 'Vietnam Airlines', 0),
('NDA876', 'HAN', 'DAD', 1, 760.0000, '2024-03-05', 'Bamboo Airways', 0),
('NDG024', 'SGN', 'DAD', 2, 958.0000, '2024-04-04', 'Vietjet Air', 1),
('NDG221', 'SGN', 'DAD', 2, 958.0000, '2024-04-04', 'Vietnam Airlines', 1),
('NDG231', 'DAD', 'SGN', 2, 958.0000, '2024-04-04', 'Bamboo Airways', 1),
('NDG455', 'SGN', 'DAD', 2, 958.0000, '2024-04-04', 'Vietjet Air', 1),
('NDG865', 'DAD', 'SGN', 2, 958.0000, '2024-04-04', 'Vietjet Air', 1),
('NDN021', 'DAD', 'SGN', 2, 958.0000, '2024-04-05', 'Bamboo Airways', 1),
('NDN122', 'DAD', 'SGN', 2, 958.0000, '2024-04-05', 'Vietjet Air', 1),
('NDN226', 'SGN', 'DAD', 2, 958.0000, '2024-04-05', 'Vietnam Airlines', 1),
('NDN438', 'SGN', 'DAD', 2, 958.0000, '2024-04-05', 'Vietjet Air', 1),
('NDN486', 'SGN', 'DAD', 2, 958.0000, '2024-04-05', 'Bamboo Airways', 1),
('NGS222', 'HAN', 'SGN', 1, 1.1620, '2024-03-05', 'Vietjet Air', 0),
('NGS226', 'SGN', 'HAN', 1, 1.1620, '2024-03-05', 'Vietnam Airlines', 0),
('NGS442', 'HAN', 'SGN', 1, 1.1620, '2024-05-05', 'Vietjet Air', 1),
('NGS486', 'SGN', 'HAN', 1, 1.1620, '2024-03-05', 'Bamboo Airways', 0),
('NGS498', 'SGN', 'HAN', 1, 1.1620, '2024-03-05', 'Vietjet Air', 0),
('NGS651', 'HAN', 'SGN', 1, 1.1620, '2024-05-05', 'Bamboo Airways', 1),
('NGS658', 'HAN', 'SGN', 1, 1.1620, '2024-03-05', 'Vietnam Airlines', 0),
('NH018', 'HAN', 'HUI', 2, 664.0000, '2024-04-02', 'Vietjet Air', 1),
('NH102', 'HAN', 'HUI', 2, 664.0000, '2024-04-02', 'Vietjet Air', 1),
('NH401', 'HAN', 'HUI', 2, 664.0000, '2024-04-02', 'Bamboo Airways', 1),
('NH526', 'HUI', 'HAN', 2, 664.0000, '2024-04-02', 'Vietnam Airlines', 1),
('NH686', 'HUI', 'HAN', 2, 664.0000, '2024-04-02', 'Bamboo Airways', 1),
('NN098', 'HAN', 'SGN', 2, 1.1620, '2024-04-03', 'Vietjet Air', 1),
('NN226', 'HAN', 'SGN', 2, 1.1620, '2024-04-03', 'Vietnam Airlines', 1),
('NN502', 'HAN', 'SGN', 2, 1.1620, '2024-04-03', 'Vietjet Air', 1),
('NQ198', 'SGN', 'HAN', 2, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('NQ286', 'SGN', 'HAN', 2, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('NQ331', 'SGN', 'HAN', 2, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('NQ516', 'HAN', 'SGN', 2, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('NQ526', 'SGN', 'HAN', 2, 1.1620, '2024-03-03', 'Vietnam Airlines', 0),
('NQ546', 'HAN', 'SGN', 2, 1.1620, '2024-03-03', 'Bamboo Airways', 0),
('NQ602', 'SGN', 'HAN', 2, 1.1620, '2024-03-03', 'Vietjet Air', 0),
('OPS001', 'DLI', 'SGN', 1, 309.0000, '2024-03-05', 'Vietjet Air', 0),
('OPS098', 'SGN', 'DLI', 1, 309.0000, '2024-03-05', 'Vietjet Air', 0),
('OPS226', 'SGN', 'DLI', 1, 309.0000, '2024-03-05', 'Vietnam Airlines', 0),
('OPS486', 'DLI', 'SGN', 1, 309.0000, '2024-03-05', 'Bamboo Airways', 0),
('PGQ321', 'SGN', 'HPH', 2, 1.7940, '2024-04-04', 'Vietjet Air', 1),
('PGQ412', 'SGN', 'HPH', 2, 1.7940, '2024-04-04', 'Vietnam Airlines', 1),
('PGQ432', 'SGN', 'HPH', 2, 1.7940, '2024-04-04', 'Bamboo Airways', 1),
('PGQ554', 'HPH', 'SGN', 2, 1.7940, '2024-04-04', 'Bamboo Airways', 1),
('PGQ646', 'HPH', 'SGN', 2, 1.7940, '2024-04-04', 'Vietjet Air', 1),
('PO003', 'SGN', 'DAD', 1, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('PO004', 'SGN', 'DAD', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('PO005', 'SGN', 'DAD', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('PO006', 'SGN', 'DAD', 1, 1.1610, '2024-03-01', 'Vietjet Air', 0),
('PSQ098', 'SGN', 'HAN', 1, 1.1620, '2024-03-04', 'Vietjet Air', 0),
('PSQ201', 'HAN', 'SGN', 1, 1.1620, '2024-03-04', 'Bamboo Airways', 0),
('PSQ502', 'HAN', 'SGN', 1, 1.1620, '2024-03-04', 'Vietjet Air', 0),
('PSQ726', 'SGN', 'HAN', 1, 1.1620, '2024-03-04', 'Vietnam Airlines', 0),
('PSQ786', 'SGN', 'HAN', 1, 1.1620, '2024-03-04', 'Bamboo Airways', 0),
('SA001', 'DAD', 'SGN', 1, 958.0000, '2024-03-01', 'Bamboo Airways', 0),
('SA002', 'DAD', 'SGN', 1, 958.0000, '2024-03-01', 'Vietjet Air', 0),
('SA003', 'DAD', 'SGN', 1, 958.0000, '2024-03-01', 'Vietjet Air', 0),
('SA004', 'DAD', 'SGN', 1, 958.0000, '2024-03-01', 'Vietnam Airlines', 0),
('SC098', 'SGN', 'CXR', 1, 363.0000, '2024-03-03', 'Vietjet Air', 0),
('SC226', 'SGN', 'CXR', 1, 363.0000, '2024-03-03', 'Vietnam Airlines', 0),
('SC486', 'SGN', 'CXR', 1, 363.0000, '2024-03-03', 'Bamboo Airways', 0),
('SC556', 'SGN', 'CXR', 1, 363.0000, '2024-03-03', 'Vietnam Airlines', 0),
('SC692', 'CXR', 'SGN', 1, 363.0000, '2024-03-03', 'Vietjet Air', 0),
('SC741', 'CXR', 'SGN', 1, 363.0000, '2024-03-03', 'Bamboo Airways', 0),
('SDA121', 'DAD', 'SGN', 2, 958.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDA226', 'SGN', 'DAD', 2, 958.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SDA446', 'SGN', 'DAD', 2, 958.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDA448', 'SGN', 'DAD', 2, 958.0000, '2024-03-04', 'Vietjet Air', 0),
('SDA542', 'DAD', 'SGN', 2, 958.0000, '2024-03-04', 'Vietjet Air', 0),
('SDD121', 'DAD', 'SGN', 1, 958.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SDD348', 'SGN', 'DAD', 1, 958.0000, '2024-03-04', 'Vietjet Air', 0),
('SDD412', 'DAD', 'SGN', 1, 958.0000, '2024-03-04', 'Vietjet Air', 0),
('SDD546', 'SGN', 'DAD', 1, 958.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDD732', 'DAD', 'SGN', 1, 958.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDD766', 'SGN', 'DAD', 1, 958.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SDI054', 'DLI', 'SGN', 2, 309.0000, '2024-03-04', 'Vietjet Air', 0),
('SDI553', 'SGN', 'DLI', 2, 309.0000, '2024-03-04', 'Vietjet Air', 0),
('SDI765', 'SGN', 'DLI', 2, 309.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SDI876', 'DLI', 'SGN', 2, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDI987', 'SGN', 'DLI', 2, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SDL001', 'SGN', 'DLI', 1, 309.0000, '2024-03-02', 'Bamboo Airways', 0),
('SDL002', 'SGN', 'DLI', 1, 309.0000, '2024-03-02', 'Vietjet Air', 0),
('SDL123', 'SGN', 'DLI', 1, 309.0000, '2024-03-02', 'Vietjet Air', 0),
('SDL125', 'SGN', 'DLI', 1, 309.0000, '2024-03-02', 'Vietnam Airlines', 0),
('SDL245', 'SGN', 'DLI', 1, 309.0000, '2024-03-02', 'Bamboo Airways', 0),
('SDN001', 'SGN', 'HAN', 1, 1.1620, '2024-03-02', 'Bamboo Airways', 0),
('SDN002', 'SGN', 'HAN', 1, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SDN003', 'SGN', 'HAN', 1, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SDN123', 'HAN', 'SGN', 1, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('SDN125', 'SGN', 'HAN', 1, 1.1620, '2024-03-02', 'Vietnam Airlines', 0),
('SDN126', 'SGN', 'HAN', 1, 1.1620, '2024-03-02', 'Vietnam Airlines', 0),
('SDN245', 'HAN', 'SGN', 1, 1.1620, '2024-03-01', 'Bamboo Airways', 0),
('SDX001', 'DLI', 'SGN', 2, 308.0000, '2024-04-02', 'Bamboo Airways', 1),
('SDX002', 'DLI', 'SGN', 2, 308.0000, '2024-04-02', 'Vietjet Air', 1),
('SDX098', 'SGN', 'DLI', 2, 308.0000, '2024-04-02', 'Vietjet Air', 1),
('SDX226', 'SGN', 'DLI', 2, 308.0000, '2024-04-02', 'Vietnam Airlines', 1),
('SDX486', 'SGN', 'DLI', 2, 308.0000, '2024-04-02', 'Bamboo Airways', 1),
('SGP153', 'SGN', 'HPH', 2, 1.7940, '2024-03-04', 'Vietnam Airlines', 0),
('SGP432', 'SGN', 'HPH', 2, 1.7940, '2024-03-04', 'Vietjet Air', 0),
('SGP541', 'SGN', 'HPH', 2, 1.7940, '2024-03-04', 'Vietnam Airlines', 0),
('SGP778', 'HPH', 'SGN', 2, 1.7940, '2024-03-04', 'Vietjet Air', 0),
('SGP876', 'HPH', 'SGN', 2, 1.7940, '2024-03-04', 'Bamboo Airways', 0),
('SHH132', 'HAN', 'SGN', 2, 1.1620, '2024-03-04', 'Vietjet Air', 0),
('SHH234', 'HAN', 'SGN', 2, 1.1620, '2024-03-04', 'Bamboo Airways', 0),
('SHH245', 'SGN', 'HAN', 2, 1.1620, '2024-03-04', 'Bamboo Airways', 0),
('SHH665', 'SGN', 'HAN', 2, 1.1620, '2024-03-04', 'Vietjet Air', 0),
('SHH754', 'SGN', 'HAN', 2, 1.1620, '2024-03-04', 'Vietnam Airlines', 0),
('SHN001', 'HAN', 'SGN', 2, 1.1620, '2024-03-02', 'Bamboo Airways', 0),
('SHN002', 'HAN', 'SGN', 2, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SHN003', 'HAN', 'SGN', 2, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SHN004', 'HAN', 'SGN', 2, 1.1610, '2024-03-02', 'Vietravel Airlines', 0),
('SHN216', 'HAN', 'SGN', 2, 1.1620, '2024-04-01', 'Vietjet Air', 1),
('SHN268', 'SGN', 'HAN', 2, 1.1620, '2024-04-01', 'Bamboo Airways', 1),
('SHN336', 'SGN', 'HAN', 2, 1.1620, '2024-04-01', 'Vietjet Air', 1),
('SHN784', 'SGN', 'HAN', 2, 1.1620, '2024-04-01', 'Vietjet Air', 1),
('SHN975', 'HAN', 'SGN', 2, 1.1620, '2024-04-01', 'Vietjet Air', 1),
('SHQ003', 'SGN', 'HAN', 2, 1.1620, '2024-04-01', 'Vietjet Air', 1),
('SHQ004', 'SGN', 'HAN', 2, 1.1610, '2024-04-01', 'Vietravel Airlines', 1),
('SHQ187', 'SGN', 'HAN', 2, 1.1620, '2024-04-02', 'Vietjet Air', 1),
('SHQ459', 'SGN', 'HAN', 2, 1.1610, '2024-04-02', 'Vietravel Airlines', 1),
('SHU169', 'HUI', 'SGN', 2, 944.7000, '2024-03-03', 'Bamboo Airways', 0),
('SHU226', 'SGN', 'HUI', 2, 944.7000, '2024-03-03', 'Vietnam Airlines', 0),
('SHU486', 'SGN', 'HUI', 2, 944.7000, '2024-03-03', 'Bamboo Airways', 0),
('SHU557', 'HUI', 'SGN', 2, 944.7000, '2024-03-03', 'Vietnam Airlines', 0),
('SHU898', 'SGN', 'HUI', 2, 944.7000, '2024-03-03', 'Vietjet Air', 0),
('SIL124', 'DLI', 'SGN', 1, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SIL154', 'DLI', 'SGN', 1, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SIL235', 'DLI', 'SGN', 1, 309.0000, '2024-03-04', 'Vietjet Air', 0),
('SIL422', 'SGN', 'DLI', 1, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SIL442', 'SGN', 'DLI', 1, 309.0000, '2024-03-04', 'Bamboo Airways', 0),
('SIL534', 'SGN', 'DLI', 1, 309.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SIL668', 'SGN', 'DLI', 1, 309.0000, '2024-03-04', 'Vietjet Air', 0),
('SN001', 'HAN', 'HUI', 2, 664.0000, '2024-04-05', 'Bamboo Airways', 1),
('SN002', 'HAN', 'HUI', 2, 664.0000, '2024-04-05', 'Vietjet Air', 1),
('SN098', 'HUI', 'HAN', 2, 664.0000, '2024-04-05', 'Vietjet Air', 1),
('SN226', 'HUI', 'HAN', 2, 664.0000, '2024-04-05', 'Vietnam Airlines', 1),
('SN486', 'HUI', 'HAN', 2, 664.0000, '2024-04-05', 'Bamboo Airways', 1),
('SNN001', 'HAN', 'SGN', 2, 1.1620, '2024-04-02', 'Bamboo Airways', 1),
('SNN002', 'HAN', 'SGN', 2, 1.1620, '2024-04-02', 'Vietjet Air', 1),
('SNN003', 'HAN', 'SGN', 2, 1.1620, '2024-04-02', 'Vietjet Air', 1),
('SP109', 'SGN', 'PQC', 2, 369.0000, '2024-03-01', 'Bamboo Airways', 0),
('SP110', 'SGN', 'PQC', 2, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('SP112', 'SGN', 'PQC', 2, 395.0000, '2024-03-01', 'Vietjet Air', 0),
('SPH021', 'HPH', 'SGN', 1, 1.6760, '2024-03-05', 'Bamboo Airways', 0),
('SPH102', 'HPH', 'SGN', 1, 1.6760, '2024-03-05', 'Vietjet Air', 0),
('SPH486', 'SGN', 'HPH', 1, 1.6760, '2024-03-05', 'Bamboo Airways', 0),
('SPH538', 'SGN', 'HPH', 1, 1.6760, '2024-03-05', 'Vietjet Air', 0),
('SPH626', 'SGN', 'HPH', 1, 1.6760, '2024-03-05', 'Vietnam Airlines', 0),
('SQ120', 'SGN', 'DLI', 2, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('SQ123', 'SGN', 'DLI', 2, 275.0000, '2024-03-01', 'Vietjet Air', 0),
('SQ124', 'SGN', 'DLI', 2, 275.0000, '2024-03-01', 'Vietnam Airlines', 0),
('SQC426', 'SGN', 'PQC', 1, 402.0000, '2024-03-04', 'Vietnam Airlines', 0),
('SQC431', 'PQC', 'SGN', 1, 402.0000, '2024-03-04', 'Vietjet Air', 0),
('SQC645', 'PQC', 'SGN', 1, 402.0000, '2024-03-04', 'Bamboo Airways', 0),
('SQC655', 'SGN', 'PQC', 1, 402.0000, '2024-03-04', 'Bamboo Airways', 0),
('SQC698', 'SGN', 'PQC', 1, 402.0000, '2024-03-04', 'Vietjet Air', 0),
('SQN001', 'SGN', 'HAN', 2, 1.1620, '2024-03-02', 'Bamboo Airways', 0),
('SQN002', 'SGN', 'HAN', 2, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SQN003', 'SGN', 'HAN', 2, 1.1620, '2024-03-02', 'Vietjet Air', 0),
('SQP098', 'SGN', 'PQC', 1, 402.0000, '2024-03-03', 'Vietjet Air', 0),
('SQP226', 'SGN', 'PQC', 1, 402.0000, '2024-03-03', 'Vietnam Airlines', 0),
('SQP256', 'SGN', 'PQC', 1, 402.0000, '2024-03-03', 'Vietnam Airlines', 0),
('SQP351', 'PQC', 'SGN', 1, 402.0000, '2024-03-03', 'Bamboo Airways', 0),
('SQP365', 'PQC', 'SGN', 1, 402.0000, '2024-03-03', 'Vietjet Air', 0),
('SQP447', 'SGN', 'PQC', 1, 402.0000, '2024-03-03', 'Bamboo Airways', 0),
('SQP771', 'PQC', 'SGN', 1, 402.0000, '2024-03-03', 'Bamboo Airways', 0),
('SS200', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('SS201', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('SS202', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('SSQ001', 'HAN', 'DAD', 2, 1.4790, '2024-05-01', 'Bamboo Airways', 1),
('SSQ002', 'HAN', 'DAD', 2, 1.4790, '2024-05-01', 'Vietjet Air', 1),
('SSQ003', 'HAN', 'DAD', 2, 1.4790, '2024-05-01', 'Vietjet Air', 1),
('SSQ123', 'SGN', 'DAD', 2, 958.0000, '2024-03-01', 'Vietjet Air', 0),
('SSQ234', 'SGN', 'DAD', 2, 958.0000, '2024-03-01', 'Bamboo Airways', 0),
('SU001', 'PXU', 'SGN', 1, 506.0000, '2024-03-03', 'Bamboo Airways', 0),
('SU098', 'SGN', 'PXU', 1, 506.0000, '2024-03-03', 'Vietjet Air', 0),
('SU112', 'PXU', 'SGN', 1, 506.0000, '2024-03-03', 'Vietjet Air', 0),
('SU226', 'SGN', 'PXU', 1, 506.0000, '2024-03-03', 'Vietnam Airlines', 0),
('SU486', 'SGN', 'PXU', 1, 506.0000, '2024-03-03', 'Bamboo Airways', 0),
('TD001', 'DLI', 'SGN', 1, 309.0000, '2024-03-03', 'Bamboo Airways', 0),
('TD002', 'DLI', 'SGN', 1, 309.0000, '2024-03-03', 'Vietjet Air', 0),
('TD098', 'SGN', 'DLI', 1, 309.0000, '2024-03-03', 'Vietjet Air', 0),
('TD226', 'SGN', 'DLI', 1, 309.0000, '2024-03-03', 'Vietnam Airlines', 0),
('TD486', 'SGN', 'DLI', 1, 309.0000, '2024-03-03', 'Bamboo Airways', 0),
('TM101', 'HAN', 'SGN', 1, 1.6100, '2024-03-01', 'Vietjet Air', 0),
('TM102', 'HAN', 'SGN', 1, 1.6100, '2024-03-01', 'Vietjet Air', 0),
('TM103', 'HAN', 'SGN', 1, 1.6100, '2024-03-01', 'Vietnam Airlines', 0),
('TM104', 'HAN', 'SGN', 1, 1.6100, '2024-03-01', 'Vietnam Airlines', 0),
('USH098', 'SGN', 'HUI', 2, 944.7000, '2024-04-03', 'Vietjet Air', 1),
('USH116', 'HUI', 'SGN', 2, 944.7000, '2024-04-03', 'Vietnam Airlines', 1),
('USH226', 'SGN', 'HUI', 2, 944.7000, '2024-04-03', 'Vietnam Airlines', 1),
('USH486', 'SGN', 'HUI', 2, 944.7000, '2024-04-03', 'Bamboo Airways', 1),
('USH536', 'HUI', 'SGN', 2, 944.7000, '2024-04-03', 'Bamboo Airways', 1),
('VQ100', 'SGN', 'CXR', 2, 369.0000, '2024-03-01', 'Vietjet Air', 0),
('VQ102', 'SGN', 'CXR', 2, 369.0000, '2024-03-01', 'Vietjet Air', 0),
('VQ104', 'SGN', 'CXR', 2, 369.0000, '2024-03-01', 'Vietnam Airlines', 0),
('VQ109', 'SGN', 'CXR', 2, 369.0000, '2024-03-01', 'Bamboo Aiways', 0),
('XB100', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('XB101', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('XB102', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Vietjet Air', 1),
('XB103', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Vietnam Airlines', 1),
('XB105', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Vietnam Airlines', 1),
('XB107', 'SGN', 'CXR', 2, 369.0000, '2024-05-01', 'Bamboo Airways', 1),
('YQ200', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('YQ201', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0),
('YQ202', 'SGN', 'HAN', 2, 1.1620, '2024-03-01', 'Vietjet Air', 0);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `ID_Note` int(11) NOT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `UserGiao` varchar(255) DEFAULT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `NgayGiao` datetime DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `MucDo` varchar(255) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`ID_Note`, `ID_User`, `UserGiao`, `TieuDe`, `NgayGiao`, `MoTa`, `MucDo`, `TrangThai`) VALUES
(14, 2024, 'ekko0903@gmail.com', 'Xử lý công việc', '2024-03-17 14:37:21', 'như thế này', 'Medium', 1),
(15, 2024, 'ekko0903@gmail.com', 'dwqwdq', '2024-03-20 22:35:07', 'dsda', 'Medium', 0),
(16, 2029, 'dat.vminh07@gmail.com', 'ngày mai', '2024-03-26 12:08:37', 'làm bai tap', 'High', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

CREATE TABLE `phanhoi` (
  `ID_PhanHoi` int(11) NOT NULL,
  `ID_Tour` int(11) DEFAULT NULL,
  `ID_User` int(11) DEFAULT NULL,
  `NgayPhanHoi` datetime DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `Sao` varchar(50) DEFAULT NULL,
  `AnHien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanbay`
--

CREATE TABLE `sanbay` (
  `ID_CHK` varchar(50) NOT NULL,
  `TenSanBay` varchar(255) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `ThongTin` text DEFAULT NULL,
  `QuocGia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sanbay`
--

INSERT INTO `sanbay` (`ID_CHK`, `TenSanBay`, `DiaChi`, `ThongTin`, `QuocGia`) VALUES
('BMV', 'Sân bay quốc tế Buôn Ma Thuột', 'Phường Tân Lợi, Thành phố Buôn Ma Thuột, tỉnh Đắk Lắk', NULL, 'Việt Nam'),
('CXR', 'Sân bay quốc tế Cam Ranh', 'Thành phố Cam Ranh, tỉnh Khánh Hòa', NULL, 'Việt Nam'),
('DAD', 'Sân bay quốc tế Đà Nẵng', '200 Nguyễn Văn Linh, Quận Hải Châu, Đà Nẵng', NULL, 'Việt Nam'),
('DLI', 'Sân bay quốc tế Đà Lạt', 'Sân bay Liên Khương, tỉnh Lâm Đồng, Việt Nam', NULL, 'Việt Nam'),
('HAN', 'Sân bay quốc tế Nội Bài', 'Phú Minh, Sóc Sơn, Hà Nội', NULL, 'Việt Nam'),
('HPH', 'Sân bay quốc tế Cát Bi', 'Phường Đông Hải 2, Quận Ngô Quyền, Hải Phòng', NULL, 'Việt Nam'),
('HUI', 'Sân bay quốc tế Phú Bài', 'Sân bay Quốc tế Phú Bài, thị trấn Hương Thủy, huyện Hương Thủy, tỉnh Thừa Thiên Huế, Việt Nam', NULL, 'Việt Nam'),
('PQC', 'Sân bay quốc tế Phú Quốc', 'Ấp Dương Đông, huyện Phú Quốc, tỉnh Kiên Giang', NULL, 'Việt Nam'),
('PXU', 'Sân bay quốc tế Pleiku', 'Sân bay Quốc tế Pleiku, phường Hòa Lợi, thành phố Pleiku, tỉnh Gia Lai, Việt Nam', NULL, 'Việt Nam'),
('SGN', 'Sân bay quốc tế Tân Sơn Nhất', 'Số 6, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh', NULL, 'Việt Nam'),
('VCA', 'Sân bay quốc tế Cần Thơ', 'Phường An Thới, Quận Bình Thuỷ, Cần Thơ', NULL, 'Việt Nam'),
('VCL', 'Sân bay quốc tế Chu Lai', 'Xã Bình Trị, huyện Núi Thành, tỉnh Quảng Nam', NULL, 'Việt Nam'),
('VII', 'Sân bay quốc tế Vinh', 'Xã Nghi Phú, TP Vinh, Nghệ An', NULL, 'Việt Nam'),
('VKG', 'Sân bay quốc tế Rạch Giá', 'Xã An Hòa, thành phố Rạch Giá, tỉnh Kiên Giang', NULL, 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `taubay`
--

CREATE TABLE `taubay` (
  `SoHieu` varchar(50) NOT NULL,
  `TenTauBay` varchar(100) DEFAULT NULL,
  `SoLuongGhe` int(11) DEFAULT NULL,
  `SoLuongGheBinhThuong` int(11) DEFAULT NULL,
  `SoLuongGheThuongGia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taubay`
--

INSERT INTO `taubay` (`SoHieu`, `TenTauBay`, `SoLuongGhe`, `SoLuongGheBinhThuong`, `SoLuongGheThuongGia`) VALUES
('PA004', 'Airbus A330-900neo - Pacific Airlines', 40, 30, 10),
('PA008', 'Airbus A321-200 - Pacific Airlines', 40, 30, 10),
('PA009', 'Airbus A321 - Pacific Airlines', 40, 35, 5),
('QH003', 'Embraer E195 - Bamboo Airways', 40, 30, 10),
('QH007', 'Airbus A321-200 - Bamboo Airways', 40, 33, 7),
('QH008', 'ATR 42-600 - Bamboo Airways', 40, 30, 10),
('VJ002', 'Airbus A320neo - VietJet Air', 40, 30, 10),
('VJ006', 'Airbus A321-200 - VietJet Air', 40, 30, 10),
('VJ007', 'Airbus A350-900 - VietJet Air', 40, 30, 10),
('VN001', 'Boeing 787 Dreamliner - Vietnam Airlines', 40, 30, 10),
('VN005', 'Airbus A321-200 - Vietnam Airlines', 40, 30, 10),
('VN006', 'Boeing 777-300ER - Vietnam Airlines', 40, 30, 10);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `ID_TheLoai` int(11) NOT NULL,
  `TenTheLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`ID_TheLoai`, `TenTheLoai`) VALUES
(1, 'Resort'),
(2, 'Món ăn'),
(3, 'Đặc sản'),
(4, 'Địa điểm chụp ảnh'),
(5, 'Khu vui chơi'),
(6, 'Du Lịch'),
(7, 'Top 5');

-- --------------------------------------------------------

--
-- Table structure for table `thongtincanhan`
--

CREATE TABLE `thongtincanhan` (
  `ID_ThongTin` int(11) NOT NULL,
  `GioiTinh` varchar(50) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thongtincanhan`
--

INSERT INTO `thongtincanhan` (`ID_ThongTin`, `GioiTinh`, `HoTen`, `NgaySinh`, `SoDienThoai`, `Email`) VALUES
(4688, 'Ông', 'nguyen van a', '2024-03-23', '0124567899', 'eyelessjack0903@gmail.com'),
(4689, 'Ông', 'nguyen van a', '2024-03-30', '0124567899', 'eyelessjack0903@gmail.com'),
(4690, 'Ông', 'nguyen van a', '2024-03-22', '0124567899', 'eyelessjack0903@gmail.com'),
(4691, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com'),
(4692, 'Ông', 'nguyen van a', '2024-03-23', '0124567899', 'eyelessjack0903@gmail.com'),
(4693, 'Ông', 'nguyen van a', '2024-03-08', '0124567899', 'eyelessjack0903@gmail.com'),
(4694, 'Ông', 'nguyen van a', '2024-03-08', '0124567899', 'eyelessjack0903@gmail.com'),
(4695, 'Ông', 'nguyen van a', '2024-03-22', '0124567899', 'eyelessjack0903@gmail.com'),
(4702, 'Ông', 'nguyen van a', '2024-04-01', '0124567899', 'eyelessjack0903@gmail.com'),
(4703, 'Ông', 'nguyen van a', '2024-04-01', '0124567899', 'eyelessjack0903@gmail.com'),
(4704, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com'),
(4705, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com'),
(4706, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com'),
(4707, 'Ông', 'nguyen van a', '2024-03-28', '0124567899', 'eyelessjack0903@gmail.com'),
(4708, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com'),
(4709, 'Ông', 'nguyen van a', '2024-03-21', '0124567899', 'eyelessjack0903@gmail.com'),
(4710, 'Ông', 'nguyen van a', '2024-03-22', '0124567899', 'eyelessjack0903@gmail.com'),
(4711, 'Ông', 'nguyen van a', '2024-03-28', '0124567899', 'eyelessjack0903@gmail.com'),
(4712, 'Ông', 'nguyen van a', '2024-03-30', '0124567899', 'eyelessjack0903@gmail.com'),
(4713, 'Ông', 'nguyen van a', '2024-03-30', '0124567899', 'eyelessjack0903@gmail.com'),
(4714, 'Ông', 'nguyen van a', '2024-03-30', '0124567899', 'eyelessjack0903@gmail.com'),
(4715, 'Ông', 'nguyen van a', '2024-03-22', '0124567899', 'eyelessjack0903@gmail.com'),
(4716, 'Ông', 'nguyen van a', '2024-03-30', '0124567899', 'eyelessjack0903@gmail.com'),
(4717, 'Ông', 'nguyen van a', '2024-03-15', '0124567899', 'eyelessjack0903@gmail.com'),
(4718, 'Ông', 'nguyen van a', '2024-03-23', '0124567899', 'eyelessjack0903@gmail.com'),
(4719, 'Ông', 'nguyen van a', '2024-03-16', '0124567899', 'eyelessjack0903@gmail.com'),
(4720, 'Ông', 'nguyen van a', '2024-03-16', '0124567899', 'eyelessjack0903@gmail.com'),
(4721, 'Ông', 'nguyen van a', '0000-00-00', '0124567899', 'eyelessjack0903@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinkhachhang`
--

CREATE TABLE `thongtinkhachhang` (
  `ID_KhachHang` int(11) DEFAULT NULL,
  `DoTuoi` varchar(50) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `ID_ThongTinKhachHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thongtinkhachhang`
--

INSERT INTO `thongtinkhachhang` (`ID_KhachHang`, `DoTuoi`, `HoTen`, `NgaySinh`, `ID_ThongTinKhachHang`) VALUES
(3703, 'Người lớn', 'nguyen van a', '2024-03-29', 5685),
(3703, 'Người lớn', 'nguyen van b', '2024-03-29', 5686),
(3704, 'Người lớn', 'nguyen van a', '2024-03-30', 5687),
(3704, 'Người lớn', 'nguyen van b', '2024-03-23', 5688),
(3705, 'Người lớn', 'nguyen van a', '2024-03-22', 5689),
(3705, 'Người lớn', 'nguyen van b', '2024-03-23', 5690);

-- --------------------------------------------------------

--
-- Table structure for table `thongtinkhachhangchuyenbay`
--

CREATE TABLE `thongtinkhachhangchuyenbay` (
  `ID_ThongTin` int(11) DEFAULT NULL,
  `DoTuoi` varchar(50) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `ID_ThongTinChuyenBay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thongtinkhachhangchuyenbay`
--

INSERT INTO `thongtinkhachhangchuyenbay` (`ID_ThongTin`, `DoTuoi`, `HoTen`, `NgaySinh`, `ID_ThongTinChuyenBay`) VALUES
(4691, 'nguoiLon', 'nguyen van a', '2024-03-19', 1586),
(4691, 'nguoiLon', 'nguyen van b', '2024-03-27', 1587),
(4691, 'treEm', 'nguyen van c', '2024-03-07', 1588),
(4692, 'Người lớn', 'nguyen van a', '2024-03-27', 1589),
(4692, 'Trẻ em', 'nguyen van c', '2024-03-27', 1590),
(4694, 'Người lớn', 'nguyen van a', '2024-03-29', 1591),
(4694, 'Người lớn', 'nguyen van b', '2024-03-30', 1592),
(4702, 'Người lớn', 'nguyen van a', '2024-03-21', 1602),
(4702, 'Người lớn', 'nguyen van b', '2024-04-03', 1603),
(4703, 'Người lớn', 'nguyen van a', '2024-03-27', 1604),
(4703, 'Người lớn', 'nguyen van b', '2024-03-25', 1605),
(4704, 'Người lớn', 'nguyen van a', '2024-03-21', 1606),
(4705, 'Người lớn', 'nguyen van a', '2024-03-21', 1607),
(4706, 'Người lớn', 'nguyen van a', '2024-04-01', 1608),
(4706, 'Người lớn', 'nguyen van b', '2024-03-21', 1609),
(4707, 'Người lớn', 'nguyen van a', '2024-04-01', 1610),
(4708, 'Người lớn', 'nguyen van a', '2024-03-29', 1611),
(4708, 'Người lớn', 'nguyen van b', '2024-03-22', 1612),
(4709, 'Người lớn', 'nguyen van a', '2024-03-22', 1613),
(4709, 'Người lớn', 'nguyen van b', '2024-03-16', 1614),
(4710, 'Người lớn', 'nguyen van a', '2024-03-28', 1615),
(4710, 'Trẻ em', 'nguyen van c', '2024-03-29', 1616),
(4711, 'Người lớn', 'nguyen van a', '2024-04-04', 1617),
(4711, 'Người lớn', 'nguyen van b', '2024-03-21', 1618),
(4712, 'Người lớn', 'nguyen van a', '2024-03-29', 1619),
(4712, 'Người lớn', 'nguyen van b', '2024-03-15', 1620),
(4713, 'Người lớn', 'nguyen van a', '2024-03-23', 1621),
(4714, 'Người lớn', 'nguyen van a', '2024-03-29', 1622),
(4715, 'Người lớn', 'nguyen van a', '2024-03-30', 1623),
(4716, 'Người lớn', 'nguyen van a', '2024-03-29', 1624),
(4716, 'Người lớn', 'nguyen van b', '2024-03-30', 1625),
(4717, 'Người lớn', 'nguyen van a', '2024-03-29', 1626),
(4717, 'Người lớn', 'nguyen van b', '2024-03-23', 1627),
(4718, 'Người lớn', 'nguyen van a', '2024-03-23', 1628),
(4719, 'Người lớn', 'nguyen van a', '2024-03-30', 1629),
(4720, 'Người lớn', 'nguyen van a', '2024-03-23', 1630),
(4720, 'Người lớn', 'nguyen van b', '2024-03-16', 1631),
(4721, 'Người lớn', 'nguyen van a', '2024-03-30', 1632);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `ID_Tour` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `TenTour` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `NgayDi` date DEFAULT NULL,
  `NgayVe` date DEFAULT NULL,
  `DiaDiemXuatPhat` varchar(255) DEFAULT NULL,
  `DiaDiemToi` varchar(255) DEFAULT NULL,
  `GioTapTrung` time DEFAULT NULL,
  `NoiTapTrung` varchar(255) DEFAULT NULL,
  `PhuongTienDiChuyen` varchar(255) DEFAULT NULL,
  `DiaDiemThamQuan` varchar(255) DEFAULT NULL,
  `AmThuc` varchar(255) DEFAULT NULL,
  `KhachSan` varchar(255) DEFAULT NULL,
  `ID_HuongDanVien` int(11) DEFAULT NULL,
  `SoVe` int(11) DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL,
  `GiaTreEm` decimal(10,2) DEFAULT NULL,
  `GiaEmBe` decimal(10,2) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`ID_Tour`, `HinhAnh`, `TenTour`, `MoTa`, `NoiDung`, `NgayDi`, `NgayVe`, `DiaDiemXuatPhat`, `DiaDiemToi`, `GioTapTrung`, `NoiTapTrung`, `PhuongTienDiChuyen`, `DiaDiemThamQuan`, `AmThuc`, `KhachSan`, `ID_HuongDanVien`, `SoVe`, `Gia`, `GiaTreEm`, `GiaEmBe`, `TrangThai`) VALUES
(1393, 'tourdulichvungtau2n1dvietintravel19.jpg', 'Vũng Tàu', '<h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px; color: rgb(45, 66, 113); font-family: Roboto, sans-serif;\">Ngày 1 - TP.HCM - VŨNG TÀU - BIỂN XANH VẪY GỌI (Ăn trưa)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative; color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3) khởi hành đi Bà Rịa - Vũng Tàu theo tuyến đường cao tốc TP. Hồ Chí Minh - Long Thành. Trên đường đoàn chiêm ngưỡng <span style=\"font-weight: 700;\">Nhà thờ giáo xứ Song Vĩnh: </span>đẹp tựa cung điện nguy nga, với kiến trúc mang phong cách Gothic - kiểu thiết kế đặc trưng nở rộ từ nửa sau thời Trung cổ ở Tây Âu.</div><div> </div><div>Đến TP. Vũng Tàu, đoàn tham quan:<br><span style=\"font-weight: 700;\">- Tượng Chúa Kito:</span> trên đỉnh Tao Phùng, từ trên cánh tay của Tượng Chúa, Quý khách sẽ cảm nhận được hương biển đan trong gió và chiêm ngưỡng toàn diện vẻ đẹp của phố biển Vũng Tàu mộng mơ.</div><div><br><span style=\"font-weight: 700;\">- Bãi biển Thùy Vân (bãi sau Vũng Tàu)</span>: Quý khách hòa mình cùng dòng nước xanh mát hay phơi mình đón ánh nắng lung linh trên bãi cát vàng trải dài trong không khí nhộn nhịp nơi phố biển.</div><div><br><span style=\"font-weight: 700;\">- Vạn Phật Quang Đại Tòng Lâm Tự: </span>một ngôi đại tự bao gồm nhiều quần thể kiến trúc quy mô như tịnh thất và trường Phật học. Chùa còn sở hữu những kỷ lục như Ngôi chùa có tượng Di Lặc Bồ Tát nguyên khối bằng đá hoa cương lớn nhất; Ngôi chùa có tượng Phật nhiều nhất…</div><div><br>Trên đường về lại TP. Hồ Chí Minh, đoàn dừng chân tại <span style=\"font-weight: 700;\">Bò Sữa Long Thành </span>- mua sắm những đặc sản làm quà cho người thân, bạn bè. <br> Xe đưa đoàn về điểm đón ban đầu, kết thúc chuyến du lịch.</div></div></div></div>', 'Biển xanh, nắng vàng, phong cảnh trữ tình cùng công trinh kiến trúc tầm cỡ và sự nhộn nhịp, hiện đại đến khó tả, Vũng Tàu luôn là một điểm đến đặc sắc dành cho du khách bốn phương..', '2024-04-04', '2024-04-07', 'Thành phố Hồ Chí Minh', 'Vũng Tàu', '05:00:00', 'Bến xe miền Đông', 'Xe du lịch', 'Vũng Tàu, Tượng Chúa Kito, Vạn Phật Đại Tòng Tâm', 'Buffet sáng, Theo thực đơn, Đặc sản địa phương', '4 sao', 6789, 20, 1900000.00, 500000.00, 100000.00, 1),
(1394, 'tfd_230922034409_655341_CHUA THIEN MU (8).jpg', 'Thành phố Hồ Chí Minh - Đà Nẵng - Huế (Nhóm Gia Đình từ 4-6 khách)', '<div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px;\">Ngày 1 - TP HỒ CHÍ MINH - ĐÀ NẴNG - HUẾ</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\">Quý khách tập trung tại Ga đi Trong Nước, sân bay Tân Sơn Nhất, hướng dẫn viên Vietravel làm thủ tục cho Quý khách đáp chuyến bay đi Đà Nẵng. Xe đón quý khách tại sân bay Đà Nẵng, lên đường đi Huế. Trên đường dừng tham quan:<br><br><span style=\"font-weight: 700;\">- Đầm Lập An: </span>Ngắm cảnh mây bồng bềnh trên những chóp núi bao bọc quanh đầm,..<br><span style=\"font-weight: 700;\">- Tinh dầu tràm Thái Hà:</span> Huế được coi là xứ sở của loại dầu tràm nổi danh khắp nước với công dụng tuyệt vời, là phương thuốc lành tính, an toàn với mọi lứa tuổi, giúp tiêu tan cái mệt mỏi, các cơn đau kinh niên, cho giấc ngủ được sâu hơn,…<br><span style=\"font-weight: 700;\">- Chùa Thiên Mụ: </span>ngôi chùa được xem là biểu tượng xứ Huế và là nơi lưu giữ nhiều cổ vật quý giá không chỉ về mặt lịch sử mà còn cả về nghệ thuật.<br><span style=\"font-weight: 700;\">- Đại Nội:</span> hoàng cung xưa của 13 vị Vua triều Nguyễn, tham quan Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đình.<br><span style=\"font-weight: 700;\">- Dạo Phố Đêm: </span>trải nghiệm một Huế về đêm không hề trầm mặc với các công trình trải theo chiều dài lịch sử mà như một thiếu nữ trẻ trung khoác lên mình bộ cánh sắc màu căng tràn nhựa sống với tại Phố đi bộ ven sông Hương hài hòa với vẻ lung linh cầu Trường Tiền, tranh thêu XQ, tự do thưởng thức các món đường phố xứ Huế như bánh mì lọc, chè Huế, ngắm nhìn thuyền rồng ngược xuôi bên bến Tòa Khâm văng vẳng âm vang điệu hò Huế. Khám phá khu phố Tây sôi động về đêm với nhiều quán xá đông vui, những hàng quà lưu niệm.<br><br>Đoàn quay về khách sạn, nhận phòng tự do nghỉ ngơi.</div><div style=\"text-align: justify;\"> </div><div style=\"text-align: justify;\"><span style=\"font-weight: 700;\">Nghỉ đêm tại Huế.</span><br> </div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-01\" style=\"line-height: 40px; font-size: 20px;\">Ngày 2 - HUẾ - ĐỘNG THIÊN ĐƯỜNG - ĐỘNG PHONG NHA (Ăn sáng)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Dùng bữa sáng khách sạn. Quý khách khởi hành sớm đi Quảng Bình, đoàn ghé tham quan:<br><span style=\"font-weight: 700;\">- Động Phong Nha: </span>Nằm trong quần thể Di sản thiên nhiên thế giới Phong Nha - Kẻ Bàng, được xem như chốn thần tiên bởi hệ thống núi đá vôi và sông ngầm dài nhất thế giới.<br><br><span style=\"font-weight: 700;\">- Động Thiên Đường:</span> Một trong những hang động kỳ vĩ nhất thế giới, được xem như hoàng cung dưới lòng đất, một nhánh thuộc Quần thể di sản thiên nhiên thế giới Vườn Quốc Gia Phong Nha Kẻ Bàng. <br><br>Sau khi tham quan, đoàn khởi hành về khách sạn, nhận phòng tự do nghỉ ngơi và khám phá Quảng Bình về đêm.</p><p style=\"text-align: justify;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Quảng Bình.  </span><br> </p></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-02\" style=\"line-height: 40px; font-size: 20px;\">Ngày 3 - QUẢNG BÌNH - LA VANG - LẬP AN - ĐÀ NẴNG (Ăn sáng)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Dùng bữa sáng tại khách sạn. Quý khách khởi hành về Đà Nẵng, trên đường đi dừng tham quan:<br><span style=\"font-weight: 700;\">- Thành cổ Quảng Trị: </span>nghe hướng dẫn viên thuyết minh Khu phi quân sự DMZ và Cầu Hiền Lương Sông Bến Hải (Vĩ tuyến 17).<br><span style=\"font-weight: 700;\">- Thánh địa La Vang: </span>một trong bốn tiểu vương cung thánh đường La Mã tại Việt Nam.<br>(Ghi chú: Giai đoạn từ 08/08 – 16/08 hàng năm, Thánh Địa La Vang diễn ra \"Đại Hội Hành Hương Đức Mẹ La Vang\" hàng năm, nên các tour khởi hành trong giai đoạn này sẽ không vào tham quan La Vang)<br>- Nghỉ chân, tham quan <span style=\"font-weight: 700;\">Lucky Pearl</span>: là một trong những điểm đến thân thuộc của người dân xứ Huế chuyên tìm kiếm những nguồn ngọc trai chất lượng và đưa đến khách hàng những sản phẩm tinh tế nhất, cho Quý khách trải nghiệm đẳng cấp<br><span style=\"font-weight: 700;\">- Bán đảo Sơn Trà và viếng Chùa Linh Ứng: </span>Nơi đây có tượng Phật Quan Thế Âm cao nhất Việt Nam. Đứng nơi đây, quý khách sẽ được chiêm ngưỡng toàn cảnh thành phố, núi rừng và biển đảo Sơn Trà một cách hoàn hảo nhất.<br><br>Buổi tối Quý khách tự túc đi dạo phố thưởng ngoạn cảnh đẹp của Đà Nẵng về đêm, ngắm nhìn Cầu Rồng, Cầu Tình Yêu, Cầu Trần Thị Lý, Trung Tâm Thương Mại, Khu phố ẩm thực, Café - Bar - Disco….</p><p style=\"text-align: justify;\"><span style=\"font-weight: 700;\">Nghỉ đêm tại Đà Nẵng. </span><br> </p></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-03\" style=\"line-height: 40px; font-size: 20px;\">Ngày 4 - ĐÀ NẴNG - KHU DU LỊCH BÀ NÀ - CẦU VÀNG – HỘI AN (Ăn sáng)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Dùng bữa sáng tại khách sạn. Xe đưa Quý khách đi tham quan: <br><span style=\"font-weight: 700;\">- Bãi biển Mỹ Khê</span>: Một trong những bãi biển quyến rũ nhất hành tinh, Quý khách tự do dạo biển, chụp hình. <br><span style=\"font-weight: 700;\">- Khu du lịch Bà Nà (chi phí cáp treo): </span>tận hưởng không khí se lạnh của Đà Lạt tại miền Trung, đoàn tự do tham quan Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour, Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ, khu vui chơi Fantasy Park, tự do chụp hình tại Cầu Vàng điểm tham quan siêu hot tại Bà Nà…. Sau đó đoàn tiếp tục tham quan vui chơi đến giờ xuống cáp. <br>- Tham quan<span style=\"font-weight: 700;\"> Làng Đá Non Nước Quốc Hiệp: </span>nơi chế tác các sản phẩm đá mỹ nghệ tạo phong thủy.<br><br>Buổi chiều tiếp tục hành trình đến với Hội An: <br><span style=\"font-weight: 700;\">- Phố Cổ Hội An: </span>Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ,… Tự do thả đèn hoa đăng cầu sức khỏe bình an & phúc lộc năm mới trên dòng sông Hoài…. (chi phí tự túc). <br><br>Đoàn quay về Đà Nẵng, nhận phòng khách sạn, tự do nghỉ ngơi. <br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Đà Nẵng.  </span><br><br> </p></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-04\" style=\"line-height: 40px; font-size: 20px;\">Ngày 5 - ĐÀ NẴNG - TP. HỒ CHÍ MINH (Ăn sáng)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Dùng bữa sáng tại khách sạn.<br><br><span style=\"font-weight: 700;\">- Mua sắm đặc sản phố biển tại Hương Đà hoặc Quà Miền Trung hoặc Quà Đà Nẵng Thiên Phú: </span>với hơn 2000 sản phẩm đặc sản Đà Nẵng, Miền Trung và các vùng miền lân cận, nổi bật nhất là chả bò, bò khô, mực rim me, mực khô, ghẹ sữa sốt và đầy đủ các loại khô cá,...<br><br>Xe tiễn Quý khách ra sân bay Đà Nẵng đón chuyến bay trở về Tp.Hồ Chí Minh. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.   </p></div></div></div>', '- Phố cổ Hội An với lung linh sắc màu của đèn lồng và những hoạt động dân gian đặc sắc\r\n- Đại Nội Huế rộng lớn nơi hoàng cung xưa của các vua chúa Triều Nguyễn\r\n- Chùa Thiên Mụ - Biểu tượng xứ Huế mộng mơ. \r\n- Động Thiên Đường – Một trong những hang động kỳ vĩ nhất được Hiệp hội hang động Hoàng gia Anh đánh giá là hang động khô dài nhất Châu Á, thuộc quần thể Di sản thiên nhiên Thế Giới.\r\n- Động Phong Nha - Thuộc quần thể Di sản với hệ thống sông ngầm dài nhất Thế Giới', '2024-04-09', '2024-04-11', 'Thành phố Hồ Chí Minh', 'Huế', '06:00:00', 'sân bay Tân Sơn Nhất', 'Máy bay, Xe du lịch', 'Đà Nẵng, Bà Nà, Sơn Trà, Hội An, Động Phong Nha, Huế, Quảng Bình', 'Buffet sáng, Theo thực đơn, Đặc sản địa phương', '5 sao', 6788, 20, 13990000.00, 500000.00, 100000.00, 1),
(1395, 'tfd_220718041417_485554.jpg', 'Đà Lạt - Nha Trang', '<div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px;\">Ngày 1 - TP. HỒ CHÍ MINH – ĐÀ LẠT Số bữa ăn: 3 bữa (Ăn sáng, trưa, chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách tập trung tại Vietravel (190 Pasteur, phường Võ Thị Sáu, quận 3, TP.HCM), xe đưa đoàn khởi hành đi Đà Lạt. Trên đường đi Quý khách ghé tham quan:<br><br><span style=\"font-weight: 700;\">- Thác Bobla:</span> đẹp như một bức tranh thiên nhiên với dòng thác nguyên sơ, hùng vĩ cao hơn 40m, rộng hơn 20m, cùng cảnh quan được tôn tạo tuyệt đẹp, lưu giữ nhiều cây cổ thụ hàng trăm năm tuổi, phía xa hút tầm mắt là những đồi chè, cà phê xanh mát.<br><span style=\"font-weight: 700;\">- Ga Đà Lạt: </span>nhà ga cổ kính nhất Việt Nam và Đông Dương, có phong cách kiến trúc độc đáo với ba mái hình chóp cách điệu như ba đỉnh núi Langbiang và nhà rông Tây Nguyên.<br><br>Đến Đà Lạt sau khi ăn chiều, Quý khách nhận phòng khách sạn nghỉ ngơi<br><br>Buổi tối, Quý khách tự do dạo phố thưởng thức ẩm thực nổi tiếng phố núi: Lẩu gà lá é Tao Ngộ, Lẩu bò quán Gỗ, Bánh ướt lòng gà, Ốc nhồi thịt, Xe lẩu buffet, Ngói BBQ … hoặc đến Nhạc Quán Diễm Xưa lắng nghe những tình khúc bất hủ của nhạc sỹ Trịnh Công Sơn …<span style=\"font-weight: 700;\"> (chi phí tự túc). <br><br>Nghỉ đêm tại Đà Lạt</span><br> </div><div> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-01\" style=\"line-height: 40px; font-size: 20px;\">Ngày 2 - ĐÀ LẠT - THÀNH PHỐ NGÀN HOA Số bữa ăn: 3 bữa (Ăn sáng, trưa, chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Sau khi dùng bữa sáng tại khách sạn, Quý khách khởi hành đi tham quan:<br><br><span style=\"font-weight: 700;\">- Đường Hầm Đất Sét:</span> các công trình nghệ thuật với những tác phẩm điêu khắc bằng đất nung hoành tráng, ấn tượng được sách Kỷ Lục Việt Nam công nhận như: Ga xe lửa, dinh Bảo Đại, Đại học Đà Lạt, nhà thờ Con Gà, sân bay Liên Khương, đường cao tốc, hồ Tuyền Lâm, thung lũng Tình yêu…). Nổi tiếng là “hồ vô cực” thu hút nhiều du khách đến tham quan hiện nay.<br><br>Ăn trưa, đoàn về khách sạn nghỉ ngơi. Buổi chiều đoàn tiếp tục tham quan:</div><div><br><span style=\"font-weight: 700;\">- KDL Cao Nguyên Hoa:</span> với diện tích hơn 122ha, là nơi bảo tồn đa dạng sinh học đặc biệt là các lòai hoa thân gỗ không chỉ có ở Đà Lạt mà còn trên toàn Thế giới với mảng xanh của rừng - thảm cỏ tự nhiên rộng khắp, điểm xuyến những khóm hoa Thanh Anh nhẹ nhàng dọc lối đi. Đến đây Quý khách sẽ được trải nghiệm: <br><span style=\"font-weight: 700;\">- Quán</span> <span style=\"font-weight: 700;\">Seven-T Coffee</span> nằm giữa rừng thông với view 360° núi đồi xanh mát, bể bơi vô cực giữa rừng nhiệt đới <br>- Xả stress và ghi lại những khoảnh khắc đẹp với<span style=\"font-weight: 700;\"> Đà Lạt Swing</span> – trò chơi “xích đu tiên” lớn nhất Việt Nam. <br><span style=\"font-weight: 700;\">- Rose Garden</span> – Vườn hoa hồng với hàng trăm gốc hồng ngoại, hồng nội, hồng cổ thụ quý hiếm tỏa hương khoe sắc bốn mùa. <br>- Con đường rừng nhiệt đới dẫn lối đến<span style=\"font-weight: 700;\"> gốc si cổ thụ nghìn năm</span> huyền bí và cổ kính. <br>- Thoả sức chụp hình <span style=\"font-weight: 700;\">check in với dàn siêu xe</span> cực chill, cực chất hay ngôi nhà phù thủy, đồi mai anh đào, đồi huệ sông nile, đồi hoa sim tím, đồi hoa hoàng yến,…</div><div><br><span style=\"font-weight: 700;\">- Trang trại rau và hoa Vạn Thành</span>: du khách sẽ choáng ngợp bởi vẻ quyến rũ của bức tranh tuyệt mỹ được tạo nên bởi vô vàn các loài hoa đua nhau khoe sắc như đóa Hồng, Cẩm Chướng, Lily, Đồng Tiền, Cẩm Tú Cầu… Ngoài ra, Quý khách còn được khám phá quy trình trồng những loại nông sản và thỏa sức chụp hình tại vườn cà chua, bí khổng lồ, dưa Pepino, dâu và các loại rau trồng thủy canh (tùy theo mùa).</div><div> </div><div><span style=\"font-weight: 700;\">- Mua sắm đặc sản Đà Lạt tại cơ sở mứt Thanh Nhu: </span>các loại trái cây sấy giòn, sấy dẻo, nước cốt dâu tằm – dâu tươi, trà atiso, trà hoa, ...<br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Đà Lạt. </span></div><div> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-02\" style=\"line-height: 40px; font-size: 20px;\">Ngày 3 - ĐÀ LẠT - NHA TRANG Số bữa ăn: 3 bữa (Ăn sáng, trưa, chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Sau khi dùng bữa sáng, đoàn khởi hành tham quan:<br>- <span style=\"font-weight: 700;\">Fairytale Land & hầm rượu vang Vĩnh Tiến: </span>đến đây du khách như lạc vào khu vườn cổ tích của những chú lùn Hobbiton, điểm xuyến trong khu vườn là những ngôi nhà độc đáo và đầy sắc màu, những bức vẽ trên tường đầy lôi cuốn và những thảm hoa nhỏ không kém phần quyến rũ. Dạo một vòng quanh khu vườn đừng quên rảo bước vào hầm rượu vang với hơn 10.000 chai đang được lưu trữ dưới hầm.<br><br>Quý khách ăn trưa, đoàn tiếp tục khởi hành đi Nha Trang. <br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Nha Trang</span></div><div> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-03\" style=\"line-height: 40px; font-size: 20px;\">Ngày 4 - NHA TRANG - HÒN LAO - VINWONDERS NHA TRANG Số bữa ăn: 2 bữa (Ăn sáng, trưa, tự túc ăn chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Sau khi dùng buffet sáng tại khách sạn, xe đưa đoàn đến cảng xuống tàu du ngoạn và tham quan:<br><br><span style=\"font-weight: 700;\">- Hòn Lao - Đảo Khỉ: </span>nơi có hơn 1000 chú khỉ đang được bảo tồn và sinh sống tự nhiên. Quý khách tự do tắm biển, thư giãn, tham quan xem chương trình biểu diễn xiếc Khỉ, đua chó, khỉ bơi lội hoặc trải nghiệm các môn thể thao trên bãi biển và trò chơi: canô kéo dù, mô tô nước, đua xe công thức 1, bắn súng sơn, cưỡi đà điểu … (chi phí tự túc).<br><br>Sau khi dùng bữa trưa, Quý khách quay về trung tâm thành phố. Buổi chiều Quý khách ăn chiều tự túc và tự do nghỉ ngơi tại khách sạn hoặc tự túc chi phí lựa chọn 1 trong 2 điểm tham quan như sau:<br><br><span style=\"font-weight: 700;\">- Lựa chọn 1: Vinwonders Nha Trang</span> (chi phí tự túc): Quý khách tự do tham quan vui chơi trong khuôn viên với những lâu đài châu Âu tráng lệ, cáp treo hình tháp Eiffel, Đồi Vạn Hoa,.. Dạo bước trong không gian này vào ban ngày, du khách tưởng như mình đang lạc vào một phố cổ nào đó của phương tây. Đêm xuống, cảnh vật trở nên lung linh hơn bao giờ hết bởi đèn trang trí trong các lâu đài, khu vui chơi, tạo nên vẻ đẹp huyền ảo, thần tiên. Tự do Tham gia những trò chơi như tháp rơi tự do Sky Drop, trượt ván Alpine Coaster, tàu lượn cao tốc Roller Coaster, đu dây văng sẽ thích hợp với các bạn yêu thích cảm giác mạnh tạo ra từ các cú xoay, lộn nhào trên không trung, lật nghiêng. Quý khách có thể dạo bước trong thế giới Thuỷ Cung, tại đây có hơn 300 loại sinh vật biển quý hiếm từ nhiều quốc gia khác nhau hội tụ về. Đặc biệt, <span style=\"font-weight: 700;\">Thủy Cung Vinpearl Land Nha Trang </span>còn mang tới cho du khách một thế giới lung linh sắc màu với các chương trình biểu diễn nghệ thuật độc đáo như biểu diễn Nàng tiên cá – nơi du khách được chiêm ngưỡng các nàng tiên cá xinh đẹp bước ra từ cổ tích, hay chương trình cho cá ăn – với những chàng thợ lặn khỏe khoắn, chơi đùa và chăm sóc các cư dân Thủy Cung. Hoặc tại Lâu đài phim 4D, Quý khách sẽ được thưởng thức công nghệ chiếu phim cực sắc nét cùng hiệu ứng 4D chân thực như đang sống trong thế giới đại dương. Ngoài ra, còn có các chương trình biểu diễn nhạc nước, biểu diễn cá heo, biểu diễn Carnival vô cùng hấp dẫn.... <br><br><span style=\"font-weight: 700;\">- Lựa chọn 2: du ngoạn trên du thuyền Emperor (chi phí tự túc),</span> tàu sẽ di chuyển dọc thành phố biển Nha Trang, du khách sẽ được ngắm cảnh hoàng hôn đẹp nhất trong khi thưởng thức tiệc cocktail, bữa tối tinh tế và nghệ sỹ ghi ta, violon chơi những bản nhạc du dương trong một khung cảnh lãng mạn dưới trời sao, ánh trăng và ánh đèn rực rỡ của thành phố.<br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Nha Trang.</span><br> </div><div> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-04\" style=\"line-height: 40px; font-size: 20px;\">Ngày 5 - NHA TRANG – TP.HCM Số bữa ăn: 2 bữa (Ăn sáng, trưa)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Sau khi dùng buffet sáng và trả phòng khách sạn. Xe đưa Quý khách đi tham quan:<br><br><span style=\"font-weight: 700;\">- Ngọc trai Long Beach Pearl (đường Trương Hán Siêu):</span> tham quan, mua sắm các sản phẩm từ ngọc trai - báu vật khơi xa kết hợp cùng sự sáng tạo của người nghệ nhân tạo thành những sản phẩm trang sức cao cấp, chất lượng cao. Không chỉ dành riêng cho phái nữ, Long Beach Pearl còn chế tác những chiếc vòng tay dây da ngọc trai dành cho nam giới. </div><div> </div><div>-  Mua sắm đặc sản phố biển tại <span style=\"font-weight: 700;\">Hương Đà Nha Trang</span><br><br>Ăn trưa. Đoàn khởi hành về lại Tp.HCM. Trên đường về, đoàn dừng chân tại tham quan: <br><br><span style=\"font-weight: 700;\">- Làng Chài Xưa: </span>với lịch sử 300 năm cái nôi của nghề làm nước mắm, trải nghiệm cảm giác lao động trên đồng muối, đi trên con đường rạng xưa, thăm phố cổ Phan Thiết, , thăm nhà lều của hàm hộ nước mắm xưa, đắm chìm cảm xúc trong biển 3D và thích thú khi đi chợ làng chài xưa với bàn tính tay, bàn cân xưa thú vị,…<br><br>Xe đưa đoàn về lại điểm đón ban đầu và kết thúc hành trình nhiều trải nghiệm.</div><div> </div></div><p style=\"text-align: center;\"><span style=\"font-weight: 700;\">*** KẾT THÚC CHƯƠNG TRÌNH – TẠM BIỆT QUÝ KHÁCH*** </span></p></div></div></div>', 'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa. Đến với Nha Trang, du khách không chỉ tận hưởng những đợt gió biển trong nắng ấm mà còn có dịp thưởng thức hải sản tươi ngon cùng sự chào đón nồng hậu từ những người dân vùng biển nghĩa tình, cho Quý khách trải nghiệm khó quên tại vùng đất này.  ', '2024-04-03', '2024-04-06', 'Đà Lạt', 'Nha Trang', '05:00:00', 'Bến xe liên tỉnh Đà Lạt', 'Xe du lịch', 'Nha Trang, Đà Lạt, Vinwonder, Ga Đà Lạt, Thác Bobla, Đường Hầm Đất Sét, Làng Hoa Vạn Thành, Làng Chài Xưa, Hòn Lao, Đảo Khỉ', 'Buffet sáng, Theo thực đơn, Đặc sản địa phương', '5 sao', 6789, 15, 4900000.00, 1500000.00, 1000000.00, 1),
(1397, 'con dao.jpg', 'Côn Đảo: Bảo Tàng Côn Đảo - Dinh Chúa Đảo - Khám Phá Thiên Đường Của Biển', '<div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px;\">Ngày 1 - TP.HCM - CÔN ĐẢO OAI HÙNG (Ăn trưa, chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><p>Quý khách tập trung tại sân bay Tân Sơn Nhất (ga trong nước), Hướng dẫn viên làm thủ tục cho đoàn đáp chuyến bay đến Côn Đảo. <br><br>Đến nơi, xe và Hướng dẫn viên đưa đoàn<span style=\"font-weight: 700;\"> theo con đường quanh co trải dài hàng cây xanh</span> nối liền từ sân bay về trung tâm thị trấn, chiêm ngưỡng cảnh quan thiên nhiên của núi cao hùng vĩ, xa xa là những hòn đảo ẩn hiện trong sắc xanh của biển cả …  </p><p>Quý khách tham quan các<span style=\"font-weight: 700;\"> Di tích Văn hóa - Lịch sử hào hùng:</span><br><span style=\"font-weight: 700;\">- Bảo tàng Côn Đảo: </span>nơi trưng bày những kỷ vật về năm tháng lịch sử hào hùng của dân tộc Việt Nam.<br><span style=\"font-weight: 700;\">- Dinh Chúa Đảo:</span> nơi sống và làm việc các đời chúa đảo từ năm 1862 - 1975.<br><span style=\"font-weight: 700;\">- Trại Phú Hải:</span> trại giam lớn và cổ nhất của hệ thống nhà tù Côn Đảo.<br><span style=\"font-weight: 700;\">- Chuồng cọp kiểu Pháp (trại Phú Tường): </span>khám phá hệ thống chuồng Cọp kiên cố được xây dựng ẩn giữa các tòa nhà như mê cung. <br><span style=\"font-weight: 700;\">- Chuồng cọp kiểu Mỹ (trại Phú Bình):</span> với các dãy phòng giam nhỏ hẹp và ẩm thấp được xây dựng vào năm 1971. Nơi đây chủ yếu tra tấn tù nhân về tinh thần và cũng là nơi nhận được tin Sài Gòn giải phóng đầu tiên. </p><p>Buổi chiều, Quý khách tham quan:<br><span style=\"font-weight: 700;\">- An Sơn Miếu: n</span>ghe kể về giai thoại thứ phi Phi Yến với câu hát ru nổi tiếng “Gió đưa cây cải về trời, rau răm ở lại chịu đời đắng cay”. <br>- Ngắm nhìn vẻ đẹp của <span style=\"font-weight: 700;\">hồ An Hải </span>tham quan<span style=\"font-weight: 700;\"> Vân Sơn Tự </span>- Ngôi chùa Phật giáo duy nhất ở Côn Đảo như rực rỡ trong bức tranh thủy mặc của mái ngói đỏ tươi giữa nền xanh của rừng cây cổ thụ</p><p><br>Buổi tối, Quý khách <span style=\"font-weight: 700;\">viếng mộ cô Sáu nổi tiếng linh thiêng về đêm.</span><br><br>Quý khách tự do tản bộ khám phá Côn Đảo yên bình về đêm; <span style=\"font-weight: 700;\">thưởng thức cà phê Côn Sơn ngắm cầu tàu 914 hoặc kem dừa đất Côn Đảo thơm ngon, cuốn khách.</span><br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Côn Đảo.</span></p></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-01\" style=\"line-height: 40px; font-size: 20px;\">Ngày 2 - KHÁM PHÁ CÔN ĐẢO “THIÊN ĐƯỜNG CỦA BIỂN” (Ăn sáng, trưa, chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><p>Sau khi dùng bữa sáng tại khách sạn. Xe đưa Quý khách tham quan:<br><br><span style=\"font-weight: 700;\">- Miếu Hoàng Tử Cải:</span> ngôi miếu con trai của Vua Gia Long và Thứ Phi Hoàng Phi Yến, gắn liền với cuộc bôn tẩu của Vua Gia Long trước sự truy đuổi của quân Tây Sơn.<br><br>- Thoả thích tắm biển tại <span style=\"font-weight: 700;\">bãi biển Đầm Trầu:</span> với bãi cát vàng mịn được bao quanh bởi những khu rừng nhiệt đới, đỉnh đèo hình chữ C, một bên là vách núi và ở giữa là những hàng cây trải dài soi bóng; <span style=\"font-weight: 700;\">trải nghiệm săn khoảnh khắc máy bay hạ cánh</span></p><p>Buổi chiều, xe đưa Quý khách khám phá một trong những<span style=\"font-weight: 700;\"> cung đường biển đẹp nhất Côn Đảo</span> chiêm ngưỡng <span style=\"font-weight: 700;\">Mũi Cá Mập - Đỉnh Tình Yêu</span>; tham quan<span style=\"font-weight: 700;\"> Bãi Nhát </span>- Khi nước xuống sẽ lộ thiên một bãi tắm với cát trắng mịn; <span style=\"font-weight: 700;\">ghi lại toàn cảnh núi non nên thơ đang dần chuyển mình khi hoàng hôn dần buông xuống đại dương bao la.</span><br><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Côn Đảo </span></p></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-02\" style=\"line-height: 40px; font-size: 20px;\">Ngày 3 - CÔN ĐẢO - TP.HCM (Ăn sáng)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Quý khách dùng bữa sáng tại khách sạn, tự do nghỉ ngơi thư giãn và tắm biển.<br><br>Quý khách khởi hành ra ra sân bay Côn Đảo trở về TP. Hồ Chí Minh, trên đường dừng chân<span style=\"font-weight: 700;\"> mua sắm đặc sản nổi tiếng Côn Đảo</span> như hạt bàng, các loại khô và hải sản tươi ngon tại cửa hàng Hương Biển.<br><br>Chia tay Quý khách và kết thúc chuyến du lịch tại sân bay Tân Sơn Nhất.</p><p style=\"text-align: justify;\"><span style=\"font-weight: 700;\">*Quý khách lưu ý: </span><br>- Giờ bay phụ thuộc vào hãng hàng không, số bữa ăn phụ thuộc vào giờ bay. Các bữa ăn có thể hoán đổi để phù hợp với chương trình.<br>- Hành trình có thể thay đổi thứ tự điểm đến tùy vào điều kiện thực tế<br>- Đây là chương trình du lịch trọn gói, Vietravel không có trách nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách lẻ của các điểm tham quan.<br> </p></div></div></div>', 'Ngày nay, Côn Đảo không chỉ được xem là vùng đất thiêng liêng với những địa danh lịch sử oai hùng như trại tù Phú Hải, chuồng cọp Pháp - Mỹ, … Hòn đảo xinh đẹp này còn được thiên nhiên ưu ái ban tặng những tọa độ ngắm hoàng hôn đẹp ngây ngất, những bãi cát trải dài mịn màng, thảm thực vật xanh mướt phủ kín, … & một hành trình khám phá thiên nhiên với biết bao điều khác lạ.', '2024-04-05', '2024-04-08', 'Thành phố Hồ Chí Minh', 'Côn Đảo', '05:01:00', 'Sân bay Tân Sơn Nhất', 'Máy bay, Xe du lịch', 'Côn Đảo, Chuồng Cọp, Bảo Tàng, Đầm Trầu, An Sơn Miếu, Dinh Chúa Đảo', 'Buffet sáng, Theo thực đơn', '5 sao', 6784, 10, 7000000.00, 2000000.00, 1000000.00, 1),
(1398, 'dalat1.jpg', 'Đà Lạt – Khu Du lịch Chuồn Chuồn', '<div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px;\">Ngày 1 - TP. HỒ CHÍ MINH – KDL CHUỒN CHUỒN – LINH ẨN TỰ - ĐÀ LẠT Số bữa ăn: 03 bữa (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\">Quý khách tập trung tại Vietravel (190 Pasteur, P. Võ Thị Sáu, Q3, TP.HCM), khởi hành đi Đà Lạt. Đoàn dùng bữa sáng và bữa trưa trên đường đi.<br><br>Trên hành trình đến với thành phố sương mù, xe và HDV đưa khách đi trên cung đường<span style=\"font-weight: 700;\"> QL27 nối vào DT725 chinh phục đèo Tà Nung </span>một trong những trục đường dẫn vào thành phố Đà Lạt. Đoàn dừng chân tham quan: <br><br>- <span style=\"font-weight: 700;\">Chùa Linh Ẩn:</span> được xây dựng theo thế lưng tựa núi mặt hướng thủy với rừng thông bạt ngàn bao quanh và trước mặt là thác Voi hùng vĩ. Nơi đây mang lối kiến trúc cổ kính, đem đến không gian bình yên, thanh tịnh tại chốn thiên môn cho Quý khách. Ngôi chùa còn nổi tiếng với Bức tượng Quan Thế Âm cao nhất Việt Nam.<br><br>- <span style=\"font-weight: 700;\">KDL Chuồn Chuồn: </span>điểm đến mới tại xã Mê Linh, đến đây du khách thỏa thích tạo dáng tại hồ cô cực, hồ chuồn chuồn, thác vọng cảnh và nhiều tiểu cảnh lớn nhỏ khác. Chiêm ngưỡng hàng trăm loài hoa đặc sắc của Đà Lạt. Thưởng thức cà phê chất lượng cao hay những thức uống thơm ngon đa dạng (chi phí nước uống tự túc).<br><br>Chiều đoàn tiếp tục hành trình về Đà Lạt, nhận phòng nghỉ ngơi. Buổi tối, Quý khách tự do thưởng thức café ngắm hồ Xuân Hương về đêm<br><br>Nghỉ đêm tại Đà Lạt<br> </div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-01\" style=\"line-height: 40px; font-size: 20px;\">Ngày 2 - ĐÀ LẠT - KHÁM PHÁ THUNG LŨNG TÌNH YÊU – CẦU KÍNH NGÀN THÔNG 7D Số bữa ăn: 02 bữa (Sáng, Trưa, Ăn chiều tự túc)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><p>Quý khách dùng bữa sáng tại khách sạn, xe đưa đoàn đi tham quan:<br><br>- Khám phá <span style=\"font-weight: 700;\">Thung Lũng Tình Yêu – Đồi Mộng Mơ: </span>đến đây du khách như lạc vào không gian cổ tích với nhiều hoạt động thú vị như:<br><br>+ <span style=\"font-weight: 700;\">Khám phá như mê cung tình yêu </span>hình trái tim màu xanh trải rộng trên diện tích 4.000m², thung lũng ngàn hoa, công trình 30 kỳ quan, bảo tàng tượng sáp… <br><br>+ Check-in các không gian sắc màu của <span style=\"font-weight: 700;\">dãy phố cổ Hội An, vườn hoa lavender, cây tình yêu, cầu thang sách, đồi vọng cảnh. </span><br><br>+ Chinh phục <span style=\"font-weight: 700;\">Cầu Kính Ngàn Thông 7D </span>– là cây cầu kính thứ 4 tại Việt Nam và là đầu tiên của khu vực Miền Trung – Tây Nguyên. Nằm ở độ cao 1500m, cầu kính hứa hẹn sẽ là một địa điểm sống ảo và mang lại nhiều cảm xúc mới lạ cho quý khách. <span style=\"font-weight: 700;\">(chi phí cầu kính tự túc)</span><br><br>+ Tham qua các hoạt động như: <span style=\"font-weight: 700;\">đạp vịt, Pedalo trên hồ Đa Thiện, khu trò chơi liên hoàn với các trò chơi như: giữ thăng bằng trên dây cáp (highwire); đu dây mạo hiểm tự do (zipline)... và xe điện tham quan Thung Lũng Tình Yêu.</span><br><br>Sau bữa trưa, đoàn dừng chân mua sắm đặc sản làm quà cho người thân, bạn bè và trở về khách sạn nghỉ ngơi, tự do khám phá thành phố sương mù. <br><br>-<span style=\"font-weight: 700;\"> Mua sắm đặc sản Đà Lạt tại cơ sở mứt Thanh Nhu: </span>các loại trái cây sấy giòn, sấy dẻo, nước cốt dâu tằm – dâu tươi, trà atiso, trà hoa, ...<br><br><br>Buổi tối, đoàn nghỉ ngơi tại khách sạn hoặc tự do khám phá Thành phố Đà Lạt:<br>- Vào 16h30 <span style=\"font-weight: 700;\">đón hoàng hôn và thưởng thức bữa tiệc âm nhạc cùng Amazing Show</span> với không gian ngoài trời và có tầm nhìn xuống thành phố Đà Lạt thơ mộng. Hoặc vào 19h00<span style=\"font-weight: 700;\"> thưởng thức những bản nhạc trữ tình xưa, nhạc Trịnh, nhạc Bolero tại ‘‘Âm sắc Đà Lạt – Cung Đàn Xưa’’</span>, Quý khách có dịp trải nghiệm một phong cách sống “chậm” và tận hưởng từng phút giây, lưu giữ những khoảnh khắc tuyệt vời ở tận sâu trong tâm hồn mỗi người. (Chi phí tự túc)<br><br><span style=\"font-weight: 700;\">- Trải nghiệm tắm khoáng nóng & xông hơi tại Dlat’s</span> giúp bạn thư giãn và nghỉ ngơi, giải tỏa căng thẳng (Chi phí tự túc)<br><span style=\"font-weight: 700;\">***Lưu ý: Chi phí vé và đi lại tự túc***</span><br><br><br>Buổi tối, Quý khách tự do tản bộ Chợ Đà Lạt. <br><br>Nghỉ đêm tại Đà Lạt<br> </p></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-02\" style=\"line-height: 40px; font-size: 20px;\">Ngày 3 - ĐÀ LẠT – MONGO LAND - NHÀ THỜ DOMAIN DE MARIE – THIỀN VIỆN TRÚC LÂM Số bữa ăn: 03 bữa (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><p>Quý khách dùng bữa sáng tại khách sạn, xe cùng hướng dẫn viên Vietravel đưa đoàn di chuyển đến tham quan:<br><br><span style=\"font-weight: 700;\">- Mongo Land: </span>mang vẻ đẹp hoàn toàn mới lạ - một \"tiểu Mông Cổ thu nhỏ\" trong lòng Đà Lạt được thiết kế như một nông trại với những chiếc lều đủ màu sắc. Tất cả đều được bài trí độc đáo, bắt mắt theo phong cách Mông Cổ đặc trưng. Đến đây, ngoài việc tận hưởng bầu không khí trong lành và chiêm ngưỡng vẻ đẹp của thiên nhiên hùng vĩ, Quý khách sẽ được trải nghiêm: <br>+ Thỏa thích chụp ảnh tại <span style=\"font-weight: 700;\">lều mông cổ, xích đu, nông trại âu, thảm cỏ, sa mạc xương rồng,…</span><br>+ Hòa mình vào thế giới của động vật: <span style=\"font-weight: 700;\">hươu sao, dê mini, cừu, thỏ Việt, thỏ Holland Lop Hà Lan, thỏ Sư Tử, chim Yến, Chinchilla, sóc Chipmunk,…</span> và tự tay cho thú ăn (thức ăn sẽ được Mongo Land chuẩn bị sẵn cho quý khách).<br>+ Trải nghiệm cảm giác “siêu đã” tại<span style=\"font-weight: 700;\"> đường trượt phao khô đẹp và dài nhất Đà Lạt</span><br>+ Tham gia các hoạt động vui chơi như: <span style=\"font-weight: 700;\">trượt cỏ, bắn cung</span><br>+ <span style=\"font-weight: 700;\">Trở thành những cô nàng, chàng trai du mục thực thụ</span> khi diện trên mình trang phục người Mông Cổ. <span style=\"font-weight: 700;\">(Chi phí thuê trang phục tự túc).</span></p><p>Buổi trưa, đoàn dùng bữa trưa tại nhà hàng địa phương. Sau đó tiếp tục tham quan:<br><br>- <span style=\"font-weight: 700;\">Nhà Thờ Domain de Marie: </span>theo dòng nữ tu Bác Ái, tọa lạc trên đồi Mai Anh, nổi bật với màu hồng sáng rực. Quý khách có thể chọn cho mình những món đồ từ len trong khuôn viên phía sau nhà thờ.<br><br>- <span style=\"font-weight: 700;\">Thiền viện Trúc Lâm:</span> với quần thể công trình kiến trúc độc đáo, du khách còn được ngắm nhìn các vườn hoa xinh đẹp khoe sắc và toàn cảnh Hồ Tuyền Lâm với thiên nhiên, núi đồi, rừng thông Đà Lạt. <br><br>Sau bữa tối, đoàn tự do uống café quanh khu vực Hồ Xuân Hương hay thưởng thức ly sữa đậu nành nóng hổi, bánh tráng nướng đặc sản Đà Lạt khu vực Tăng Bạt Hổ. <br><br>Nghỉ đêm tại Đà Lạt<br> </p></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-03\" style=\"line-height: 40px; font-size: 20px;\">Ngày 4 - ĐÀ LẠT – HOÀNG LONG OHAYO - TP. HỒ CHÍ MINH Số bữa ăn: 02 bữa (Sáng, Trưa)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">Quý khách dùng bữa sáng tại khách sạn và làm thủ tục trả phòng, hướng dẫn viên đưa đoàn đi tham quan:<br><br>- <span style=\"font-weight: 700;\">Hoàng Long Ohayo: </span>tự hào là một trong những khu vườn bonsai lá kim lớn nhất Việt Nam với những chậu cây bonsai được chăm sóc và uốn nắn kỹ lưỡng vô cùng đẹp mắt. Ngoài ra, quý khách còn được chiêm ngưỡng những loài hoa nổi tiếng của Đà Lạt, hồ cá Koi đặt tiêu chuẩn Nhật Bản, hàng loạt tiểu cảnh mang đậm sắc màu Nhật Bản như hàng cổng Tori, khu thác nước, khu phố Nhật, con đường tre,… Tất cả sẽ tạo nên một không gian thư thái hoà quyện với thiên nhiên. <br><br>Đoàn khởi hành về TP. HCM và dừng tại Bảo Lộc dùng cơm trưa, sau đó khởi hành về điểm đón ban đầu. Chia tay đoàn và kết thúc chương trình du lịch.<br> </p></div></div></div>', 'Bao nhiêu năm vẫn vậy, Đà Lạt vẫn đẹp và thơ mộng như những phút giây ban đầu khi Quý khách đặt chân đến nơi đây. Sở hữu khí hậu tuyệt vời, không khí ở đây trong lành, mát mẻ, khác hẳn sự ngột ngạt, đông đúc của những đô thị lớn. Đến Đà Lạt, bạn có thể trải nghiệm 1 ngày với 4 mùa: Buổi sáng sớm là thời tiết của mùa xuân, buổi trưa là mùa hạ, buổi chiều là mùa thu, và đêm là mùa đông. Đặc biệt, mỗi độ xuân về hoa mai anh đào Đà Lạt đua nhau khoe sắc hồng như “nàng sơn nữ” lộng lẫy trong váy áo hồng, quyến rũ lạ kỳ. \r\n\r\nTrong hành trình du xuân đầu năm, Quý khách không chỉ được chiêm ngưỡng sự hùng vĩ của ngọn thác Dambri, mùi hương tươi mát của những đồi chè sớm mai, tìm hiểu phương pháp làm rượu vang, tạo dáng bên những chiếc liều Mông Cổ xinh xắn, thăm vườn dâu tây,… Chương trình Đón lộc đầu năm cùng Vietravel với chủ đề «Khai Mở Tâm An» hứa hẹn sẽ tạo cho Quý khách những trải nghiệm khó quên như thưởng thức bữa ăn thuần chay tại Samten Hills, tặng thiệp chữ «OM» được thiết kế theo văn hoá Tây Tạng như một lời cầu chúc cho năm mới mọi sự bình an.', '2024-04-16', '2024-04-19', 'Thành phố Hồ Chí Minh', 'Đà Lạt', '05:32:00', 'sân bay Tân Sơn Nhất', 'Máy bay, Xe du lịch', 'Đà Lạt, Thiền Viện, Thung lũng Tình yêu, đồi mộng mơ, mongo land', 'Buffet sáng, Theo thực đơn, Đặc sản địa phương', '5 sao', 6788, 10, 3790000.00, 2000000.00, 500000.00, 1),
(1399, 'pq1.jpg', 'Phú Quốc - Tham quan nét truyền thống phía Nam Đảo', '<h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px; color: rgb(45, 66, 113); font-family: Roboto, sans-serif;\">Ngày 1 - Hành trình chi tiết</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative; color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><p style=\"text-align: justify;\">08:00: Hướng dẫn viên đón quý khách tại khách sạn và bắt đầu hành trình tham quan 7 điểm đặc trưng của đảo Phú Quốc:<br><span style=\"font-weight: 700;\">- Cơ sở sản xuất rượu Sim rừng.<br>- Cơ sở nuôi cấy ngọc trai.<br>- Di tích lịch sử Nhà tù Phú Quốc.<br>- Nhà thùng sản xuất nước mắm. <br>- Bãi Sao: ăn trưa, tắm biển.<br>- Chùa Hộ Quốc.<br>- Vườn tiêu.</span></p><p style=\"text-align: justify;\"><em>(Buổi chiều đoàn có thể tham quan Sunset Sanato, không bao gồm vé, quý khách tự túc về khách sạn).</em></p><p style=\"text-align: justify;\"><span style=\"font-weight: 700;\">15:30</span>:  Quay trở về khách sạn.</p></div></div>', 'Phú Quốc không chỉ nổi tiếng bởi biển xanh, nắng vàng mà còn có rất nhiều địa điểm tham quan thú vị. Đến với tour Nam đảo Quý khách sẽ được trải nghiệm 7 điểm tham quan nổi tiếng của Đảo Ngọc.', '2024-04-10', '2024-04-11', 'Phú Quốc', 'Phú Quốc', '08:01:00', 'Phú Quốc', 'Xe du lịch', '4 địa điểm bên ngoài, 3 đại điểm phía trong', 'Theo thực đơn', '5 sao', 6789, 10, 600000.00, 300000.00, 100000.00, 1);
INSERT INTO `tours` (`ID_Tour`, `HinhAnh`, `TenTour`, `MoTa`, `NoiDung`, `NgayDi`, `NgayVe`, `DiaDiemXuatPhat`, `DiaDiemToi`, `GioTapTrung`, `NoiTapTrung`, `PhuongTienDiChuyen`, `DiaDiemThamQuan`, `AmThuc`, `KhachSan`, `ID_HuongDanVien`, `SoVe`, `Gia`, `GiaTreEm`, `GiaEmBe`, `TrangThai`) VALUES
(1400, 'tfd_220218051037_565317.jpg', 'Hà Nội - Sapa - Fansipan - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Ngắm hoa', '<div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-00\" style=\"line-height: 40px; font-size: 20px;\">Ngày 1 - TPHCM – SÂN BAY NỘI BÀI (HÀ NỘI) 00 bữa ăn: (Tự túc ăn ngày đầu tiên)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách tập trung tại sân bay Tân Sơn Nhất (ga trong nước), hướng dẫn làm thủ tục cho Quý khách đáp chuyến bay đi Hà Nội. Đến sân bay Nội Bài, xe đưa quý khách về trung tâm Hà Nội nhận phòng khách sạn nghỉ ngơi. </div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Hà Nội.</span><br> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-01\" style=\"line-height: 40px; font-size: 20px;\">Ngày 2 - HÀ NỘI – SAPA – BẢN CÁT CÁT 03 bữa ăn: (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách ăn sáng và trả phòng. Xe khởi hành đưa Quý khách đi tham quan:<br><br><span style=\"font-weight: 700;\">- Lăng Hồ Chủ Tịch </span>(không viếng vào thứ 2, thứ 6 hàng tuần và giai đoạn bảo trì định kì hàng năm) tham quan và tìm hiểu cuộc đời và sự nghiệp của vị cha già dân tộc tại Nhà Sàn Bác Hồ, Bảo Tàng Hồ Chí Minh, Chùa Một Cột.<br><br>Tiếp tục hành trình, Quý khách khởi hành đi Sapa theo cao tốc Hà Nội – Lào Cai. Trên đường, Quý khách dùng cơm trưa tại nhà hàng địa phương. Đến nơi, Quý khách tham quan:<br><br><span style=\"font-weight: 700;\">- Bản Cát Cát</span> - đẹp như một bức tranh giữa vùng phố cổ Sapa, nơi đây thu hút du khách bởi cầu treo, thác nước, guồng nước và những mảng màu hoa mê hoặc du khách khi lạc bước đến đây. Thăm những nếp nhà của người Mông, Dao, Giáy trong bản, du khách sẽ không khỏi ngỡ ngàng trước vẻ đẹp mộng mị của một trong những ngôi làng cổ đẹp nhất Sapa. Tại đây Quý khách xem<span style=\"font-weight: 700;\"> chương trình biểu diễn văn nghệ của người H Mông.</span><br><br>Quý khách dùng cơm tối và nhận phòng nghỉ ngơi hoặc tự do dạo phố ngắm <span style=\"font-weight: 700;\">nhà thờ Đá Sapa</span>, tự do thưởng thức đặc sản vùng cao như: <span style=\"font-weight: 700;\">thịt lợn cắp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao.</span></div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Sapa</span><br> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-02\" style=\"line-height: 40px; font-size: 20px;\">Ngày 3 - SAPA – FANSIPAN LEGEND – ĐÈO Ô QUY HỒ 03 bữa ăn: (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách dùng điểm tâm sáng tại khách sạn. xe đưa đoàn ra ga Sapa, Quý khách trải nghiệm đến khu du lịch <span style=\"font-weight: 700;\">Fansipan Legend bằng Tàu hỏa leo núi Mường Hoa </span>hiện đại nhất Việt Nam với tổng chiều dài gần 2000m, thưởng ngoạn bức tranh phong cảnh đầy màu sắc của cánh rừng nguyên sinh, thung lũng Mường Hoa.<br><br><span style=\"font-weight: 700;\">- Chinh phục đỉnh núi Fansipan</span> với độ cao 3.143m hùng vĩ bằng cáp treo (chi phí tự túc). <br>- Lễ Phật tại<span style=\"font-weight: 700;\"> chùa Trình </span>hay cầu phúc lộc, bình an cho gia đình tại Bích Vân Thiền Tự trong hệ thống cảnh quan tâm linh trên đỉnh Fansipan.<br> Tiếp tục hành trình, Quý khách dùng cơm trưa và tham quan: <br>- Chinh phục <span style=\"font-weight: 700;\">đèo Ô Quy Hồ</span> - con đèo đẹp, hùng vĩ và dài nhất trong Tứ Đại Đỉnh Đèo miền Bắc.<br>- Khu du lịch <span style=\"font-weight: 700;\">Cổng Trời Ô Quy Hồ</span> - một trong những điểm săn mây, ngắm hoàng hôn cực đẹp tại Sapa.</div><div><br>Quý khách dùng cơm tối tại Sapa và tự do nghỉ ngơi.</div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Sapa.</span></div><div style=\"text-align: right;\"> </div><div style=\"text-align: left;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\">Lưu ý: Trong trường hợp, Fansipan không hoạt động chương trình sẽ được thay thế bằng điểm tham quan Cầu Kính Rồng Mây (không bao gồm vé tham quan).</span></span></div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-03\" style=\"line-height: 40px; font-size: 20px;\">Ngày 4 - SAPA – LÀO CAI – HÀ NỘI 03 bữa ăn: (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\">Quý khách ăn sáng và trả phòng khách sạn. Xe khởi hành đưa Quý khách về Hà Nội, trên đường dừng tham quan <span style=\"font-weight: 700;\">mua sắm tại Siêu thị Du lịch nông nghiệp OCOP Phú Thọ</span> - <span style=\"font-weight: 700;\">chợ Tp Việt Trì </span>và dùng cơm trưa tại nhà hàng địa phương. Đến Hà Nội nhận phòng khách sạn nghỉ ngơi hoặc tự do đi tham quan <span style=\"font-weight: 700;\">Hồ Hoàn Kiếm </span>ngắm bên ngoài <span style=\"font-weight: 700;\">Tháp Rùa, Đền Ngọc Sơn, Cầu Thê Húc.</span></div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Hà Nội.  </span><br> </div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-04\" style=\"line-height: 40px; font-size: 20px;\">Ngày 5 - HÀ NỘI – YÊN TỬ – HẠ LONG 03 Bữa ăn: (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách ăn sáng và trả phòng. Xe khởi hành đưa Quý khách đến thành phố biển <span style=\"font-weight: 700;\">Hạ Long</span> theo quốc lộ 18, trên đường dừng ăn trưa và tham quan vùng đất thiêng Yên Tử: <br><br>- Tham quan chụp hình Làng Nương và dùng bữa trưa tại Cơm Quê <br><br>- Quý khách <span style=\"font-weight: 700;\">lên cáp treo du ngoạn thắng cảnh thiên nhiên Đông Yên Tử</span> (chi phí cáp treo tự túc), nơi còn lưu giữ nhiều di tích lịch sử mệnh danh “Đất tổ Phật giáo Việt Nam”, chiêm bái <span style=\"font-weight: 700;\">chùa Một Mái, chùa Hoa Yên</span> – nơi tu hành của Phật Hoàng Trần Nhân Tông khai sinh ra dòng mới Thiền Phái Trúc Lâm, nằm trên lưng chừng núi ở độ cao 516m. Theo dấu chân Phật Hoàng viếng<span style=\"font-weight: 700;\"> Chùa Đồng có tên Thiên Trúc Tự</span> (chùa Cõi Phật), tọa lạc ở đỉnh cao nhất dãy Yên Tử (1.068m) – ngôi chùa bằng đồng lớn nhất Việt Nam.<br><br>Đến Hạ Long, Quý khách tham quan mua sắm tại <span style=\"font-weight: 700;\">Trung tâm Mỹ Ngọc </span>- Trung tâm Ngọc trai lớn nhất miền bắc Việt Nam.Tới đây Quý khách chiêm ngưỡng vẻ đẹp sang trọng, đủ các màu sắc hấp dẫn của những viên ngọc trai được nuôi trong lòng Di sản – Kỳ quan thiên nhiên thế giới vịnh Hạ Long tại phòng trưng bày sản phẩm. Quý khách có thể lựa chọn cho mình và người thân những đồ trang sức ngọc trai Hạ Long như ý và những sản phẩm lưu niệm được chế tác từ vỏ trai, sản phẩm đạt chất lượng OCOP 5 sao cấp Quốc gia đầu tiên của Việt Nam<br><br>Dùng cơm chiều và nhận phòng khách sạn nghỉ ngơi. Buổi tối, Quý khách tự do khám phá nhiều hoạt động dịch vụ giải trí sôi nổi tại “phố cổ” Bãi Cháy - nằm cạnh công viên Sun World Hạ Long từ những ẩm thực đường phố đến các quán cà phê siêu dễ thương như Hòn Gai Coffee & Lounge hay thoải mái bung xõa tại The Mini Bar, Brothers Pub,…</div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Hạ Long. </span><br> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-05\" style=\"line-height: 40px; font-size: 20px;\">Ngày 6 - VỊNH HẠ LONG – ĐỘNG THIÊN CUNG – NINH BÌNH 03 Bữa ăn: (Sáng, Trưa, Chiều)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><div>Quý khách ăn sáng và trả phòng khách sạn. Xe đưa quý khách ra bến tàu, xuống thuyền du ngoạn <span style=\"font-weight: 700;\">Vịnh Hạ Long</span> - Thắng cảnh thiên nhiên tuyệt đẹp và vô cùng sống động, được UNESCO công nhận là di sản thiên nhiên Thế giới năm 1994.<br><br><span style=\"font-weight: 700;\">- Động Thiên Cung</span> là một trong những động đẹp nhất ở Hạ Long. Vẻ đẹp nguy nga và lộng lẫy bởi những lớp thạch nhũ và những luồng ánh sáng lung linh.<br><br>- Từ trên tàu ngắm nhìn các hòn đảo lớn nhỏ trong Vịnh Hạ Long: <span style=\"font-weight: 700;\">Hòn Gà Chọi, Hòn Lư Hương.</span><br><br>Xe đón Quý khách tại bến thuyền khởi hành đi<span style=\"font-weight: 700;\"> Ninh Bình</span> - vùng đất mệnh danh là “Nơi mơ đến, chốn mong về” với nhiều di tích văn hóa, thiên nhiên vô cùng đặc sắc.<br><br>Buổi tối quý khách tự do khám phá <span style=\"font-weight: 700;\">Phố cổ Hoa Lư</span>, một không gian check-in cổ, đẹp, trầm mặc đẹp trở nên lung linh, huyền ảo hơn với sắc màu của những chiếc đèn lồng và Bảo Tháp trên Hồ Kỳ Lân; trải nghiệm nhiều hoạt động trò chơi dân gian và nhiều loại hình văn hóa nghệ thuật từ dân tộc như múa rối nước, nhảy múa Tắc Xình, hát xẩm, ... đến những buổi trình diễn acoustic sẽ được diễn ra vào các buổi tối ngày cuối tuần.</div><div style=\"text-align: right;\"><br><span style=\"font-weight: 700;\">Nghỉ đêm tại Ninh Bình.</span><br> </div></div></div></div></div><div style=\"color: rgb(45, 66, 113); font-family: Roboto, sans-serif; font-size: 15px;\"><h3 id=\"day-06\" style=\"line-height: 40px; font-size: 20px;\">Ngày 7 - NINH BÌNH – TRÀNG AN – BÁI ĐÍNH – SÂN BAY NỘI BÀI 02 Bữa ăn: (Sáng, Trưa)</h3><div class=\"excerpt\" style=\"line-height: 24px; margin-bottom: 15px; max-width: 100%; padding-left: 33px; position: relative;\"><span class=\"line\" style=\"border-left: 0.5px dashed rgb(77, 74, 239); height: calc(100% - 16px); left: 0px; position: absolute; top: 6px; z-index: 1;\"></span><div><div style=\"text-align: justify;\"><p>Quý khách ăn sáng và trả phòng khách sạn. Xe đưa Quý khách đi tham quan: <br><br><span style=\"font-weight: 700;\">- Khu Du Lịch Tràng An:  </span>Quý khách lên thuyền truyền thống đi tham quan thắng cảnh hệ thống núi đá vôi hùng vĩ và các thung lũng ngập nước, thông với nhau bởi các dòng suối tạo nên các hang động ngập nước quanh năm. Điểm xuyến trong không gian hoang sơ, tĩnh lặng là hình ảnh rêu phong, cổ kính của các mái đình, đền, phủ nằm nép mình dưới chân các dãy núi cao. </p><p><br><span style=\"font-weight: 700;\">- Viếng Chùa Bái Đính</span> - một quần thể chùa với nhiều kỷ lục Việt Nam như pho tượng phật Di Lặc bằng đồng nặng 80 tấn, hành lang với 500 tượng vị La Hán, tòa Bảo Tháp cao 99m…</p><p><br>Xe khởi hành đưa Quý khách ra sân bay Nội Bài làm thủ tục đón chuyến bay về Tp.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.</p><p> </p><p style=\"text-align: center;\"><span style=\"font-weight: 700;\">KẾT THÚC CHƯƠNG TRÌNH, TẠM BIỆT QUÝ KHÁCH!</span></p><p><br><span style=\"font-weight: 700;\">*Lưu ý:</span><br>- Hành trình có thể thay đổi thứ tự điểm đến tùy vào điều kiện thực tế. <br>- Lịch trình tham quan (tắm biển, ngắm hoa, trải nghiệm,...) rất dễ bị ảnh hưởng bởi thời tiết. Đây là trường hợp bất khả kháng mong Quý khách hiểu và thông cảm.<br>- Khách Sạn có thể ở xa trung tâm thành phố vào các mùa Cao Điểm.<br>- Vì những yếu tố khách quan trong giai đoạn này, điểm tham quan có thể đóng cửa và được thay bằng điểm khác phù hợp với chương trình.</p></div></div></div></div>', '', '2024-04-01', '2024-04-08', 'Thành phố Hồ Chí Minh', 'Hà Nội', '15:00:00', 'Sân bay', 'Máy bay, Xe du lịch', 'Hà Nội, Sapa, Bản Cát Cát, Fansipan, Hạ Long, Động Thiên Cung, Yên Tử, KDL Tràng An, Bái Đính', 'Buffet sáng, Theo thực đơn', '4 sao', 6784, 15, 10109000.00, 7640000.00, 500000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tours_images`
--

CREATE TABLE `tours_images` (
  `ID_Images` int(11) NOT NULL,
  `ID_Tour` int(11) DEFAULT NULL,
  `Images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tours_images`
--

INSERT INTO `tours_images` (`ID_Images`, `ID_Tour`, `Images`) VALUES
(23, 1394, '65f2507d6208c2.84358263.jpg'),
(24, 1394, '65f2507d627b45.56213021.jpg'),
(25, 1394, '65f2507d62c2b2.17051797.jpg'),
(26, 1394, '65f2507d631b95.07232703.jpg'),
(27, 1395, '65f2557f6a0913.98218052.jpg'),
(28, 1395, '65f2557f6ab8a8.77386308.jpg'),
(29, 1395, '65f2557f6b0518.31217519.jpg'),
(30, 1395, '65f2557f6b4c87.68848176.jpg'),
(31, 1398, '65f2628e5f7f31.79506793.jpg'),
(32, 1398, '65f2628e5fe9f0.49975586.jpg'),
(33, 1398, '65f2628e602a95.61967683.jpg'),
(34, 1398, '65f2628e608368.03058419.jpg'),
(35, 1399, '65f264afedcb51.76024035.jpg'),
(36, 1399, '65f264afee3164.16409346.jpg'),
(37, 1399, '65f264afee7566.62425221.jpg'),
(38, 1399, '65f264afeec547.17210723.jpg'),
(39, 1397, '65f265015c4691.83963344.jpg'),
(40, 1397, '65f265015cca72.19431115.jpg'),
(41, 1397, '65f265015d1388.62896988.jpg'),
(42, 1397, '65f265015d5793.42346645.jpg'),
(43, 1393, '65f265587c85f3.04830001.jpg'),
(44, 1393, '65f265587ce843.08769969.jpg'),
(45, 1393, '65f265587d2b81.11471921.jpg'),
(46, 1393, '65f265587d6db5.28009580.jpg'),
(47, 1400, '65f42ee7c1ef65.70140775.jpg'),
(48, 1400, '65f42ee7c2e4e0.11029109.jpg'),
(49, 1400, '65f42ee7c43117.10114575.jpg'),
(50, 1400, '65f42ee7c57f45.90099527.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID_User` int(11) NOT NULL,
  `TaiKhoan` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `DiaChi` text DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `VaiTro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_User`, `TaiKhoan`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `DiaChi`, `NgaySinh`, `VaiTro`) VALUES
(2024, 'letrongnam123', 'letrongnamvaa', 'Lê Trọng Nam', 'ekko0903@gmail.com', '0789456878', 'tân sơn nhất 1', '2024-03-26', '1'),
(2025, 'hello', 'hello123', '', 'hello123@gmail.com', '0123456789', NULL, NULL, '0'),
(2028, '', '123456789', '', 'hellochungtoi@gmail.com', '0123456745', NULL, NULL, NULL),
(2029, 'datvu123', 'vuminhdatvaa', 'Vu Minh Dat', 'dat.vminh07@gmail.com', '023293712', NULL, NULL, '1'),
(2030, 'LeQuocTam', 'lequoctamvaa', 'Le Quoc Tam', 'lequoctamvaa123@gmail.com', '0168989568', NULL, NULL, '1'),
(2031, 'DoanPhanTrungChien', 'doanphantrungchienvaa', 'Doan Phan Trung Chien', 'doanphantrungchienvaa@gmail.com', '01568498987', NULL, NULL, '1'),
(2032, 'PhamVanManh', 'phamvanmanhvaa', 'Pham Van Manh', 'vanmanhvaa123@gmail.com', '0156489798', NULL, NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ID_News`),
  ADD KEY `ID_User` (`ID_User`),
  ADD KEY `ID_TheLoai` (`ID_TheLoai`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`ID_Bookings`),
  ADD KEY `ID_Tour` (`ID_Tour`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`);

--
-- Indexes for table `chitietdatve`
--
ALTER TABLE `chitietdatve`
  ADD PRIMARY KEY (`ID_ChiTietDatVe`),
  ADD KEY `ID_DatVe` (`ID_DatVe`),
  ADD KEY `ID_DichVu` (`ID_DichVu`);

--
-- Indexes for table `chitietdatvekhuhoi`
--
ALTER TABLE `chitietdatvekhuhoi`
  ADD PRIMARY KEY (`ID_ChiTietDatVeKhuHoi`),
  ADD KEY `ID_DatVeKhuHoi` (`ID_DatVeKhuHoi`),
  ADD KEY `ID_DichVu` (`ID_DichVu`);

--
-- Indexes for table `chuyenbaydi`
--
ALTER TABLE `chuyenbaydi`
  ADD PRIMARY KEY (`ID_ChuyenBayDi`),
  ADD KEY `ID_LoaiBay` (`ID_LoaiBay`),
  ADD KEY `ID_CHK` (`ID_CHK`),
  ADD KEY `SoHieu` (`SoHieu`),
  ADD KEY `ID_MaTuyen` (`ID_MaTuyen`),
  ADD KEY `ID_LoaiVe` (`ID_LoaiVe`);

--
-- Indexes for table `chuyenbayve`
--
ALTER TABLE `chuyenbayve`
  ADD PRIMARY KEY (`ID_ChuyenBayVe`),
  ADD KEY `SoHieu` (`SoHieu`),
  ADD KEY `ID_CHK` (`ID_CHK`),
  ADD KEY `ID_LoaiBay` (`ID_LoaiBay`),
  ADD KEY `ID_MaTuyen` (`ID_MaTuyen`),
  ADD KEY `ID_LoaiVe` (`ID_LoaiVe`);

--
-- Indexes for table `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`ID_DatVe`),
  ADD KEY `ID_ChuyenBayDi` (`ID_MaTuyen`),
  ADD KEY `ID_ThongTin` (`ID_ThongTin`);

--
-- Indexes for table `datvekhuhoi`
--
ALTER TABLE `datvekhuhoi`
  ADD PRIMARY KEY (`ID_DatVeKhuHoi`),
  ADD KEY `ID_ThongTin` (`ID_ThongTin`),
  ADD KEY `ID_MaTuyen` (`ID_MaTuyen`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`ID_DichVu`);

--
-- Indexes for table `huongdanvien`
--
ALTER TABLE `huongdanvien`
  ADD PRIMARY KEY (`ID_HuongDanVien`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID_KhachHang`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`ID_LienHe`);

--
-- Indexes for table `loaibay`
--
ALTER TABLE `loaibay`
  ADD PRIMARY KEY (`ID_LoaiBay`);

--
-- Indexes for table `loaive`
--
ALTER TABLE `loaive`
  ADD PRIMARY KEY (`ID_LoaiVe`);

--
-- Indexes for table `matuyen`
--
ALTER TABLE `matuyen`
  ADD PRIMARY KEY (`ID_MaTuyen`),
  ADD KEY `ID_LoaiBay` (`ID_LoaiBay`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`ID_Note`),
  ADD KEY `ID_User` (`ID_User`);

--
-- Indexes for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`ID_PhanHoi`),
  ADD KEY `ID_Tour` (`ID_Tour`),
  ADD KEY `ID_User` (`ID_User`);

--
-- Indexes for table `sanbay`
--
ALTER TABLE `sanbay`
  ADD PRIMARY KEY (`ID_CHK`);

--
-- Indexes for table `taubay`
--
ALTER TABLE `taubay`
  ADD PRIMARY KEY (`SoHieu`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ID_TheLoai`);

--
-- Indexes for table `thongtincanhan`
--
ALTER TABLE `thongtincanhan`
  ADD PRIMARY KEY (`ID_ThongTin`);

--
-- Indexes for table `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  ADD PRIMARY KEY (`ID_ThongTinKhachHang`),
  ADD KEY `ID_KhachHang` (`ID_KhachHang`);

--
-- Indexes for table `thongtinkhachhangchuyenbay`
--
ALTER TABLE `thongtinkhachhangchuyenbay`
  ADD PRIMARY KEY (`ID_ThongTinChuyenBay`),
  ADD KEY `ID_ThongTin` (`ID_ThongTin`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`ID_Tour`),
  ADD KEY `ID_HuongDanVien` (`ID_HuongDanVien`);

--
-- Indexes for table `tours_images`
--
ALTER TABLE `tours_images`
  ADD PRIMARY KEY (`ID_Images`),
  ADD KEY `ID_Tour` (`ID_Tour`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `ID_News` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1104;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `ID_Bookings` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT for table `chitietdatve`
--
ALTER TABLE `chitietdatve`
  MODIFY `ID_ChiTietDatVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9195;

--
-- AUTO_INCREMENT for table `chitietdatvekhuhoi`
--
ALTER TABLE `chitietdatvekhuhoi`
  MODIFY `ID_ChiTietDatVeKhuHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6482;

--
-- AUTO_INCREMENT for table `datve`
--
ALTER TABLE `datve`
  MODIFY `ID_DatVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8788;

--
-- AUTO_INCREMENT for table `datvekhuhoi`
--
ALTER TABLE `datvekhuhoi`
  MODIFY `ID_DatVeKhuHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20274;

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `ID_DichVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `huongdanvien`
--
ALTER TABLE `huongdanvien`
  MODIFY `ID_HuongDanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6790;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID_KhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3706;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `ID_LienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `loaibay`
--
ALTER TABLE `loaibay`
  MODIFY `ID_LoaiBay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `ID_Note` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `ID_PhanHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2038;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `ID_TheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thongtincanhan`
--
ALTER TABLE `thongtincanhan`
  MODIFY `ID_ThongTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4722;

--
-- AUTO_INCREMENT for table `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  MODIFY `ID_ThongTinKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5691;

--
-- AUTO_INCREMENT for table `thongtinkhachhangchuyenbay`
--
ALTER TABLE `thongtinkhachhangchuyenbay`
  MODIFY `ID_ThongTinChuyenBay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1633;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `ID_Tour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1403;

--
-- AUTO_INCREMENT for table `tours_images`
--
ALTER TABLE `tours_images`
  MODIFY `ID_Images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2033;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`),
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`ID_TheLoai`) REFERENCES `theloai` (`ID_TheLoai`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`ID_Tour`) REFERENCES `tours` (`ID_Tour`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID_KhachHang`);

--
-- Constraints for table `chitietdatve`
--
ALTER TABLE `chitietdatve`
  ADD CONSTRAINT `chitietdatve_ibfk_1` FOREIGN KEY (`ID_DatVe`) REFERENCES `datve` (`ID_DatVe`),
  ADD CONSTRAINT `chitietdatve_ibfk_2` FOREIGN KEY (`ID_DatVe`) REFERENCES `datve` (`ID_DatVe`),
  ADD CONSTRAINT `chitietdatve_ibfk_3` FOREIGN KEY (`ID_DatVe`) REFERENCES `datve` (`ID_DatVe`);

--
-- Constraints for table `chitietdatvekhuhoi`
--
ALTER TABLE `chitietdatvekhuhoi`
  ADD CONSTRAINT `chitietdatvekhuhoi_ibfk_1` FOREIGN KEY (`ID_DatVeKhuHoi`) REFERENCES `datvekhuhoi` (`ID_DatVeKhuHoi`);

--
-- Constraints for table `chuyenbaydi`
--
ALTER TABLE `chuyenbaydi`
  ADD CONSTRAINT `chuyenbaydi_ibfk_1` FOREIGN KEY (`ID_CHK`) REFERENCES `sanbay` (`ID_CHK`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_2` FOREIGN KEY (`SoHieu`) REFERENCES `taubay` (`SoHieu`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_3` FOREIGN KEY (`ID_LoaiBay`) REFERENCES `loaibay` (`ID_LoaiBay`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_4` FOREIGN KEY (`ID_CHK`) REFERENCES `sanbay` (`ID_CHK`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_5` FOREIGN KEY (`SoHieu`) REFERENCES `taubay` (`SoHieu`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_6` FOREIGN KEY (`ID_MaTuyen`) REFERENCES `matuyen` (`ID_MaTuyen`),
  ADD CONSTRAINT `chuyenbaydi_ibfk_7` FOREIGN KEY (`ID_LoaiVe`) REFERENCES `loaive` (`ID_LoaiVe`);

--
-- Constraints for table `chuyenbayve`
--
ALTER TABLE `chuyenbayve`
  ADD CONSTRAINT `chuyenbayve_ibfk_1` FOREIGN KEY (`SoHieu`) REFERENCES `taubay` (`SoHieu`),
  ADD CONSTRAINT `chuyenbayve_ibfk_2` FOREIGN KEY (`ID_CHK`) REFERENCES `sanbay` (`ID_CHK`),
  ADD CONSTRAINT `chuyenbayve_ibfk_3` FOREIGN KEY (`ID_LoaiBay`) REFERENCES `loaibay` (`ID_LoaiBay`),
  ADD CONSTRAINT `chuyenbayve_ibfk_4` FOREIGN KEY (`ID_MaTuyen`) REFERENCES `matuyen` (`ID_MaTuyen`),
  ADD CONSTRAINT `chuyenbayve_ibfk_5` FOREIGN KEY (`ID_LoaiVe`) REFERENCES `loaive` (`ID_LoaiVe`);

--
-- Constraints for table `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `datve_ibfk_2` FOREIGN KEY (`ID_ThongTin`) REFERENCES `thongtincanhan` (`ID_ThongTin`);

--
-- Constraints for table `datvekhuhoi`
--
ALTER TABLE `datvekhuhoi`
  ADD CONSTRAINT `datvekhuhoi_ibfk_2` FOREIGN KEY (`ID_ThongTin`) REFERENCES `thongtincanhan` (`ID_ThongTin`);

--
-- Constraints for table `matuyen`
--
ALTER TABLE `matuyen`
  ADD CONSTRAINT `matuyen_ibfk_1` FOREIGN KEY (`ID_LoaiBay`) REFERENCES `loaibay` (`ID_LoaiBay`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

--
-- Constraints for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`ID_Tour`) REFERENCES `tours` (`ID_Tour`),
  ADD CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`ID_User`) REFERENCES `user` (`ID_User`);

--
-- Constraints for table `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  ADD CONSTRAINT `thongtinkhachhang_ibfk_1` FOREIGN KEY (`ID_KhachHang`) REFERENCES `khachhang` (`ID_KhachHang`);

--
-- Constraints for table `thongtinkhachhangchuyenbay`
--
ALTER TABLE `thongtinkhachhangchuyenbay`
  ADD CONSTRAINT `thongtinkhachhangchuyenbay_ibfk_1` FOREIGN KEY (`ID_ThongTin`) REFERENCES `thongtincanhan` (`ID_ThongTin`);

--
-- Constraints for table `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`ID_HuongDanVien`) REFERENCES `huongdanvien` (`ID_HuongDanVien`);

--
-- Constraints for table `tours_images`
--
ALTER TABLE `tours_images`
  ADD CONSTRAINT `tours_images_ibfk_1` FOREIGN KEY (`ID_Tour`) REFERENCES `tours` (`ID_Tour`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
