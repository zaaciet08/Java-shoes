-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 28, 2024 lúc 04:58 AM
-- Phiên bản máy phục vụ: 8.0.35
-- Phiên bản PHP: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `created_at`, `description`, `modified_at`, `name`, `status`, `thumbnail`) VALUES
(5, '2024-11-19 03:08:09.651000', NULL, NULL, 'Adidas', 1, '/media/static/6106255c-b90b-422b-b823-0029273e6f13.jpg'),
(6, '2024-11-19 03:10:58.892000', NULL, NULL, 'Vans', 1, '/media/static/f56860a5-b9ed-41fb-831f-b91d6046d4ed.png'),
(7, '2024-11-19 03:11:11.362000', NULL, NULL, 'New Balance', 1, '/media/static/da0abfea-5697-491e-a3d7-0fc7cc139ce7.png'),
(8, '2024-11-19 03:11:22.131000', NULL, NULL, 'Converse', 1, '/media/static/1abb02ac-7540-42f2-839d-21bb010c41f6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `orders` int DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `created_at`, `modified_at`, `name`, `orders`, `slug`, `status`) VALUES
(5, '2024-11-19 03:04:36.296000', NULL, 'Giày thể thao (Sneakers)', 0, 'giay-the-thao-sneakers', 1),
(6, '2024-11-19 03:05:12.911000', '2024-11-19 03:05:17.003000', 'Giày thời trang (Casual shoes)', 0, 'giay-thoi-trang-casual-shoes', 1),
(7, '2024-11-19 03:05:27.549000', NULL, 'Giày bóng đá (Football boots)', 0, 'giay-bong-a-football-boots', 1),
(8, '2024-11-19 03:05:36.818000', NULL, 'Giày chạy bộ (Running shoes)', 0, 'giay-chay-bo-running-shoes', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint NOT NULL,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `post_id` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `created_at`, `link`, `name`, `size`, `type`, `created_by`) VALUES
('1abb02ac-7540-42f2-839d-21bb010c41f6', '2024-11-19 03:10:34.096000', '/media/static/1abb02ac-7540-42f2-839d-21bb010c41f6.png', 'file', 41938, 'png', 1),
('2f772e5e-a476-4ab7-8842-170c5b2f7799', '2024-11-19 03:17:13.892000', '/media/static/2f772e5e-a476-4ab7-8842-170c5b2f7799.jpg', 'file', 268503, 'jpg', 1),
('6106255c-b90b-422b-b823-0029273e6f13', '2024-11-19 03:08:00.488000', '/media/static/6106255c-b90b-422b-b823-0029273e6f13.jpg', 'file', 36448, 'jpg', 1),
('7a1d7ea0-a1aa-4fcb-97eb-5a6fe3d7517f', '2024-11-19 03:28:51.892000', '/media/static/7a1d7ea0-a1aa-4fcb-97eb-5a6fe3d7517f.jpg', 'file', 523932, 'jpg', 1),
('8e0aa05b-ac57-4c49-9c6f-3ff2f2c1eead', '2024-11-19 03:41:42.601000', '/media/static/8e0aa05b-ac57-4c49-9c6f-3ff2f2c1eead.jpg', 'file', 37038, 'jpg', 1),
('ab1913ed-27af-4f99-ac40-1dfbd43e7b26', '2024-11-19 03:16:33.772000', '/media/static/ab1913ed-27af-4f99-ac40-1dfbd43e7b26.jpg', 'file', 980511, 'jpg', 1),
('c0b4abed-5a80-446d-ac2e-6fa53b21d75f', '2024-11-19 03:16:23.162000', '/media/static/c0b4abed-5a80-446d-ac2e-6fa53b21d75f.png', 'file', 351215, 'png', 1),
('d1c01eb4-7580-45b2-8654-1192d840d0d3', '2024-11-19 03:17:36.638000', '/media/static/d1c01eb4-7580-45b2-8654-1192d840d0d3.jpg', 'file', 52671, 'jpg', 1),
('da0abfea-5697-491e-a3d7-0fc7cc139ce7', '2024-11-19 03:10:45.294000', '/media/static/da0abfea-5697-491e-a3d7-0fc7cc139ce7.png', 'file', 23598, 'png', 1),
('db35dde3-3434-4a35-a776-8b6e626cb3fc', '2024-11-19 03:16:41.591000', '/media/static/db35dde3-3434-4a35-a776-8b6e626cb3fc.jpg', 'file', 16772, 'jpg', 1),
('f56860a5-b9ed-41fb-831f-b91d6046d4ed', '2024-11-19 03:10:27.552000', '/media/static/f56860a5-b9ed-41fb-831f-b91d6046d4ed.png', 'file', 55862, 'png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `promotion` json DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  `buyer` bigint DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `modified_at`, `note`, `price`, `promotion`, `quantity`, `receiver_address`, `receiver_name`, `receiver_phone`, `size`, `status`, `total_price`, `buyer`, `created_by`, `modified_by`, `product_id`) VALUES
(6, '2024-11-19 03:52:13.575000', NULL, 'đồng kiểm', 2600000, NULL, 1, 'Quảng Nam', 'admin', '0984324175', 41, 1, 2100001, 1, 1, NULL, 'PSVkgg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` bigint NOT NULL,
  `content` text,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `modified_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `slug` varchar(600) NOT NULL,
  `status` int DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(300) NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `modified_by` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `content`, `created_at`, `description`, `modified_at`, `published_at`, `slug`, `status`, `thumbnail`, `title`, `created_by`, `modified_by`) VALUES
(3, '<blockquote class=\"blockquote\"><span style=\"font-size: 13px;\">Bài viết này cung cấp hướng dẫn chi tiết về cách chọn giày thể thao phù hợp cho từng môn thể thao, giúp bạn tìm ra đôi giày lý tưởng để cải thiện hiệu suất và đảm bảo sự thoải mái trong mỗi hoạt động thể thao.</span></blockquote>', '2024-11-19 03:28:54.244000', '<blockquote class=\"blockquote\"><span style=\"font-weight: 700 !important;\">1.Giày Chạy Bộ</span></blockquote><div>Giày chạy bộ cần sự nhẹ nhàng, linh hoạt và khả năng giảm chấn tốt. Lựa chọn giày với đệm khí, đế cao su giúp tăng độ bám và giảm tác động từ mặt đất.</div><blockquote class=\"blockquote\"><span style=\"font-weight: 700 !important;\">2.Giày Bóng Đá</span></blockquote><div>Đối với bóng đá, giày phải có độ bám tuyệt vời trên sân cỏ, đồng thời hỗ trợ các chuyển động nhanh chóng và mạnh mẽ. Chọn giày có đinh tán phù hợp với bề mặt sân để tối ưu hóa hiệu suất thi đấu.</div><blockquote class=\"blockquote\"><span style=\"font-weight: 700 !important;\">3.Giày Cầu Lông</span></blockquote><div>Giày cầu lông cần phải có đế cao su mềm để tránh trơn trượt và độ bền cao để chịu lực tác động mạnh trong các pha di chuyển nhanh và bật nhảy.</div><blockquote class=\"blockquote\"><span style=\"font-weight: 700 !important;\">3.Giày Tennis</span></blockquote><div>Giày tennis yêu cầu sự ổn định và độ bám tốt, đặc biệt là ở phần gót và ngón chân. Đế giày cần được thiết kế để hỗ trợ những chuyển động lướt nhanh và những cú vợt mạnh mẽ.</div><blockquote class=\"blockquote\"><span style=\"font-weight: 700 !important;\">4.Giày Chạy Trail</span></blockquote><div>Đối với chạy trail, giày cần có đế mạnh mẽ, giúp bạn bám vững trên địa hình không bằng phẳng như đường mòn, đá, hay bùn lầy. Đồng thời, giày cần có lớp bảo vệ để bảo vệ bàn chân khỏi các yếu tố tự nhiên.</div>', '2024-11-19 03:29:30.595000', '2024-11-19 03:28:54.244000', 'lam-the-nao-e-chon-giay-the-thao-phu-hop-cho-moi-mon-the-thao', 1, '/media/static/7a1d7ea0-a1aa-4fcb-97eb-5a6fe3d7517f.jpg', 'Làm Thế Nào Để Chọn Giày Thể Thao Phù Hợp Cho Mỗi Môn Thể Thao', 1, 1),
(4, '<p>Bài viết này khám phá sự phát triển của giày thể thao từ những ngày đầu tiên cho đến ngày nay, từ giày chạy đơn giản đến những đôi giày công nghệ cao hỗ trợ cho mọi môn thể thao.</p>', '2024-11-19 03:41:48.019000', '<blockquote class=\"blockquote\"><b>1.Khởi Đầu Của Giày Thể Thao</b></blockquote><p>Giày thể thao bắt đầu từ những đôi giày chạy cơ bản được làm từ da và vải, chủ yếu là những sản phẩm thủ công. Ban đầu, giày thể thao chỉ được sử dụng trong các cuộc thi đấu chạy và các môn thể thao phổ biến thời đó.</p><blockquote class=\"blockquote\"><b>2.Cuộc Cách Mạng Công Nghệ Giày</b></blockquote><p>Vào thập niên 1970, những công nghệ mới như đệm khí và đế cao su bắt đầu xuất hiện, mang đến sự thay đổi mạnh mẽ trong ngành giày thể thao. Các hãng như Nike và Adidas đã bắt đầu nghiên cứu và phát triển các sản phẩm mang tính cách mạng.</p><blockquote class=\"blockquote\"><b>3.Giày Thể Thao Hướng Tới Mục Tiêu Chuyên Dụng</b></blockquote><p>Giày thể thao bắt đầu được phát triển chuyên biệt cho từng môn thể thao. Các nhà sản xuất chú trọng đến việc tạo ra giày giúp cải thiện hiệu suất cho vận động viên trong các lĩnh vực như bóng đá, tennis, chạy bộ, và bóng rổ.</p><blockquote class=\"blockquote\"><b>4.Tăng Cường Độ Tiện Nghi Và Tính Thẩm Mỹ</b></blockquote><p>Trong những năm gần đây, giày thể thao không chỉ chú trọng đến hiệu suất mà còn đến sự thoải mái và phong cách. Các mẫu giày thể thao hiện đại kết hợp giữa công nghệ tiên tiến và thiết kế bắt mắt, phục vụ nhu cầu sử dụng hàng ngày của người tiêu dùng.</p><blockquote class=\"blockquote\"><b>5.Giày Thể Thao Tương Lai</b></blockquote><p>Sự phát triển không ngừng của công nghệ đã giúp các đôi giày thể thao trở nên thông minh hơn. Những đôi giày với khả năng theo dõi sức khỏe, đo lường tốc độ và thậm chí điều chỉnh độ căng của giày dựa trên nhu cầu của người sử dụng sẽ là xu hướng trong tương lai.</p>', NULL, '2024-11-19 03:41:48.019000', 'lich-su-phat-trien-cua-giay-the-thao', 1, '/media/static/8e0aa05b-ac57-4c49-9c6f-3ff2f2c1eead.jpg', ' Lịch Sử Phát Triển Của Giày Thể Thao', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `image_feedback` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `price` bigint DEFAULT NULL,
  `sale_price` bigint DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int DEFAULT NULL,
  `total_sold` bigint DEFAULT NULL,
  `product_view` int DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `created_at`, `description`, `image_feedback`, `images`, `modified_at`, `name`, `price`, `sale_price`, `slug`, `status`, `total_sold`, `product_view`, `brand_id`) VALUES
('2qXYZz', '2024-11-19 03:21:21.020000', '<p>Giày sandal nữ Adidas Adilette được thiết kế đơn giản nhưng cực kỳ thoải mái với đế EVA nhẹ và lớp đệm êm ái. Phù hợp để đi dạo biển hoặc thư giãn trong những ngày hè nóng bức.</p>', NULL, '[\"/media/static/ab1913ed-27af-4f99-ac40-1dfbd43e7b26.jpg\"]', NULL, 'Giày Sandal Nữ Adidas Adilette', 1200000, 900000, 'giay-sandal-nu-adidas-adilette', 1, 0, 0, 8),
('9TNg2P', '2024-11-19 03:20:50.526000', '<p>Giày tây nam loafer được làm từ da cao cấp, thiết kế sang trọng và thanh lịch, phù hợp cho các sự kiện công sở hoặc tiệc tùng. Sản phẩm mang lại cảm giác thoải mái và phong cách lịch lãm.</p>', NULL, '[\"/media/static/2f772e5e-a476-4ab7-8842-170c5b2f7799.jpg\"]', NULL, 'Giày Tây Nam Loafer', 1800000, 1500000, 'giay-tay-nam-loafer', 1, 0, 2, 7),
('bS1ivj', '2024-11-19 03:18:15.885000', '<p>Giày thể thao Nike Air Max 270 với thiết kế trẻ trung và hiện đại, mang đến sự thoải mái tối ưu nhờ đệm khí Air Max ở phần gót. Phù hợp cho các hoạt động thể thao nhẹ hoặc đi dạo hằng ngày.</p>', NULL, '[\"/media/static/db35dde3-3434-4a35-a776-8b6e626cb3fc.jpg\"]', NULL, 'Giày Thể Thao Nike Air Max 270', 3500000, 2800000, 'giay-the-thao-nike-air-max-270', 1, 0, 6, 5),
('jTN5B8', '2024-11-19 03:20:11.161000', '<p>Giày bóng đá Puma Future Z 1.4 được thiết kế với công nghệ Dynamic Motion System giúp hỗ trợ các chuyển động nhanh và linh hoạt. Lý tưởng cho các cầu thủ yêu thích tốc độ và sự chính xác.</p>', NULL, '[\"/media/static/c0b4abed-5a80-446d-ac2e-6fa53b21d75f.png\"]', NULL, 'Giày Bóng Đá Puma Future Z 1.4', 2000000, 1700000, 'giay-bong-a-puma-future-z-1-4', 1, 0, 0, 6),
('PSVkgg', '2024-11-19 03:19:29.866000', '<p>Giày Adidas Ultraboost 22 sở hữu công nghệ Boost giúp tăng độ đàn hồi và độ nảy, mang lại cảm giác êm ái khi chạy. Thiết kế nhẹ nhàng, linh hoạt, lý tưởng cho những ai yêu thích chạy bộ.</p>', NULL, '[\"/media/static/d1c01eb4-7580-45b2-8654-1192d840d0d3.jpg\"]', NULL, 'Giày Chạy Bộ Adidas Ultraboost 22', 4200000, 2600000, 'giay-chay-bo-adidas-ultraboost-22', 1, 0, 6, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `product_id` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
('bS1ivj', 5),
('bS1ivj', 8),
('PSVkgg', 5),
('PSVkgg', 8),
('jTN5B8', 5),
('jTN5B8', 7),
('9TNg2P', 6),
('2qXYZz', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `product_id` varchar(255) NOT NULL,
  `size` int NOT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`product_id`, `size`, `quantity`) VALUES
('2qXYZz', 35, 20),
('2qXYZz', 40, 10),
('2qXYZz', 42, 5),
('9TNg2P', 35, 10),
('9TNg2P', 37, 115),
('9TNg2P', 40, 5),
('9TNg2P', 42, 3),
('bS1ivj', 35, 1000),
('bS1ivj', 40, 550),
('bS1ivj', 42, 540),
('jTN5B8', 35, 100),
('jTN5B8', 40, 50),
('jTN5B8', 41, 9),
('jTN5B8', 42, 8),
('PSVkgg', 35, 5),
('PSVkgg', 36, 99),
('PSVkgg', 38, 6),
('PSVkgg', 41, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `discount_type` int DEFAULT NULL,
  `discount_value` bigint DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `maximum_discount_value` bigint DEFAULT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`id`, `coupon_code`, `created_at`, `discount_type`, `discount_value`, `expired_at`, `is_active`, `is_public`, `maximum_discount_value`, `name`) VALUES
(2, 'KM1', '2024-11-19 03:43:29.810000', 1, 50, '2025-01-01 00:00:00.000000', 1, 1, 499999, 'Quốc khánh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistic`
--

CREATE TABLE `statistic` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `profit` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sales` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `modified_at` datetime(6) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `roles` json NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `address`, `avatar`, `created_at`, `email`, `full_name`, `modified_at`, `password`, `phone`, `roles`, `status`) VALUES
(1, 'Quảng Nam', NULL, '2024-09-10 09:43:08.676000', 'admin@gmail.com', 'admin', NULL, '$2a$12$6vOrz9fOe1OFg5/9jzP8KeJEAIS4zjZe5RyuuPe6.pprqua3J/AUu', '0984324175', '[\"ADMIN\", \"USER\"]', 1),
(6, NULL, NULL, '2024-11-26 01:52:23.252000', 'user@gmail.com', 'user', NULL, '$2a$12$h3rGlncJOxMtNsujuIrD9ONyAXtGl7P1Ch7C1axSy7iciRvz/Ai1C', '0984324176', '[\"USER\"]', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_rdxh7tq2xs66r485cc8dkxt77` (`name`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  ADD KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  ADD KEY `FKqm52p1v3o13hy268he0wcngr5` (`user_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_4mgw71qgyeud96uf8kgiu9fsw` (`link`),
  ADD KEY `FKp1m9f9rm7xy8nk7a820dvh6c4` (`created_by`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKljvc97l19m7cnlopv8535hijx` (`buyer`),
  ADD KEY `FKtjwuphstqm46uffgc7l1r27a9` (`created_by`),
  ADD KEY `FKe0abpy849bl2ynw3468ksavvl` (`modified_by`),
  ADD KEY `FK787ibr3guwp6xobrpbofnv7le` (`product_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3b6cq7u0x3fdxeh4sq95mia29` (`created_by`),
  ADD KEY `FKl2q2idcap1gt3qhh87ebirpnc` (`modified_by`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `FKkud35ls1d40wpjb5htpp14q4e` (`category_id`),
  ADD KEY `FK2k3smhbruedlcrvu6clued06x` (`product_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_id`,`size`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_acld676f1gyc04nofpb7t2ecn` (`coupon_code`);

--
-- Chỉ mục cho bảng `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKok7jp7mh6y9tghumc2do51ieq` (`order_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKqm52p1v3o13hy268he0wcngr5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKp1m9f9rm7xy8nk7a820dvh6c4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK787ibr3guwp6xobrpbofnv7le` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKe0abpy849bl2ynw3468ksavvl` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKljvc97l19m7cnlopv8535hijx` FOREIGN KEY (`buyer`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKtjwuphstqm46uffgc7l1r27a9` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK3b6cq7u0x3fdxeh4sq95mia29` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKl2q2idcap1gt3qhh87ebirpnc` FOREIGN KEY (`modified_by`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK2k3smhbruedlcrvu6clued06x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKkud35ls1d40wpjb5htpp14q4e` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `statistic`
--
ALTER TABLE `statistic`
  ADD CONSTRAINT `FKok7jp7mh6y9tghumc2do51ieq` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
