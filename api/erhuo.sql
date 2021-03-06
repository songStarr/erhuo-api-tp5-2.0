-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-13 06:22:08
-- 服务器版本： 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erhuo`
--

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_dmsg`
--

CREATE TABLE `erhuo_dmsg` (
  `dmsg_id` int(11) NOT NULL,
  `dmsg_lid` int(11) NOT NULL,
  `dmsg_sid` int(11) NOT NULL,
  `dmsg_rid` int(11) NOT NULL,
  `dmsg_gid` int(11) NOT NULL,
  `dmsg_content` varchar(255) NOT NULL,
  `dmsg_time` int(11) NOT NULL,
  `dmsg_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_dmsg`
--

INSERT INTO `erhuo_dmsg` (`dmsg_id`, `dmsg_lid`, `dmsg_sid`, `dmsg_rid`, `dmsg_gid`, `dmsg_content`, `dmsg_time`, `dmsg_status`) VALUES
(1, 0, 2, 2, 62, '[发呆]', 1526017825, 2),
(2, 0, 2, 2, 62, '123', 1526019273, 0),
(3, 1, 2, 2, 62, '[坏笑]', 1526020756, 0),
(4, 0, 2, 5, 59, '[无奈][无奈]', 1526029371, 0);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_dynamic`
--

CREATE TABLE `erhuo_dynamic` (
  `dynamic_id` int(11) NOT NULL,
  `dynamic_uid` int(11) NOT NULL,
  `dynamic_lid` int(11) NOT NULL DEFAULT '0',
  `dynamic_type` int(11) NOT NULL COMMENT '0 全部 1文字 2 商品',
  `dynamic_gid` int(11) NOT NULL,
  `dynamic_content` text CHARACTER SET utf8mb4 NOT NULL,
  `dynamic_share` int(11) NOT NULL DEFAULT '0',
  `dynamic_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态';

--
-- 转存表中的数据 `erhuo_dynamic`
--

INSERT INTO `erhuo_dynamic` (`dynamic_id`, `dynamic_uid`, `dynamic_lid`, `dynamic_type`, `dynamic_gid`, `dynamic_content`, `dynamic_share`, `dynamic_time`) VALUES
(1, 1, 0, 1, 0, '求一个二货~', 1, 1522057530),
(2, 2, 0, 1, 0, '恭喜金彪被重庆理工大学研究生院录取^_^', 1, 1522119708),
(3, 4, 0, 2, 21, '我发布了一个二货，快来看看~', 0, 1522139758),
(6, 5, 0, 2, 25, '我发布了一个二货，快来看看~', 0, 1522142602),
(7, 5, 0, 2, 26, '我发布了一个二货，快来看看~', 0, 1522406503),
(8, 5, 0, 2, 27, '我发布了一个二货，快来看看~', 0, 1522406975),
(9, 5, 0, 2, 28, '我发布了一个二货，快来看看~', 0, 1522407687),
(10, 6, 0, 2, 29, '我发布了一个二货，快来看看~', 0, 1522824784),
(12, 6, 0, 2, 35, '我发布了一个二货，快来看看~', 0, 1523254250),
(14, 1, 0, 1, 0, '纸短情长啊\n诉不完当时年少\n我的故事还是关于你呀', 0, 1523262688),
(16, 1, 0, 1, 0, '我真的好想你\n在每一个雨季\n你选择遗忘的\n是我最不舍的', 0, 1523263060),
(19, 11, 0, 1, 0, '新人报到😁', 0, 1523329949),
(25, 11, 0, 1, 0, '😝', 0, 1523333209),
(27, 11, 0, 1, 0, '搜索', 0, 1523333290),
(28, 6, 0, 1, 0, 'asd', 0, 1523333443),
(29, 6, 0, 1, 0, 'asd', 0, 1523333470),
(30, 11, 0, 1, 0, '撒', 0, 1523333477),
(31, 11, 0, 2, 36, '我发布了一个二货，快来看看~', 0, 1523433828),
(32, 12, 0, 2, 37, '我发布了一个二货，快来看看~', 0, 1523519785),
(33, 6, 0, 2, 38, '我发布了一个二货，快来看看~', 3, 1523972129),
(40, 11, 33, 2, 0, '分享一下@吴志豪: 我发布了一个二货，快来看看~', 0, 1524028409),
(41, 5, 33, 2, 0, '好东西 不要错过哦@刘滔: 分享一下@吴志豪: 我发布了一个二货，快来看看~', 0, 1524031450),
(42, 5, 33, 2, 0, '阿斯达//@王玥: 好东西 不要错过哦@刘滔: 分享一下@吴志豪: 我发布了一个二货，快来看看~', 1, 1524031540),
(43, 2, 33, 2, 0, '这个东西不错哟o_O //@王玥: 阿斯达//@王玥: 好东西 不要错过哦@刘滔: 分享一下@吴志豪: 我发布了一个二货，快来看看~', 0, 1524046119),
(44, 2, 0, 2, 39, '我发布了一个二货，快来看看~', 0, 1524152150),
(45, 2, 2, 1, 0, '恭喜 //@songstar: 恭喜金彪被重庆理工大学研究生院录取^_^', 0, 1524202146),
(46, 2, 0, 2, 40, '我发布了一个二货，快来看看~', 0, 1524452736),
(47, 2, 0, 2, 41, '我发布了一个二货，快来看看~', 0, 1524456321),
(48, 2, 0, 2, 42, '我发布了一个二货，快来看看~', 0, 1524466138),
(49, 2, 0, 2, 43, '我发布了一个二货，快来看看~', 0, 1524546074),
(50, 6, 0, 2, 44, '我发布了一个二货，快来看看~', 0, 1524650836),
(52, 6, 0, 2, 45, '我发布了一个二货，快来看看~', 0, 1524735344),
(53, 13, 0, 2, 46, '我发布了一个二货，快来看看~', 0, 1525165723),
(54, 13, 0, 2, 47, '我发布了一个二货，快来看看~', 0, 1525165811),
(55, 13, 0, 2, 48, '我发布了一个二货，快来看看~', 0, 1525227313),
(56, 2, 0, 2, 49, '我发布了一个二货，快来看看~', 0, 1525261950),
(58, 2, 0, 2, 51, '我发布了一个二货，快来看看~', 0, 1525357709),
(59, 5, 0, 2, 52, '我发布了一个二货，快来看看~', 0, 1525357837),
(60, 2, 0, 1, 0, '[doge][doge][白眼]发表情咯', 0, 1525749649),
(62, 2, 0, 1, 0, '[惊吓][惊吓]', 3, 1525837659),
(63, 2, 0, 2, 54, '我发布了一个二货，快来看看~', 0, 1525837821),
(64, 2, 62, 1, 0, '你惊讶啥哟 //@songstar: [惊吓][惊吓]', 0, 1526111898);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_fmsg`
--

CREATE TABLE `erhuo_fmsg` (
  `fmsg_id` int(11) NOT NULL,
  `fmsg_uid` int(11) NOT NULL,
  `fmsg_content` varchar(255) NOT NULL,
  `fmsg_time` int(11) NOT NULL,
  `fmsg_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 未读 2 已读 3 删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言';

--
-- 转存表中的数据 `erhuo_fmsg`
--

INSERT INTO `erhuo_fmsg` (`fmsg_id`, `fmsg_uid`, `fmsg_content`, `fmsg_time`, `fmsg_status`) VALUES
(1, 1, '我是sx我是sx我我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是sx我是s', 1517638511, 0),
(4, 1, '我要反馈', 1517638511, 0),
(6, 2, '已读', 1523656536, 2),
(7, 2, '你太帅了', 1519545442, 0),
(8, 2, '嘻嘻嘻', 1519545497, 0),
(9, 1, '我要提意见', 1521188339, 0);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_gclassify`
--

CREATE TABLE `erhuo_gclassify` (
  `gclassify_id` int(11) NOT NULL,
  `gclassify_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_gclassify`
--

INSERT INTO `erhuo_gclassify` (`gclassify_id`, `gclassify_name`) VALUES
(1, '图书教材'),
(2, '数码产品'),
(4, '衣物鞋帽'),
(5, '代步工具'),
(6, '运动器材'),
(7, '家用电器'),
(8, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_gicon`
--

CREATE TABLE `erhuo_gicon` (
  `gIcon_id` int(11) NOT NULL,
  `gIcon_gid` int(11) NOT NULL,
  `gIcon_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_gicon`
--

INSERT INTO `erhuo_gicon` (`gIcon_id`, `gIcon_gid`, `gIcon_url`) VALUES
(26, 18, '/api/public/uploads/20180317/c24b56c2b36a666119d79f49d218986d.jpg'),
(27, 18, '/api/public/uploads/20180317/644d4fff06b20063c6553714ad7afefa.jpg'),
(28, 19, '/api/public/uploads/20180321/742cfaec0b10cd1dce6c5b29ccb4b8ea.jpg'),
(29, 20, '/api/public/uploads/20180326/4f8988de1fb4ba55624a0aa2ca856922.jpg'),
(30, 20, '/api/public/uploads/20180326/71612b0990493012c211c9c5559db266.jpg'),
(31, 21, '/api/public/uploads/20180327/8452917e2c9ee2588933c5acec6c0c3a.jpg'),
(35, 25, '/api/public/uploads/20180327/d224df86cef991cebdfc8c343d740cb4.jpg'),
(36, 26, '/api/public/uploads/20180330/e2ff12312e36b2967efb0bb986b9d10a.jpg'),
(37, 27, '/api/public/uploads/20180330/402790e80bf188a998cb924078fd6a51.jpg'),
(38, 28, '/api/public/uploads/20180330/05ec878b578900c66f7fe5d9e89369c8.jpeg'),
(39, 28, '/api/public/uploads/20180330/2e2f43a7de9cda7558e3d6d548f28562.jpeg'),
(40, 29, '/api/public/uploads/20180404/29e4e51e4b1eaa48f3206bab3b5fb06c.jpg'),
(41, 29, '/api/public/uploads/20180404/fc7fdd6776a7a25cf7ea14408569d1f9.jpg'),
(42, 30, '/api/public/uploads/20180409/28e1dce297cdea38f2aa8bafab3f8fbf.jpg'),
(44, 32, '/api/public/uploads/20180409/28e1dce297cdea38f2aa8bafab3f8fbf.jpg'),
(47, 35, '/api/public/uploads/20180409/28e1dce297cdea38f2aa8bafab3f8fbf.jpg'),
(48, 36, '/api/public/uploads/20180411/b870d66abc99b3ac086d8a7364aec1ca.jpeg'),
(49, 36, '/api/public/uploads/20180411/c846f8c13e184db33c6ec38972f76948.jpeg'),
(50, 37, '/api/public/uploads/20180412/e3a9b96309f4d57ddf8d23a3a3a3befe.png'),
(51, 38, '/api/public/uploads/20180417/267bf422182d2f2c1a568f0829cc8121.jpg'),
(52, 39, '/api/public/uploads/20180419/14ae2962de6c1f0c979ae8c3d1912efd.jpg'),
(53, 40, '/api/public/uploads/20180423/1f48148130bcbbbc65e4da123161b65f.jpeg'),
(54, 40, '/api/public/uploads/20180423/031821d97bccd0b933983d80579683a6.jpeg'),
(55, 41, '/api/public/uploads/20180423/dded99b0ed28bcfce29a5f26d5019e5b.jpg'),
(56, 42, '/api/public/uploads/20180423/9090815e486fe603cbfd9111db6ef393.jpg'),
(57, 43, '/api/public/uploads/20180424/e4be7bcf397ca8cf2bce75b70617449f.jpg'),
(58, 44, '/api/public/uploads/20180425/9148abdce1fe744e9245584b723aeb6f.jpeg'),
(59, 45, '/api/public/uploads/20180426/f31732c9a33cfa4d3c4af3929765de3c.png'),
(60, 45, '/api/public/uploads/20180426/a0fc741ad7f298e616939864c11ddbb8.jpg'),
(61, 46, '/api/public/uploads/20180501/ec57a63b9aef9b9e3e1d029b8e01e074.jpg'),
(62, 47, '/api/public/uploads/20180501/ea6c61b90bf94d4aec119e4edb3c3a36.jpg'),
(63, 47, '/api/public/uploads/20180501/b6f4ccfbf2216d0e0700a0114bf72fc8.jpg'),
(64, 48, '/api/public/uploads/20180502/8545c323724322a52694eae8f2f1a347.png'),
(65, 49, '/api/public/uploads/20180502/ea23d2cd0025a7b70a36872e966e8670.jpg'),
(66, 49, '/api/public/uploads/20180502/ab9696da1b89118df77bdea45aea8c2d.jpg'),
(68, 51, '/api/public/uploads/20180503/606a588fcc4fc52c55d370f63b50f9a4.jpg'),
(69, 52, '/api/public/uploads/20180503/a214c9c34ce73cc4569360593f4b0b34.jpeg'),
(71, 54, '/api/public/uploads/20180509/e37d5a738aac9c03792dca51a01b2f5a.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_goods`
--

CREATE TABLE `erhuo_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_uid` int(11) NOT NULL,
  `goods_cid` int(11) NOT NULL COMMENT '分类id',
  `goods_name` char(20) NOT NULL,
  `goods_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0待审核 1 未通过 2通过 3下架',
  `goods_spread` int(11) NOT NULL DEFAULT '0' COMMENT '是否推广',
  `goods_sell` int(11) NOT NULL DEFAULT '1' COMMENT '1 出售 0 求购',
  `goods_oprice` int(11) NOT NULL COMMENT '原价',
  `goods_nprice` int(11) NOT NULL COMMENT '现价',
  `goods_address` text NOT NULL COMMENT '交易地址',
  `goods_type` int(1) NOT NULL COMMENT '交易方式：0线上 1线下',
  `goods_summary` text NOT NULL COMMENT '简介',
  `phone` char(11) NOT NULL,
  `qq` int(11) DEFAULT NULL,
  `wechat` char(11) NOT NULL,
  `goods_time` int(11) NOT NULL,
  `goods_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_goods`
--

INSERT INTO `erhuo_goods` (`goods_id`, `goods_uid`, `goods_cid`, `goods_name`, `goods_status`, `goods_spread`, `goods_sell`, `goods_oprice`, `goods_nprice`, `goods_address`, `goods_type`, `goods_summary`, `phone`, `qq`, `wechat`, `goods_time`, `goods_view`) VALUES
(18, 3, 4, '薄荷绿双肩包', 2, 0, 1, 50, 8, '北校区6区7栋615', 2, '春夏要来了，这个颜色可以说是非常清新了，学姐要毕业了，转手送学妹啊，请学姐喝杯奶茶就行ʚتɞ', '15574406224', 1043328710, '', 1521271843, 26),
(19, 5, 8, '水乳', 2, 0, 1, 50, 30, '南校区2区2栋222', 2, '植物日记水乳套装\n去年九月份买的 闲置到现在 乳液有点少了\n ', '15573318829', 0, '', 1521643841, 28),
(20, 2, 5, '鬼火摩托车', 0, 0, 1, 2600, 2000, '7区1栋222', 2, '上学期中期刚买的新车，进口鬼火入手时2600，到现在骑了不到四百公里。2000出手，全新，加油很给力。', '15574406229', 1043328710, '', 1522041292, 4),
(21, 4, 7, '风扇', 0, 0, 1, 45, 15, '6-7-616', 0, '宿舍用风扇，8成新，原价45，现价15，可讲价', '', 1043328710, '', 1522139168, 0),
(25, 5, 1, '钱理群中国现代文学三十年', 0, 0, 1, 25, 15, '湖南科技大学北校区9教', 0, '钱理群的中国现代文学三十年，图书保存完好，考研很多大学都用这本的哦～有需要的学弟学妹们看过来～', '15573318829', 0, '', 1522142601, 2),
(26, 5, 7, '电热饭盒', 0, 1, 1, 49, 29, '北校区十教学楼', 0, '可以煮面，热饭等等，原价49', '15573318829', 0, '', 1522406503, 2),
(27, 5, 1, '《道德经》', 0, 1, 1, 50, 20, '樱花园', 0, '八成新', '15573318829', 0, '', 1522406975, 5),
(28, 5, 8, '床上书桌', 2, 1, 1, 150, 80, '北校区6-7-616', 2, '原价150，只用了一个学期 无损坏，如果购买女生可以上门帮忙组装，也可以帮助送到您的寝室。', '15573318829', 0, '', 1522407687, 15),
(29, 6, 8, '眼镜框', 2, 0, 1, 50, 35, '6-7-616', 0, '从没带过，几乎全新，可以自配镜片，放着没用低价卖了。', '15673226596', 0, 'zohar', 1522824784, 8),
(30, 6, 2, 'B.O.W 航式充电无线键盘', 2, 1, 1, 99, 50, '6-7-616', 2, '京东正品，只用了不到两天（聊天打字，其他没动过），说明书齐全，可验货，买了绝对不亏，办公绝佳搭档。想重买个机械键盘，所以低价出售。', '15673226596', 0, 'zohar', 1523254021, 5),
(32, 6, 2, 'B.O.W 航式充电无线键盘', 3, 0, 1, 99, 50, '6-7-616', 2, '京东正品，只用了不到两天（聊天打字，其他没动过），说明书齐全，可验货，买了绝对不亏，办公绝佳搭档。想重买个机械键盘，所以低价出售。', '15673226596', 0, 'zohar', 1523254177, 0),
(35, 6, 2, 'B.O.W 航式充电无线键盘', 1, 0, 1, 99, 50, '6-7-616', 2, '京东正品，只用了不到两天（聊天打字，其他没动过），说明书齐全，可验货，买了绝对不亏，办公绝佳搭档。想重买个机械键盘，所以低价出售。', '15673226596', 0, 'zohar', 1523254250, 3),
(36, 11, 2, 'iphone 6 全包手机壳', 0, 0, 1, 20, 10, '6-7-616', 0, '一次买了好几个手机壳，这个一直没用过，全新未拆封（除了照相的时候打开了）', '15873071082', 0, '', 1523433828, 4),
(37, 12, 8, '出租steam绝地求生账号', 0, 0, 1, 98, 1, '', 1, '1块钱/小时 3块钱/天', '18173278986', 0, 'AnAn', 1523519785, 21),
(38, 6, 7, '冰箱', 0, 0, 1, 400, 300, '6-7-616', 2, '用了两年多，制冷还是很给力！', '15673226596', 0, 'zohar', 1523972128, 1),
(39, 2, 1, '考研英语词汇书', 0, 0, 1, 30, 15, '6-7-616', 0, '全新，大四毕业，闲置。', '15574406229', 1043328710, '', 1524152150, 5),
(40, 2, 1, '最好的我们', 0, 1, 1, 30, 10, '6-7-616', 0, '书只看了一遍，有喜欢耿耿于淮的带走吧！两本十块', '15574406229', 1043328710, '', 1524452736, 1),
(41, 2, 5, '求一辆死飞', 0, 0, 0, 500, 200, '6-7-616', 0, '最好八成新死飞，带大锁一把', '15574406229', 0, 'songstar', 1524456321, 14),
(42, 2, 7, '风扇', 0, 1, 1, 30, 10, '6-7-671', 0, '夏天到了，你需要风扇and吊扇，大四学姐大甩卖，只要10块钱，10块钱你买不了吃亏，买不了上当，10块钱，清凉一夏', '15574406229', 1043328710, '', 1524466138, 32),
(43, 2, 5, '摩托', 0, 0, 1, 2000, 1500, '6-7-616', 2, '买来没有几个月，八九成新，买之后送锁，有意向者私聊电话18216069821，图片是网上的，实物要好的多', '15574406229', 0, '', 1524546074, 8),
(44, 6, 8, '可爱小蜥蜴', 0, 0, 1, 500, 100, '6-1-676', 0, '可爱小蜥蜴  冬暖夏凉', '15673226596', 0, '', 1524650836, 13),
(45, 6, 8, '御泥坊口红（波尔多酒红）', 0, 0, 1, 99, 25, '6-1-761', 0, '御泥坊旗舰店买的，颜色不适合我，用过两三次，喜欢的小可爱带走吧！', '15673226596', 0, 'zohar', 1524735344, 7),
(46, 13, 1, '小说 第三天堂', 0, 1, 1, 50, 10, '6-7-616', 0, '主打悬疑剧情，个人觉得很精彩，同时这也是本耽美小说。想看结局的也可以入。', '15200341651', 0, '', 1525165722, 0),
(47, 13, 1, '英文读物', 0, 0, 1, 30, 10, '6-7-616', 2, '第一张图里，分别是《逃离》和《致D情史》，购自亚马逊海外图书。逃离是诺贝尔得奖作品，不多介绍。致D情史，简单的说就是一碗狗粮。 第二张图里，左边是一本英文童话，右边是电影相助的小说版，就是石头姐演的那部。', '15200341651', 0, '', 1525165811, 5),
(48, 13, 1, '图书大甩卖', 0, 0, 1, 30, 15, '6-7-616', 2, '即将毕业，图书甩卖，三本书15元', '15200341651', 0, '', 1525227313, 0),
(49, 2, 8, '行李箱', 0, 0, 1, 200, 100, '6-7-616', 2, '20寸:银色，可放15.6笔记本，长宽都有富余。箱子完好无损，上面的防护膜还没撕。大二购入，78成新的样子。售价90 24寸:款式比较老，质量不好。虽然只用过两次，但没注意保养，外表有污渍，内层有掉落，建议当做储物箱用。售价40 可随时联系看箱，可面谈议价', '15574406229', 0, '', 1525261950, 4),
(51, 2, 8, '小桌子', 0, 0, 1, 15, 10, '6-7-616', 2, '8新，四肢健全，平衡感好', '15574406229', 0, '', 1525357709, 5),
(52, 5, 4, 'puma板鞋', 0, 0, 1, 300, 200, '6-7-616', 2, '只穿过一次，买小了，手贱把吊牌拆了，36码（225mm）\n', '15573318829', 0, '', 1525357837, 21),
(54, 2, 8, '吉他', 0, 0, 1, 200, 100, '6-7-616', 0, '吉他啦', '15574406229', 1043328710, '', 1525837821, 13);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_goodsrship`
--

CREATE TABLE `erhuo_goodsrship` (
  `goodsrship` int(11) NOT NULL,
  `fans_id` int(11) NOT NULL,
  `followers_id` int(11) NOT NULL,
  `follower_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_goodsrship`
--

INSERT INTO `erhuo_goodsrship` (`goodsrship`, `fans_id`, `followers_id`, `follower_time`) VALUES
(24, 3, 18, 1521275556),
(25, 1, 18, 1521386053),
(27, 4, 21, 1522141599),
(28, 2, 40, 1524453382),
(29, 2, 41, 1524467193),
(30, 2, 54, 1525952902);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_grecord`
--

CREATE TABLE `erhuo_grecord` (
  `grecord_id` int(11) NOT NULL,
  `grecord_gid` int(11) NOT NULL,
  `grecord_uid` int(11) NOT NULL,
  `grecord_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品浏览记录';

--
-- 转存表中的数据 `erhuo_grecord`
--

INSERT INTO `erhuo_grecord` (`grecord_id`, `grecord_gid`, `grecord_uid`, `grecord_time`) VALUES
(1, 1, 1, 1525835997),
(4, 1, 2, 1517589457),
(5, 3, 1, 1523253211),
(6, 11, 1, 1521122739),
(7, 3, 3, 1521280746),
(8, 10, 3, 1521271178),
(9, 18, 3, 1521276428),
(10, 18, 1, 1521621341),
(11, 19, 5, 1521647524),
(12, 18, 5, 1521647270),
(13, 3, 2, 1525835769),
(14, 20, 2, 1522041308),
(15, 2, 2, 1522131058),
(16, 19, 2, 1522474028),
(17, 27, 5, 1522407309),
(18, 10, 2, 1522471076),
(19, 11, 2, 1522472110),
(20, 26, 2, 1522472116),
(21, 25, 1, 1523265403),
(22, 29, 1, 1523251500),
(23, 27, 1, 1523265205),
(24, 28, 1, 1523205649),
(25, 19, 1, 1523250533),
(26, 35, 1, 1523265980),
(27, 26, 1, 1523265180),
(28, 30, 11, 1523329907),
(29, 36, 11, 1523434038),
(30, 37, 2, 1523863402),
(31, 39, 2, 1524152376),
(32, 39, 11, 1524202421),
(33, 38, 11, 1524204850),
(34, 41, 2, 1524474260),
(35, 42, 2, 1524467928),
(36, 43, 2, 1524546106),
(37, 27, 2, 1524547064),
(38, 45, 6, 1524736718),
(39, 47, 14, 1525227019),
(40, 49, 2, 1525338369),
(41, 49, 14, 1525337329),
(42, 52, 2, 1525752432),
(43, 51, 2, 1525789204),
(44, 54, 2, 1526113461),
(45, 54, 5, 1526029434),
(46, 54, 13, 1526105514);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_lmsg`
--

CREATE TABLE `erhuo_lmsg` (
  `lmsg_id` int(11) NOT NULL,
  `lmsg_lid` int(11) NOT NULL,
  `lmsg_sid` int(11) NOT NULL COMMENT '发送者id',
  `lmsg_rid` int(11) NOT NULL COMMENT '接受者id',
  `lmsg_gid` int(11) NOT NULL,
  `lmsg_content` varchar(255) NOT NULL,
  `lmsg_time` int(11) NOT NULL,
  `lmsg_status` int(11) NOT NULL DEFAULT '0' COMMENT '0为未回复1为回复了',
  `lmsg_star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言';

--
-- 转存表中的数据 `erhuo_lmsg`
--

INSERT INTO `erhuo_lmsg` (`lmsg_id`, `lmsg_lid`, `lmsg_sid`, `lmsg_rid`, `lmsg_gid`, `lmsg_content`, `lmsg_time`, `lmsg_status`, `lmsg_star`) VALUES
(1, 0, 1, 2, 11, '我要留言', 1520847028, 2, 0),
(3, 1, 2, 1, 11, '我要回复', 1520847100, 1, 0),
(5, 0, 1, 1, 11, '爱数', 1521097689, 0, 0),
(6, 5, 1, 1, 11, '我回复你', 1521099064, 0, 0),
(7, 0, 3, 1, 3, '我是唐新 嘻嘻嘻', 1521264879, 0, 0),
(8, 0, 3, 1, 3, '我是唐新 嘻嘻嘻', 1521264904, 1, 0),
(9, 0, 1, 2, 3, '增加回复', 1521265005, 2, 0),
(10, 0, 1, 2, 3, '增加回复', 1521265079, 2, 0),
(11, 0, 3, 1, 3, '我是唐新 嘻嘻嘻', 1521265103, 1, 0),
(12, 10, 3, 1, 3, '嘤嘤嘤', 1521265931, 0, 0),
(13, 9, 3, 1, 3, '卖竹鼠 三元一只 十元三只', 1521266185, 0, 0),
(17, 0, 2, 5, 19, '哇 这个水乳 好漂亮哦', 1522132376, 1, 0),
(19, 0, 2, 5, 52, '[鄙视][鄙视]', 1525752003, 0, 0),
(21, 0, 2, 2, 54, '[色][色] 好像要呀', 1526022023, 2, 0),
(22, 21, 2, 2, 54, '嘻嘻嘻', 1526022041, 0, 0),
(23, 0, 5, 2, 54, '[点赞]厉害了', 1526029452, 0, 0),
(24, 0, 13, 2, 54, '[doge]吉他呀', 1526105539, 0, 0),
(25, 21, 13, 2, 54, '我也是 [难过]', 1526105556, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_main`
--

CREATE TABLE `erhuo_main` (
  `main_id` int(11) NOT NULL,
  `main_gnum` int(11) NOT NULL COMMENT '商品数量',
  `main_unum` int(11) NOT NULL COMMENT '用户数量',
  `main_egnum` int(11) NOT NULL COMMENT '待审核的商品数量',
  `main_fnum` int(11) NOT NULL COMMENT '反馈数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_main`
--

INSERT INTO `erhuo_main` (`main_id`, `main_gnum`, `main_unum`, `main_egnum`, `main_fnum`) VALUES
(0, 38, 10, 22, 6);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_notice`
--

CREATE TABLE `erhuo_notice` (
  `notice_id` int(11) NOT NULL,
  `notice_uid` int(11) NOT NULL,
  `notice_lid` int(11) NOT NULL COMMENT '0 所有人 其他对应用户id',
  `notice_title` char(30) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_notice`
--

INSERT INTO `erhuo_notice` (`notice_id`, `notice_uid`, `notice_lid`, `notice_title`, `notice_content`, `notice_time`) VALUES
(1, 1, 0, '《重神机潘多拉》先行上映会重庆场报名开始', '主场观众久等了！3月25日《重神机潘多拉》先行上映会重庆主场报名开始！主场双倍福利！“契约时间”特别活动现场揭晓！我们诚邀B站会员参与先行上映会，让我们共睹河森导演为我们带来的全新世界！详情请戳→<a data-v-facdb7ac=\"\" href=\"https://www.bilibili.com/blackboard/activity-ZSJPDL.html\" target=\"_blank\" title=\"https://www.bilibili.com/blackboard/activity-ZSJPDL.html\" class=\"link\">https://www.bilibili.com/blackboard/activity-ZSJPDL.html</a>', 1521560062),
(2, 1, 0, '哔哩哔哩为你准备了一份除夕大礼包！', '汪星年的拜年祭终于进入最后的倒计时了~ 2月15日除夕夜18:00，记得来bilibili和大家干杯 (゜-゜)つロ', 1521560109),
(4, 1, 0, 'bilibili2018拜年祭来啦！', '大吉大利，今晚看“祭”！一年一度的拜年祭终于要开始啦~今晚18:00，和bilibili的小伙伴一起过年 (ノ≧∇≦)ノ 坐稳这辆去2018拜年祭的车：<a data-v-facdb7ac=\"\" href=\"https://www.bilibili.com/blackboard/bnj2018.html\" target=\"_blank\" title=\"https://www.bilibili.com/blackboard/bnj2018.html\" class=\"link\">https://www.bilibili.com/blackboard/bnj2018.html</a>', 1521608713),
(5, 1, 5, '商品审核通过通知', '恭喜，您发布的商品通过，看快去看看吧~', 1521696667),
(6, 1, 1, '商品审核未通过通知', '亲爱的songstar, 您于2018-03-9 13:53:56发布的商品(好东西)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：商品图片不符合&lt;br&gt;审核人:songstar', 1521713700),
(7, 1, 5, '商品审核未通过通知', '亲爱的王玥, 您于2018-03-21 22:50:41发布的商品(水乳)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：就是不给你通过&lt;br&gt;审核人:songstar', 1521713777),
(10, 1, 3, '商品审核通过通知', '亲爱的admin@amare, 您于2018-03-17 15:30:43发布的商品(薄荷绿双肩包)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714324),
(11, 1, 1, '商品审核通过通知', '亲爱的songstar, 您于2018-02-27 22:52:9发布的商品(小谈表情)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714333),
(12, 1, 1, '商品审核通过通知', '亲爱的songstar, 您于2018-02-27 22:50:57发布的商品(小谈表情)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714341),
(13, 1, 1, '商品审核通过通知', '亲爱的songstar, 您于2018-02-27 22:49:57发布的商品(123)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714344),
(14, 1, 2, '商品审核通过通知', '亲爱的songstar1, 您于2018-02-2 13:32:49发布的商品(好东西1)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714352),
(15, 1, 2, '商品审核通过通知', '亲爱的songstar1, 您于2018-02-2 13:35:17发布的商品(好东西2)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714354),
(16, 1, 5, '商品审核通过通知', '亲爱的王玥, 您于2018-03-21 22:50:41发布的商品(水乳)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714365),
(17, 1, 1, '商品已下架通知', '亲爱的songstar, 您于2018-03-9 13:53:56发布的商品(好东西)已下架。感谢您的发布。&lt;br&gt;审核人:songstar', 1521714369),
(18, 1, 1, '商品审核通过通知', '亲爱的songstar, 您于2018-02-27 22:51:15发布的商品(小谈表情)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521714989),
(19, 1, 1, '商品通过审核通知', '亲爱的songstar, 您于2018-02-27 22:47:37发布的商品(123)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521715280),
(20, 1, 1, '商品审核通过通知', '亲爱的songstar, 您于2018-03-9 13:53:56发布的商品(好东西)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:songstar', 1521715341),
(21, 1, 1, '商品审核未通过通知', '亲爱的songstar, 您于2018-02-27 22:51:15发布的商品(小谈表情)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：你太菜了&lt;br&gt;审核人:songstar', 1521715390),
(22, 1, 1, '商品审核未通过通知', '亲爱的二货官方, 您于2018-04-9 14:10:45发布的商品(123)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：信息不全&lt;br&gt;审核人:二货官方', 1523254735),
(23, 1, 1, '商品审核通过通知', '亲爱的二货官方, 您于2018-04-9 14:9:44发布的商品(123)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:二货官方', 1523254749),
(24, 1, 1, '商品审核通过通知', '亲爱的二货官方, 您于2018-04-9 14:7:47发布的商品(123)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:二货官方', 1523254793),
(25, 1, 1, '商品审核未通过通知', '亲爱的二货官方, 您于2018-04-9 14:7:47发布的商品(123)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：信息不全&lt;br&gt;审核人:二货官方', 1523254824),
(26, 1, 6, '商品审核未通过通知', '亲爱的吴志豪, 您于2018-04-9 14:10:50发布的商品(B.O.W 航式充电无线键盘)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：阿什顿&lt;br&gt;审核人:二货官方', 1523255390),
(27, 1, 6, '商品已下架通知', '亲爱的吴志豪, 您于2018-04-9 14:9:37发布的商品(B.O.W 航式充电无线键盘)已下架。感谢您的发布。&lt;br&gt;审核人:二货官方', 1523255430),
(28, 1, 1, '商品审核未通过通知', '亲爱的二货官方, 您于2018-04-9 14:9:44发布的商品(123)未能通过审核,请修改后等待我们的下一次审核。&lt;br&gt;原因：信息不全&lt;br&gt;审核人:二货官方', 1523255842),
(29, 1, 6, '商品审核通过通知', '亲爱的吴志豪, 您于2018-04-4 14:53:4发布的商品(眼镜框)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:二货官方', 1523255856),
(30, 1, 5, '商品审核通过通知', '亲爱的王玥, 您于2018-03-30 19:1:27发布的商品(床上书桌)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:二货官方', 1523255895),
(31, 1, 6, '商品审核通过通知', '亲爱的吴志豪, 您于2018-04-9 14:7:1发布的商品(B.O.W 航式充电无线键盘)已通过审核, 快去看一下吧~。&lt;br&gt;审核人:二货官方', 1523255908);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_praise`
--

CREATE TABLE `erhuo_praise` (
  `praise_id` int(11) NOT NULL,
  `praise_type` int(11) NOT NULL COMMENT '0 lmsg 1 动态 2dmsg',
  `praise_mid` int(11) NOT NULL COMMENT '评论id',
  `praise_uid` int(11) NOT NULL COMMENT '用户id',
  `praise_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_praise`
--

INSERT INTO `erhuo_praise` (`praise_id`, `praise_type`, `praise_mid`, `praise_uid`, `praise_time`) VALUES
(4, 0, 3, 2, 1522039574),
(5, 0, 7, 2, 1522039589),
(6, 0, 11, 2, 1522040520),
(10, 1, 1, 2, 1522122539),
(12, 0, 14, 2, 1522125191),
(13, 1, 2, 4, 1522135347),
(14, 1, 3, 4, 1522141656),
(15, 1, 7, 5, 1522406689),
(16, 1, 2, 5, 1522406694),
(17, 1, 9, 2, 1522549130),
(18, 1, 9, 1, 1523206501),
(19, 1, 10, 1, 1523206503),
(20, 1, 1, 1, 1523252008),
(21, 1, 2, 1, 1523253427),
(22, 1, 14, 1, 1523263189),
(23, 1, 6, 1, 1523265332),
(24, 1, 31, 1, 1523442195),
(25, 1, 33, 6, 1523972213),
(26, 1, 40, 5, 1524031284),
(27, 1, 44, 2, 1524201069),
(28, 1, 45, 13, 1525245240),
(29, 1, 2, 13, 1525245259),
(31, 0, 19, 2, 1525752438),
(32, 1, 61, 2, 1525837646),
(34, 0, 1, 2, 1526019641),
(38, 2, 1, 2, 1526020459),
(39, 0, 21, 2, 1526022030),
(40, 1, 62, 2, 1526111726);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_report`
--

CREATE TABLE `erhuo_report` (
  `report_id` int(11) NOT NULL,
  `report_type` int(11) NOT NULL COMMENT '1 商品 2 lmsg 3 是动态 4 dmsg',
  `report_gid` int(11) NOT NULL COMMENT '举报对象id',
  `report_uid` int(11) NOT NULL,
  `report_reason` char(10) NOT NULL,
  `report_content` text NOT NULL,
  `report_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_report`
--

INSERT INTO `erhuo_report` (`report_id`, `report_type`, `report_gid`, `report_uid`, `report_reason`, `report_content`, `report_time`) VALUES
(3, 1, 10, 2, '0', '我就是不喜欢', 1522471179),
(5, 1, 11, 2, '其他', '我就是不喜欢', 1522472078),
(6, 1, 26, 2, '垃圾广告', '', 1522472120),
(7, 2, 17, 2, '其他', '测试举报', 1522472431),
(8, 1, 19, 2, '赌博诈骗', '', 1522472435),
(9, 3, 9, 2, '其他', '嗷嗷嗷', 1522548691),
(10, 3, 44, 2, '其他', '嘻嘻嘻', 1524202002),
(11, 4, 2, 2, '垃圾广告', 'laj', 1526021247);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_search`
--

CREATE TABLE `erhuo_search` (
  `search_id` int(11) NOT NULL,
  `search_name` char(11) NOT NULL,
  `search_num` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_search`
--

INSERT INTO `erhuo_search` (`search_id`, `search_name`, `search_num`) VALUES
(1, '四级', 3),
(4, 'jacascript', 1),
(5, 'Vue', 21),
(6, 'Iview', 15),
(7, '小', 24),
(9, '吉他', 19),
(10, '桌子', 2);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_usearch`
--

CREATE TABLE `erhuo_usearch` (
  `usearch_id` int(11) NOT NULL,
  `usearch_uid` int(11) NOT NULL,
  `usearch_name` text CHARACTER SET utf8 NOT NULL,
  `usearch_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `erhuo_usearch`
--

INSERT INTO `erhuo_usearch` (`usearch_id`, `usearch_uid`, `usearch_name`, `usearch_time`) VALUES
(5, 2, '吉他', 1525846576),
(7, 2, 'vue', 1525842128),
(8, 2, '桌子', 1525847426);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_user`
--

CREATE TABLE `erhuo_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(11) NOT NULL,
  `user_psd` varchar(32) NOT NULL,
  `user_phone` char(11) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_qq` int(12) NOT NULL,
  `user_wechat` varchar(20) NOT NULL,
  `user_sid` int(5) NOT NULL COMMENT '学校id',
  `user_sex` varchar(20) NOT NULL COMMENT '性别',
  `user_rtime` int(11) NOT NULL COMMENT '注册时间',
  `user_ltime` int(11) NOT NULL COMMENT '上次登陆时间',
  `user_lntime` int(11) NOT NULL COMMENT '上次公告时间',
  `user_icon` varchar(255) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `user_sign` varchar(255) NOT NULL COMMENT '个性签名',
  `user_access` int(11) NOT NULL DEFAULT '0' COMMENT '权限 0为普通用户',
  `user_pop` int(11) NOT NULL DEFAULT '0' COMMENT '人气值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_user`
--

INSERT INTO `erhuo_user` (`user_id`, `user_name`, `user_psd`, `user_phone`, `user_email`, `user_qq`, `user_wechat`, `user_sid`, `user_sex`, `user_rtime`, `user_ltime`, `user_lntime`, `user_icon`, `user_ip`, `user_sign`, `user_access`, `user_pop`) VALUES
(1, '二货官方', 'e10adc3949ba59abbe56e057f20f883e', '15574406224', '1043328710@qq.com', 0, '', 448, 'male', 1519794623, 1525836163, 1525836164, '/api/public/uploads/20180425/350679801be42598ac8a1cfc93296efb.jpg', '127.0.0.1', '欢迎光临西西书店，有事可以电话联系15152013154', 1, 32),
(2, 'songstar', 'e10adc3949ba59abbe56e057f20f883e', '15574406229', '', 1043328710, 'songstar__', 448, 'male', 1519794623, 1526110127, 1526120057, '/api/public/uploads/20180420/e3c188900f4609840b4adb98fca7bc45.jpg', '127.0.0.1', '我是猪', 0, 98),
(3, 'admin@amare', 'e10adc3949ba59abbe56e057f20f883e', '', 'admin@amare.cc', 0, '', 1, 'female', 1519706734, 1521700947, 1521715050, '/api/public/uploads/user_icon/default8.png', '127.0.0.1', '', 0, 15),
(4, '兰兰', 'e10adc3949ba59abbe56e057f20f883e', '18173278879', '', 0, '', 59, 'female', 1520486498, 1522139043, 0, '/api/public/uploads/user_icon/default7.png', '127.0.0.1', '', 0, 8),
(5, '王玥', 'e10adc3949ba59abbe56e057f20f883e', '15573318829', '', 0, '', 448, 'female', 1521647852, 1526029399, 1526029482, '/api/public/uploads/user_icon/default4.png', '127.0.0.1', '我是王玥..巴拉巴拉', 0, 41),
(6, '吴志豪', 'e10adc3949ba59abbe56e057f20f883e', '15673226596', '', 0, '', 448, 'male', 1522822389, 1524734682, 1524736718, '/api/public/uploads/20180426/9e580ac6a5d38cdcb2f9150285e9c792.jpg', '61.151.178.165', '', 0, 33),
(11, '刘滔', 'e10adc3949ba59abbe56e057f20f883e', NULL, '1478265495@qq.com', 0, '', 448, 'male', 1523329747, 1524202179, 1524204850, '/api/public/uploads/user_icon/default6.png', '127.0.0.1', '', 0, 15),
(12, '18173278986', 'e10adc3949ba59abbe56e057f20f883e', '18173278986', '', 0, '', 448, 'male', 1523449621, 1523519663, 1523520063, '/api/public/uploads/user_icon/default8.png', '127.0.0.1', '', 0, 3),
(13, '白生大人', 'e10adc3949ba59abbe56e057f20f883e', '15200341651', '', 0, '', 448, 'male', 1525165235, 1526105509, 1526105514, '/api/public/uploads/20180501/07762e00fd4b33def47e6600018b0d6c.jpg', '127.0.0.1', '', 0, 18),
(14, '起风了', 'e10adc3949ba59abbe56e057f20f883e', NULL, '1026374981@qq.com', 0, '', 448, 'male', 1525225041, 1525337182, 1525337329, '/api/public/uploads/user_icon/default3.png', '119.39.248.9', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `erhuo_userrship`
--

CREATE TABLE `erhuo_userrship` (
  `usership_id` int(11) NOT NULL,
  `fans_id` int(11) NOT NULL,
  `followers_id` int(11) NOT NULL,
  `follower_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `erhuo_userrship`
--

INSERT INTO `erhuo_userrship` (`usership_id`, `fans_id`, `followers_id`, `follower_time`) VALUES
(15, 1, 2, 1519636763),
(17, 2, 1, 1520485479),
(19, 4, 1, 1520486540),
(20, 1, 1, 1520599237),
(59, 3, 1, 1521270651),
(71, 3, 3, 1521276431),
(72, 5, 2, 1522406734),
(73, 5, 1, 1522406742),
(74, 5, 5, 1522407317),
(75, 1, 6, 1523265983),
(76, 1, 5, 1523447163),
(77, 6, 1, 1523974157),
(137, 11, 11, 1524203366),
(138, 11, 2, 1524203383),
(139, 2, 5, 1524452840),
(145, 2, 2, 1524467927),
(146, 6, 2, 1524735444),
(147, 13, 2, 1525244911),
(148, 14, 2, 1525337328);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `erhuo_dmsg`
--
ALTER TABLE `erhuo_dmsg`
  ADD PRIMARY KEY (`dmsg_id`),
  ADD KEY `dmsg_gid` (`dmsg_gid`);

--
-- Indexes for table `erhuo_dynamic`
--
ALTER TABLE `erhuo_dynamic`
  ADD PRIMARY KEY (`dynamic_id`);

--
-- Indexes for table `erhuo_fmsg`
--
ALTER TABLE `erhuo_fmsg`
  ADD PRIMARY KEY (`fmsg_id`);

--
-- Indexes for table `erhuo_gclassify`
--
ALTER TABLE `erhuo_gclassify`
  ADD PRIMARY KEY (`gclassify_id`);

--
-- Indexes for table `erhuo_gicon`
--
ALTER TABLE `erhuo_gicon`
  ADD PRIMARY KEY (`gIcon_id`),
  ADD KEY `gIcon_gid` (`gIcon_gid`);

--
-- Indexes for table `erhuo_goods`
--
ALTER TABLE `erhuo_goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD KEY `goods_cid` (`goods_cid`),
  ADD KEY `goods_uid` (`goods_uid`);

--
-- Indexes for table `erhuo_goodsrship`
--
ALTER TABLE `erhuo_goodsrship`
  ADD PRIMARY KEY (`goodsrship`),
  ADD KEY `fans_id` (`fans_id`),
  ADD KEY `followers_id` (`followers_id`);

--
-- Indexes for table `erhuo_grecord`
--
ALTER TABLE `erhuo_grecord`
  ADD PRIMARY KEY (`grecord_id`);

--
-- Indexes for table `erhuo_lmsg`
--
ALTER TABLE `erhuo_lmsg`
  ADD PRIMARY KEY (`lmsg_id`);

--
-- Indexes for table `erhuo_main`
--
ALTER TABLE `erhuo_main`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `erhuo_notice`
--
ALTER TABLE `erhuo_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `erhuo_praise`
--
ALTER TABLE `erhuo_praise`
  ADD PRIMARY KEY (`praise_id`);

--
-- Indexes for table `erhuo_report`
--
ALTER TABLE `erhuo_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `erhuo_search`
--
ALTER TABLE `erhuo_search`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `erhuo_usearch`
--
ALTER TABLE `erhuo_usearch`
  ADD PRIMARY KEY (`usearch_id`),
  ADD KEY `usearch_uid` (`usearch_uid`);

--
-- Indexes for table `erhuo_user`
--
ALTER TABLE `erhuo_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`user_name`),
  ADD UNIQUE KEY `user_phone` (`user_phone`);

--
-- Indexes for table `erhuo_userrship`
--
ALTER TABLE `erhuo_userrship`
  ADD PRIMARY KEY (`usership_id`),
  ADD KEY `fans_id` (`fans_id`),
  ADD KEY `followers_id` (`followers_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `erhuo_dmsg`
--
ALTER TABLE `erhuo_dmsg`
  MODIFY `dmsg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `erhuo_dynamic`
--
ALTER TABLE `erhuo_dynamic`
  MODIFY `dynamic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- 使用表AUTO_INCREMENT `erhuo_fmsg`
--
ALTER TABLE `erhuo_fmsg`
  MODIFY `fmsg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `erhuo_gclassify`
--
ALTER TABLE `erhuo_gclassify`
  MODIFY `gclassify_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `erhuo_gicon`
--
ALTER TABLE `erhuo_gicon`
  MODIFY `gIcon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- 使用表AUTO_INCREMENT `erhuo_goods`
--
ALTER TABLE `erhuo_goods`
  MODIFY `goods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `erhuo_goodsrship`
--
ALTER TABLE `erhuo_goodsrship`
  MODIFY `goodsrship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `erhuo_grecord`
--
ALTER TABLE `erhuo_grecord`
  MODIFY `grecord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- 使用表AUTO_INCREMENT `erhuo_lmsg`
--
ALTER TABLE `erhuo_lmsg`
  MODIFY `lmsg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `erhuo_notice`
--
ALTER TABLE `erhuo_notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `erhuo_praise`
--
ALTER TABLE `erhuo_praise`
  MODIFY `praise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `erhuo_report`
--
ALTER TABLE `erhuo_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `erhuo_search`
--
ALTER TABLE `erhuo_search`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `erhuo_usearch`
--
ALTER TABLE `erhuo_usearch`
  MODIFY `usearch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `erhuo_user`
--
ALTER TABLE `erhuo_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `erhuo_userrship`
--
ALTER TABLE `erhuo_userrship`
  MODIFY `usership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- 限制导出的表
--

--
-- 限制表 `erhuo_dmsg`
--
ALTER TABLE `erhuo_dmsg`
  ADD CONSTRAINT `erhuo_dmsg_ibfk_1` FOREIGN KEY (`dmsg_gid`) REFERENCES `erhuo_dynamic` (`dynamic_id`) ON DELETE CASCADE;

--
-- 限制表 `erhuo_gicon`
--
ALTER TABLE `erhuo_gicon`
  ADD CONSTRAINT `erhuo_gicon_ibfk_1` FOREIGN KEY (`gIcon_gid`) REFERENCES `erhuo_goods` (`goods_id`) ON DELETE CASCADE;

--
-- 限制表 `erhuo_goods`
--
ALTER TABLE `erhuo_goods`
  ADD CONSTRAINT `erhuo_goods_ibfk_1` FOREIGN KEY (`goods_cid`) REFERENCES `erhuo_gclassify` (`gclassify_id`),
  ADD CONSTRAINT `erhuo_goods_ibfk_2` FOREIGN KEY (`goods_uid`) REFERENCES `erhuo_user` (`user_id`);

--
-- 限制表 `erhuo_goodsrship`
--
ALTER TABLE `erhuo_goodsrship`
  ADD CONSTRAINT `erhuo_goodsrship_ibfk_1` FOREIGN KEY (`fans_id`) REFERENCES `erhuo_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `erhuo_goodsrship_ibfk_2` FOREIGN KEY (`followers_id`) REFERENCES `erhuo_goods` (`goods_id`) ON DELETE CASCADE;

--
-- 限制表 `erhuo_usearch`
--
ALTER TABLE `erhuo_usearch`
  ADD CONSTRAINT `erhuo_usearch_ibfk_1` FOREIGN KEY (`usearch_uid`) REFERENCES `erhuo_user` (`user_id`) ON DELETE CASCADE;

--
-- 限制表 `erhuo_userrship`
--
ALTER TABLE `erhuo_userrship`
  ADD CONSTRAINT `erhuo_userrship_ibfk_1` FOREIGN KEY (`fans_id`) REFERENCES `erhuo_user` (`user_id`),
  ADD CONSTRAINT `erhuo_userrship_ibfk_2` FOREIGN KEY (`followers_id`) REFERENCES `erhuo_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
