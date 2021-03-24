-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2021 pada 04.54
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama`, `email`, `user_id`) VALUES
(2, 'Dimas', 'dms@gmail.com', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`id`, `nama`, `price`, `image`, `category_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Citato', 7000, 'upload/items/d8c35c9fc9e8193fb91cb0e822778dae-1616556846.jpg', 1, NULL, 1616556846, NULL, NULL),
(2, 'Rinso', 30000, NULL, 3, NULL, NULL, NULL, NULL),
(3, 'Snack Ring', 8000, NULL, 1, NULL, NULL, NULL, NULL),
(4, 'Teh Pucuk', 5000, NULL, 2, NULL, NULL, NULL, NULL),
(5, 'Tissue Paseo', 15000, NULL, 5, NULL, NULL, NULL, NULL),
(6, 'Sari Roti', 15000, NULL, 4, NULL, NULL, NULL, NULL),
(7, 'Lux', 3500, NULL, 8, NULL, NULL, NULL, NULL),
(8, 'Indomie Goreng', 2500, NULL, 7, NULL, NULL, NULL, NULL),
(9, 'Indomie Goreng Jumbo', 3500, NULL, 7, NULL, NULL, NULL, NULL),
(10, 'Pensil', 3000, NULL, 9, NULL, 1517666308, NULL, 1),
(11, 'Banana', 15000, NULL, 2, NULL, NULL, NULL, NULL),
(12, 'Chocochip', 8000, NULL, 1, NULL, NULL, NULL, NULL),
(13, 'Taro', 8000, 'upload/items/taro-net-italian-pizza-1517889279.jpg', 1, 1517666115, 1517889279, 1, NULL),
(14, 'jagung', 2147483647, 'upload/items/gung-1616556823.jpg', 1, 1616556823, 1616556823, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_category`
--

CREATE TABLE `item_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item_category`
--

INSERT INTO `item_category` (`id`, `name`, `parent_category`) VALUES
(1, 'Snack', 1),
(2, 'Softdrink', 2),
(3, 'Detergen', 3),
(4, 'Roti', 4),
(5, 'Tissue', 5),
(6, 'Minyak Goreng', 6),
(7, 'Mie', 7),
(8, 'Sabun', 8),
(9, 'Alat Tulis', 9),
(10, 'Buku', 10),
(11, 'orang', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1516519488),
('m130524_201442_init', 1516519490),
('m190124_110200_add_verification_token_column_to_user_table', 1616556731);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `date`, `customer_id`) VALUES
(1, '2018-02-03 00:00:00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_item`
--

CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_item`
--

INSERT INTO `order_item` (`order_id`, `item_id`) VALUES
(1, 1),
(1, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistic`
--

CREATE TABLE `statistic` (
  `id` int(11) NOT NULL,
  `access_time` datetime NOT NULL,
  `user_ip` varchar(20) NOT NULL,
  `user_host` varchar(50) NOT NULL,
  `path_info` varchar(50) DEFAULT NULL,
  `query_string` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistic`
--

INSERT INTO `statistic` (`id`, `access_time`, `user_ip`, `user_host`, `path_info`, `query_string`) VALUES
(1, '2018-01-25 15:51:47', '127.0.0.1', 'http://localhost', '', ''),
(2, '2018-01-25 15:52:14', '127.0.0.1', 'http://localhost', 'item/view', 'id=1'),
(3, '2018-01-25 15:52:18', '127.0.0.1', 'http://localhost', 'item/index', ''),
(4, '2018-01-25 15:52:20', '127.0.0.1', 'http://localhost', 'item/view', 'id=2'),
(5, '2018-01-25 15:52:22', '127.0.0.1', 'http://localhost', 'item/index', ''),
(6, '2018-01-25 15:52:46', '127.0.0.1', 'http://localhost', 'item/view', 'id=11'),
(7, '2018-02-02 19:52:46', '127.0.0.1', 'http://localhost', 'item/view', 'id=6'),
(8, '2018-02-02 20:03:30', '127.0.0.1', 'http://localhost', 'item/view', 'id=3'),
(9, '2018-02-02 20:04:14', '127.0.0.1', 'http://localhost', 'item/view', 'id=2'),
(10, '2018-02-02 20:04:29', '127.0.0.1', 'http://localhost', 'item/view', 'id=10'),
(11, '2018-02-02 20:05:29', '127.0.0.1', 'http://localhost', 'item/view', 'id=7'),
(12, '2018-02-02 20:46:02', '127.0.0.1', 'http://localhost', 'item/view', 'id=12'),
(13, '2018-02-03 12:12:08', '127.0.0.1', 'http://localhost', 'item/view', 'id=11'),
(14, '2018-02-03 12:12:33', '127.0.0.1', 'http://localhost', 'item/view', 'id=4'),
(15, '2018-02-03 12:13:26', '127.0.0.1', 'http://localhost', 'item/view', 'id=10'),
(16, '2018-02-03 13:51:58', '127.0.0.1', 'http://localhost', 'item/view', 'id=11'),
(17, '2018-02-03 13:52:35', '127.0.0.1', 'http://localhost', 'item/view', 'id=11'),
(18, '2018-02-03 13:53:06', '127.0.0.1', 'http://localhost', 'item/view', 'id=11'),
(19, '2018-02-03 13:53:11', '127.0.0.1', 'http://localhost', 'item/view', 'id=12'),
(20, '2018-02-03 13:53:31', '127.0.0.1', 'http://localhost', 'item/view', 'id=12'),
(21, '2018-02-03 14:32:54', '127.0.0.1', 'http://localhost', '', ''),
(22, '2018-02-03 14:45:01', '127.0.0.1', 'http://localhost', '', ''),
(23, '2018-02-03 14:45:11', '127.0.0.1', 'http://localhost', 'item/view', 'id=8'),
(24, '2018-02-03 14:45:13', '127.0.0.1', 'http://localhost', 'item/index', ''),
(25, '2018-02-03 14:45:36', '127.0.0.1', 'http://localhost', 'item/view', 'id=5'),
(26, '2018-02-03 14:45:40', '127.0.0.1', 'http://localhost', 'item/index', ''),
(27, '2018-02-03 14:51:14', '127.0.0.1', 'http://localhost', '', ''),
(28, '2018-02-03 14:54:27', '127.0.0.1', 'http://localhost', 'item/index', ''),
(29, '2018-02-03 14:55:15', '127.0.0.1', 'http://localhost', 'item/view', 'id=13'),
(30, '2018-02-03 14:55:19', '127.0.0.1', 'http://localhost', 'item/index', ''),
(31, '2018-02-03 14:58:28', '127.0.0.1', 'http://localhost', 'item/view', 'id=10'),
(32, '2018-02-03 14:58:31', '127.0.0.1', 'http://localhost', 'item/index', ''),
(33, '2018-02-04 08:08:17', '127.0.0.1', 'http://localhost', '', ''),
(34, '2018-02-06 04:55:08', '127.0.0.1', 'http://mymart.local', 'item/view', 'id=13'),
(35, '2018-02-06 04:55:11', '127.0.0.1', 'http://mymart.local', '', ''),
(36, '2018-02-06 04:55:13', '127.0.0.1', 'http://mymart.local', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'derangga', 'vFNk36axrHhXs7ILrQqAfHbkY4SPHcva', '$2y$13$gyQ9o5JpqMy.c7xDqgfuQu2kAU9tz9YZ7gsksSal2OpM9v3qKkCL.', NULL, 'rangga@gmail.com', 10, 1516733182, 1516733182, NULL),
(2, 'admin3', 'u2jisMo41ZDYGJjM9La4sLLS_rDhTOo_', '$2y$13$9JVNYmmMiofHWqvgIsBnPeuPJ/hxDL4d1.xicn1Tl4eD6xwzkedEy', NULL, 'mkh.yusuf@gmail.com', 10, 1616556874, 1616556874, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indeks untuk tabel `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `item_category` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
