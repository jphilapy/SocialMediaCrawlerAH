-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 03:31 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crawlerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `savedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`name`, `count`, `id`, `savedtime`) VALUES
('edouardphilippe', 2601, 2267, '2018-12-04 09:05:51'),
('edouardphilippepremierministre', 17, 2269, '2018-12-04 09:05:51'),
('edouardphilippemyfriend', 2, 2270, '2018-12-04 09:05:51'),
('edouardphilippepm', 4, 2271, '2018-12-04 09:05:51'),
('edouardphilippeincapable', 2, 2273, '2018-12-04 09:05:51'),
('edouardphilippestyle', 2, 2274, '2018-12-04 09:05:51'),
('edouardphilippe??', 0, 2275, '2018-12-04 09:05:51'),
('edouardphilippemott', 1, 2276, '2018-12-04 09:05:51'),
('edouardphilippe2015', 0, 2277, '2018-12-04 09:05:51'),
('edouardphilippe2022', 1, 2278, '2018-12-04 09:05:51'),
('edouardphilippeencaledonie', 0, 2279, '2018-12-04 09:05:51'),
('edouardphilippelookalike', 0, 2280, '2018-12-04 09:05:51'),
('edouardphilippe2', 1, 2281, '2018-12-04 09:05:51'),
('edouardphilippeestpartout', 0, 2282, '2018-12-04 09:05:51'),
('edouardphilippeauportugal', 1, 2283, '2018-12-04 09:05:51'),
('edouardphilippedansmondos', 1, 2284, '2018-12-04 09:05:51'),
('edouardphilippetypeofshit', 0, 2285, '2018-12-04 09:05:51'),
('edouardphilippedici2ans', 1, 2286, '2018-12-04 09:05:51'),
('edouardphilippeofficiel', 1, 2287, '2018-12-04 09:05:51'),
('edouardphilippe????', 0, 2288, '2018-12-04 09:05:51'),
('edouardphilippetesou', 1, 2289, '2018-12-04 09:05:51'),
('edouardphilippeatord', 1, 2290, '2018-12-04 09:05:51'),
('edouardphilippeaubdr', 0, 2291, '2018-12-04 09:05:51'),
('edouardphilippecoucheavecbrigitte', 1, 2292, '2018-12-04 09:05:51'),
('edouardphilippe????????', 1, 2293, '2018-12-04 09:05:51'),
('edouardphilippeattentionatoi', 1, 2294, '2018-12-04 09:05:51'),
('edouardphilippeiswatchingyou', 0, 2295, '2018-12-04 09:05:51'),
('edouardphilippeetaitavecnous', 1, 2296, '2018-12-04 09:05:51'),
('edouardphilippeforever', 1, 2297, '2018-12-04 09:05:51'),
('edouardphilippe????????????', 1, 2298, '2018-12-04 09:05:51'),
('edouardphilippequestcetufousaurubanbleu', 1, 2299, '2018-12-04 09:05:51'),
('edouardphilippeoff', 0, 2300, '2018-12-04 09:05:51'),
('edouardphilippepm7', 0, 2301, '2018-12-04 09:05:51'),
('tuesdaythoughts', 443680, 2801, '2018-12-04 09:08:32'),
('tuesdaythoughtsfromteddy', 25, 2804, '2018-12-04 09:08:32'),
('tuesdaythoughtsandprayers', 7, 2809, '2018-12-04 09:08:32'),
('tuesdaythoughts?', 17, 2816, '2018-12-04 09:08:32'),
('tuesdaythoughtswithkristi', 19, 2819, '2018-12-04 09:08:32'),
('tuesdaythoughts??goodmorning', 6, 2829, '2018-12-04 09:08:32'),
('tuesdaythoughtsforthirty', 0, 2830, '2018-12-04 09:08:32'),
('tuesdaythoughts???????', 6, 2833, '2018-12-04 09:08:32'),
('tuesdaythoughtsbytara', 14, 2836, '2018-12-04 09:08:32'),
('tuesday????????', 9, 2841, '2018-12-04 09:08:32'),
('tuesdaythoughtstoponder', 3, 2842, '2018-12-04 09:08:32'),
('tuesdaythoughtsandfeels', 2, 2843, '2018-12-04 09:08:32'),
('tuesdaythoughts????', 0, 2844, '2018-12-04 09:08:32'),
('tuesdaythoughts??', 1, 2849, '2018-12-04 09:08:32'),
('edge', 1687089, 3406, '2018-12-04 09:49:41'),
('edgesonfleek', 132127, 3407, '2018-12-04 09:49:41'),
('edges', 261853, 3408, '2018-12-04 09:49:41'),
('edgeymemes', 69682, 3409, '2018-12-04 09:49:41'),
('edgeslaid', 38046, 3410, '2018-12-04 09:49:41'),
('newedge', 243408, 3411, '2018-12-04 09:49:41'),
('liveedgefurniture', 37130, 3412, '2018-12-04 09:49:41'),
('liveedgetable', 62101, 3413, '2018-12-04 09:49:41'),
('edgey', 68120, 3414, '2018-12-04 09:49:41'),
('liveedge', 307697, 3415, '2018-12-04 09:49:41'),
('edgecontrol', 90384, 3416, '2018-12-04 09:49:41'),
('jaggededge', 81973, 3417, '2018-12-04 09:49:41'),
('s7edge', 590065, 3418, '2018-12-04 09:49:41'),
('teamedge', 109363, 3419, '2018-12-04 09:49:41'),
('s6edge', 212341, 3420, '2018-12-04 09:49:41'),
('theedge', 261525, 3421, '2018-12-04 09:49:41'),
('edgewood', 112122, 3422, '2018-12-04 09:49:41'),
('edgeup', 95037, 3423, '2018-12-04 09:49:41'),
('straightedge', 668846, 3424, '2018-12-04 09:49:41'),
('edgewater', 264752, 3425, '2018-12-04 09:49:41'),
('humanedge', 986489, 3426, '2018-12-04 09:49:41'),
('samsunggalaxys7edge', 122470, 3427, '2018-12-04 09:49:41'),
('edgedweapons', 9165, 3428, '2018-12-04 09:49:41'),
('edgelord', 156636, 3429, '2018-12-04 09:49:41'),
('samsungs6edge', 142757, 3430, '2018-12-04 09:49:41'),
('edgeymeme', 11272, 3431, '2018-12-04 09:49:41'),
('edgein', 29195, 3432, '2018-12-04 09:49:41'),
('galaxys7edge', 314722, 3433, '2018-12-04 09:49:41'),
('newedgemustangs', 93976, 3434, '2018-12-04 09:49:41'),
('samsungs7edge', 373243, 3435, '2018-12-04 09:49:41'),
('edgeyourlook', 5688, 3436, '2018-12-04 09:49:41'),
('edgememes', 18669, 3437, '2018-12-04 09:49:41'),
('edgeofseventeen', 20308, 3438, '2018-12-04 09:49:41'),
('edgeof17', 9904, 3439, '2018-12-04 09:49:41'),
('edgefield', 35200, 3440, '2018-12-04 09:49:41'),
('edger', 7081, 3441, '2018-12-04 09:49:41'),
('edgeandchristian', 6897, 3442, '2018-12-04 09:49:41'),
('s7edgephotography', 100920, 3443, '2018-12-04 09:49:41'),
('edgex', 7077, 3444, '2018-12-04 09:49:41'),
('edgefitness', 19305, 3445, '2018-12-04 09:49:41'),
('razorsedge', 260174, 3446, '2018-12-04 09:49:41'),
('edgebeauty', 6276, 3447, '2018-12-04 09:49:41'),
('edgewalk', 18474, 3448, '2018-12-04 09:49:41'),
('edgetamer', 8504, 3449, '2018-12-04 09:49:41'),
('edgepainting', 8838, 3450, '2018-12-04 09:49:41'),
('edgeprogear', 5393, 3451, '2018-12-04 09:49:41'),
('edgeofwinter', 82670, 3452, '2018-12-04 09:49:41'),
('edgemodels', 11600, 3453, '2018-12-04 09:49:41'),
('alderleyedge', 97556, 3454, '2018-12-04 09:49:41'),
('slate', 275598, 3733, '2018-12-04 10:09:58'),
('slatedigital', 40039, 3734, '2018-12-04 10:09:58'),
('slater', 51343, 3735, '2018-12-04 10:09:58'),
('slatepencils', 2095, 3736, '2018-12-04 10:09:58'),
('slateroof', 9658, 3737, '2018-12-04 10:09:58'),
('slaters', 20688, 3738, '2018-12-04 10:09:58'),
('slates', 8307, 3739, '2018-12-04 10:09:58'),
('slateandtell', 2744, 3740, '2018-12-04 10:09:58'),
('slatepencil', 1451, 3741, '2018-12-04 10:09:58'),
('slated', 7162, 3742, '2018-12-04 10:09:58'),
('slatesforsarah', 4062, 3743, '2018-12-04 10:09:58'),
('slateplate', 3518, 3744, '2018-12-04 10:09:58'),
('kellyslater', 61799, 3745, '2018-12-04 10:09:58'),
('christianslater', 55272, 3746, '2018-12-04 10:09:58'),
('slatenyc', 8377, 3747, '2018-12-04 10:09:58'),
('slatefloor', 1924, 3748, '2018-12-04 10:09:58'),
('slateraven', 1807, 3749, '2018-12-04 10:09:58'),
('slatelite', 2121, 3750, '2018-12-04 10:09:58'),
('slategrey', 17666, 3751, '2018-12-04 10:09:58'),
('slateny', 4603, 3752, '2018-12-04 10:09:58'),
('slatetiles', 1652, 3753, '2018-12-04 10:09:58'),
('slateglass', 1933, 3754, '2018-12-04 10:09:58'),
('slateinteriors', 5161, 3755, '2018-12-04 10:09:58'),
('slatestone', 1785, 3756, '2018-12-04 10:09:58'),
('slaterdesigns', 5809, 3757, '2018-12-04 10:09:58'),
('slatenight', 6903, 3758, '2018-12-04 10:09:58'),
('slatemerle', 3162, 3759, '2018-12-04 10:09:58'),
('slateblue', 5946, 3760, '2018-12-04 10:09:58'),
('slatecafe', 1585, 3761, '2018-12-04 10:09:58'),
('slatevms', 1479, 3762, '2018-12-04 10:09:58'),
('slateroofing', 1588, 3763, '2018-12-04 10:09:58'),
('emmaslater', 21733, 3764, '2018-12-04 10:09:58'),
('cleanslate', 110686, 3765, '2018-12-04 10:09:58'),
('slategray', 3228, 3766, '2018-12-04 10:09:58'),
('slatetile', 2442, 3767, '2018-12-04 10:09:58'),
('slatedireland', 1326, 3768, '2018-12-04 10:09:58'),
('slatemine', 4214, 3769, '2018-12-04 10:09:58'),
('slateart', 2732, 3770, '2018-12-04 10:09:58'),
('slateboarding', 1396, 3771, '2018-12-04 10:09:58'),
('slateboard', 2840, 3772, '2018-12-04 10:09:58'),
('slatecoffee', 2890, 3773, '2018-12-04 10:09:58'),
('slatecoffeeroasters', 1514, 3774, '2018-12-04 10:09:58'),
('slatequarry', 3118, 3775, '2018-12-04 10:09:58'),
('slateman', 1849, 3776, '2018-12-04 10:09:58'),
('slaters5050', 29502, 3777, '2018-12-04 10:09:58'),
('slatecalls', 1480, 3778, '2018-12-04 10:09:58'),
('slatepainting', 1439, 3779, '2018-12-04 10:09:58'),
('slatebelt', 1699, 3780, '2018-12-04 10:09:58'),
('28dayslater', 32576, 3781, '2018-12-04 10:09:58'),
('urbanmeyer', 16331, 3782, '2018-12-04 10:09:59'),
('urbanmeyerknows', 353, 3783, '2018-12-04 10:09:59'),
('urbanmeyers', 190, 3784, '2018-12-04 10:09:59'),
('urbanmeyersucks', 23, 3785, '2018-12-04 10:09:59'),
('urbanmeyerforpresident', 159, 3786, '2018-12-04 10:09:59'),
('urbanmeyerera', 15, 3787, '2018-12-04 10:09:59'),
('urbanmeyernation', 15, 3788, '2018-12-04 10:09:59'),
('urbanmeyerismydad', 2, 3789, '2018-12-04 10:09:59'),
('urbanmeyerknew', 7, 3790, '2018-12-04 10:09:59'),
('urbanmeyerwearscrocs', 8, 3791, '2018-12-04 10:09:59'),
('urbanmeyerisgod', 12, 3792, '2018-12-04 10:09:59'),
('urbanmeyerisbae', 8, 3793, '2018-12-04 10:09:59'),
('urbanmeyerweiner', 2, 3794, '2018-12-04 10:09:59'),
('urbanmeyerquotes', 3, 3795, '2018-12-04 10:09:59'),
('urbanmeyerisawiener', 8, 3796, '2018-12-04 10:09:59'),
('urbanmeyerisadilf', 1, 3797, '2018-12-04 10:09:59'),
('urbanmeyerrocks', 3, 3798, '2018-12-04 10:09:59'),
('urbanmeyermarryme', 2, 3799, '2018-12-04 10:09:59'),
('urbanmeyersabitch', 2, 3800, '2018-12-04 10:09:59'),
('urbanmeyerlegend', 0, 3801, '2018-12-04 10:09:59'),
('urbanmeyerfan', 6, 3802, '2018-12-04 10:09:59'),
('urbanmeyerismyhero', 3, 3803, '2018-12-04 10:09:59'),
('urbanmeyerphotobomb', 1, 3804, '2018-12-04 10:09:59'),
('urbanmeyerapprovesthismessage', 3, 3805, '2018-12-04 10:09:59'),
('urbanmeyerisabitch', 3, 3806, '2018-12-04 10:09:59'),
('urbanmeyer4president', 4, 3807, '2018-12-04 10:09:59'),
('urbanmeyeristheman', 6, 3808, '2018-12-04 10:09:59'),
('urbanmeyerlove', 1, 3809, '2018-12-04 10:09:59'),
('urbanmeyerishot', 4, 3810, '2018-12-04 10:09:59'),
('urbanmeyerpoopsatparties', 5, 3811, '2018-12-04 10:09:59'),
('urbanmeyerwiener', 2, 3812, '2018-12-04 10:09:59'),
('urbanmeyerkilledharambe', 4, 3813, '2018-12-04 10:09:59'),
('urbanmeyerway', 5, 3814, '2018-12-04 10:09:59'),
('urbanmeyerswag', 1, 3815, '2018-12-04 10:09:59'),
('urbanmeyer2016', 1, 3816, '2018-12-04 10:09:59'),
('urbanmeyercheats', 2, 3817, '2018-12-04 10:09:59'),
('urbanmeyersitswhenhepees', 4, 3818, '2018-12-04 10:09:59'),
('urbanmeyersera', 1, 3819, '2018-12-04 10:09:59'),
('urbanmeyercoachoftheyear', 4, 3820, '2018-12-04 10:09:59'),
('urbanmeyerhater', 2, 3821, '2018-12-04 10:09:59'),
('urbanmeyerstyle', 2, 3822, '2018-12-04 10:09:59'),
('urbanmeyerwho', 2, 3823, '2018-12-04 10:09:59'),
('urbanmeyerfrompresident', 3, 3824, '2018-12-04 10:09:59'),
('urbanmeyerisaweiner', 8, 3825, '2018-12-04 10:09:59'),
('urbanmeyerrules', 1, 3826, '2018-12-04 10:09:59'),
('urbanmeyerwearscargoshorts', 1, 3827, '2018-12-04 10:09:59'),
('urbanmeyeristheantichrist', 1, 3828, '2018-12-04 10:09:59'),
('urbanmeyermanns', 0, 3829, '2018-12-04 10:09:59'),
('urbanmeyereffect', 0, 3830, '2018-12-04 10:09:59'),
('article50', 5736, 3831, '2018-12-04 10:10:01'),
('article50band', 31, 3832, '2018-12-04 10:10:01'),
('article50movie', 0, 3833, '2018-12-04 10:10:01'),
('article50triggered', 15, 3834, '2018-12-04 10:10:01'),
('article50day', 26, 3835, '2018-12-04 10:10:01'),
('article50challenge', 21, 3836, '2018-12-04 10:10:01'),
('article50now', 11, 3837, '2018-12-04 10:10:01'),
('article50blues', 4, 3838, '2018-12-04 10:10:01'),
('article50farewelltour', 20, 3839, '2018-12-04 10:10:01'),
('article50shadesofstupid', 2, 3840, '2018-12-04 10:10:01'),
('article50mustneverhappen', 4, 3841, '2018-12-04 10:10:01'),
('article50bill', 2, 3843, '2018-12-04 10:10:01'),
('article50special', 0, 3844, '2018-12-04 10:10:01'),
('article50trigger', 4, 3845, '2018-12-04 10:10:01'),
('article5000', 5, 3846, '2018-12-04 10:10:01'),
('article50teu', 4, 3847, '2018-12-04 10:10:01'),
('article50royalassent', 3, 3848, '2018-12-04 10:10:01'),
('article50shadesofmay', 0, 3849, '2018-12-04 10:10:01'),
('article50signed', 1, 3850, '2018-12-04 10:10:01'),
('article50eve', 3, 3851, '2018-12-04 10:10:01'),
('article50invoked', 0, 3852, '2018-12-04 10:10:01'),
('article50shadesofgrey', 1, 3853, '2018-12-04 10:10:01'),
('article50tfeu', 0, 3854, '2018-12-04 10:10:01'),
('article50????????????', 2, 3855, '2018-12-04 10:10:01'),
('article50sucks', 2, 3856, '2018-12-04 10:10:01'),
('article501', 0, 3857, '2018-12-04 10:10:01'),
('article50u', 1, 3858, '2018-12-04 10:10:01'),
('article50z', 1, 3859, '2018-12-04 10:10:01'),
('article50who', 0, 3860, '2018-12-04 10:10:01'),
('article50??', 0, 3861, '2018-12-04 10:10:01'),
('article501c3', 1, 3862, '2018-12-04 10:10:01'),
('article50bills', 1, 3863, '2018-12-04 10:10:01'),
('article50willtaketime', 1, 3864, '2018-12-04 10:10:01'),
('article50paleale', 1, 3865, '2018-12-04 10:10:01'),
('article50helpplease', 1, 3866, '2018-12-04 10:10:01'),
('article50songs', 1, 3867, '2018-12-04 10:10:01'),
('article50hasbeentriggered', 1, 3868, '2018-12-04 10:10:01'),
('article50notinmyname', 0, 3869, '2018-12-04 10:10:01'),
('article50??????', 0, 3870, '2018-12-04 10:10:01'),
('article50canpissoff', 0, 3871, '2018-12-04 10:10:01'),
('article50letter', 0, 3872, '2018-12-04 10:10:01'),
('article50sightseeing', 1, 3873, '2018-12-04 10:10:01'),
('article50bullshit', 0, 3874, '2018-12-04 10:10:01'),
('article50meal', 0, 3875, '2018-12-04 10:10:01'),
('article50tour', 0, 3876, '2018-12-04 10:10:01'),
('article50????', 0, 3877, '2018-12-04 10:10:01'),
('article50cangettae', 0, 3878, '2018-12-04 10:10:01'),
('article50nope', 1, 3879, '2018-12-04 10:10:01'),
('wisconsinandmichigan', 0, 3880, '2018-12-04 10:10:01'),
('wisconsinandmichigan2halvesofawhole', 7, 3881, '2018-12-04 10:10:01'),
('wisconsinandmichigancollide', 3, 3882, '2018-12-04 10:10:01'),
('wisconsinandmichiganbuddies', 0, 3883, '2018-12-04 10:10:02'),
('wisconsinandmichiganbesties', 0, 3884, '2018-12-04 10:10:02'),
('wisconsinandmichigantomissouri', 0, 3885, '2018-12-04 10:10:02'),
('wisconsinandmichiganhavefallen', 1, 3886, '2018-12-04 10:10:02'),
('wisconsinandmichiganshame', 1, 3887, '2018-12-04 10:10:02'),
('backtoback', 725216, 3888, '2018-12-04 10:10:02'),
('backtobackweekends', 918, 3889, '2018-12-04 10:10:02'),
('backtobackchamps', 31214, 3890, '2018-12-04 10:10:02'),
('backtobackyogamat', 452, 3891, '2018-12-04 10:10:03'),
('backtobackbends', 102421, 3892, '2018-12-04 10:10:03'),
('backtobacktoblack', 649, 3893, '2018-12-04 10:10:03'),
('backtobackgalleries', 278, 3894, '2018-12-04 10:10:03'),
('backtobacktheatre', 253, 3895, '2018-12-04 10:10:03'),
('backtobackworldwarchamps', 20670, 3896, '2018-12-04 10:10:03'),
('backtobackchamp', 2338, 3897, '2018-12-04 10:10:03'),
('backtobackfoils', 1704, 3898, '2018-12-04 10:10:03'),
('backtobackwins', 2681, 3899, '2018-12-04 10:10:03'),
('backtobacktoback', 20917, 3900, '2018-12-04 10:10:03'),
('backtobackposts', 2003, 3901, '2018-12-04 10:10:03'),
('backtobackshows', 1880, 3902, '2018-12-04 10:10:03'),
('backtobackbabies', 1104, 3903, '2018-12-04 10:10:03'),
('backtobackbaby', 690, 3904, '2018-12-04 10:10:03'),
('backtobackjacks', 366, 3905, '2018-12-04 10:10:03'),
('backtobackclasses', 2074, 3906, '2018-12-04 10:10:03'),
('backtobackchampions', 6911, 3907, '2018-12-04 10:10:03'),
('backtobackyears', 539, 3908, '2018-12-04 10:10:03'),
('backtobackgames', 2201, 3909, '2018-12-04 10:10:03'),
('backtobackmarathons', 470, 3910, '2018-12-04 10:10:03'),
('backtobackhits', 455, 3911, '2018-12-04 10:10:03'),
('backtobackwork', 364, 3912, '2018-12-04 10:10:03'),
('backtobackruns', 601, 3913, '2018-12-04 10:10:03'),
('backtobackbirthdays', 3961, 3914, '2018-12-04 10:10:03'),
('backtobackchampion', 2883, 3915, '2018-12-04 10:10:03'),
('backtobackrecords', 317, 3916, '2018-12-04 10:10:03'),
('backtobackpregnancies', 899, 3917, '2018-12-04 10:10:03'),
('backtobackworldchamps', 1956, 3918, '2018-12-04 10:10:03'),
('backtobacktobacktoback', 3916, 3919, '2018-12-04 10:10:03'),
('backtobacks', 1851, 3920, '2018-12-04 10:10:03'),
('backtobackchamps??', 551, 3921, '2018-12-04 10:10:03'),
('backtobacktrips', 829, 3922, '2018-12-04 10:10:03'),
('backtobackbdays', 816, 3923, '2018-12-04 10:10:03'),
('backtobackraces', 615, 3924, '2018-12-04 10:10:03'),
('backtobackmvp', 2268, 3925, '2018-12-04 10:10:03'),
('backtobackparty', 382, 3926, '2018-12-04 10:10:03'),
('backtobackevent', 332, 3927, '2018-12-04 10:10:03'),
('backtobackparties', 1056, 3928, '2018-12-04 10:10:03'),
('backtobackclass', 275, 3929, '2018-12-04 10:10:03'),
('backtobackexams', 318, 3930, '2018-12-04 10:10:03'),
('backtobackselfies', 819, 3931, '2018-12-04 10:10:03'),
('backtobackwinners', 566, 3932, '2018-12-04 10:10:03'),
('backtobackpacking', 498, 3933, '2018-12-04 10:10:03'),
('backtobackevents', 1512, 3934, '2018-12-04 10:10:03'),
('backtobackchampionships', 737, 3935, '2018-12-04 10:10:03'),
('backtobackmovies', 1196, 3936, '2018-12-04 10:10:03'),
('hezbollah', 52670, 3937, '2018-12-04 10:10:05'),
('hezbollah_lovers', 1550, 3938, '2018-12-04 10:10:05'),
('hezbollahiran', 370, 3939, '2018-12-04 10:10:05'),
('hezbollah_galehdar', 135, 3940, '2018-12-04 10:10:05'),
('hezbollahcrimes', 118, 3941, '2018-12-04 10:10:05'),
('hezbollahlebanon', 2, 3942, '2018-12-04 10:10:05'),
('hezbollah_karaj', 0, 3943, '2018-12-04 10:10:05'),
('hezbollahcyber', 182, 3944, '2018-12-04 10:10:05'),
('hezbollah_lebanon', 19, 3945, '2018-12-04 10:10:05'),
('hezbollahvenezuela', 4, 3946, '2018-12-04 10:10:05'),
('hezbollahlovers', 3, 3947, '2018-12-04 10:10:05'),
('hezbollahenvenezuela', 3, 3948, '2018-12-04 10:10:05'),
('hezbollahy', 17, 3949, '2018-12-04 10:10:05'),
('hezbollah_force', 0, 3950, '2018-12-04 10:10:05'),
('hezbollahpage', 0, 3951, '2018-12-04 10:10:05'),
('hezbollahsoliders', 1, 3952, '2018-12-04 10:10:05'),
('hezbollah_leader', 4, 3953, '2018-12-04 10:10:05'),
('hezbollaharmy', 4, 3954, '2018-12-04 10:10:05'),
('hezbollahwarcrimes', 26, 3955, '2018-12-04 10:10:05'),
('hezbollah_4life', 0, 3956, '2018-12-04 10:10:05'),
('hezbollahcyber313', 2, 3957, '2018-12-04 10:10:05'),
('hezbollah1', 0, 3958, '2018-12-04 10:10:05'),
('hezbollahmuseum', 14, 3959, '2018-12-04 10:10:05'),
('hezbollah_cyber', 18, 3960, '2018-12-04 10:10:05'),
('hezbollahi', 3, 3961, '2018-12-04 10:10:05'),
('hezbollah_iran', 2, 3962, '2018-12-04 10:10:05'),
('hezbollahcrew', 1, 3964, '2018-12-04 10:10:05'),
('hezbollahgang', 0, 3965, '2018-12-04 10:10:05'),
('hezbollahland', 4, 3966, '2018-12-04 10:10:05'),
('hezbollahrealmen', 0, 3967, '2018-12-04 10:10:05'),
('hezbollahball', 0, 3968, '2018-12-04 10:10:05'),
('hezbollahterrorism', 0, 3969, '2018-12-04 10:10:05'),
('hezbollahpride', 0, 3970, '2018-12-04 10:10:05'),
('hezbollah_14', 0, 3971, '2018-12-04 10:10:05'),
('hezbollah_terrorists', 10, 3972, '2018-12-04 10:10:05'),
('hezbollahteam', 0, 3973, '2018-12-04 10:10:05'),
('hezbollah_is_victory', 9, 3974, '2018-12-04 10:10:05'),
('hezbollahmartyr', 7, 3975, '2018-12-04 10:10:05'),
('hezbollah_33days_war', 5, 3976, '2018-12-04 10:10:05'),
('hezbollahs', 2, 3977, '2018-12-04 10:10:05'),
('hezbollah_', 2, 3978, '2018-12-04 10:10:05'),
('hezbollahisaterroristorganization2', 0, 3979, '2018-12-04 10:10:05'),
('hezbollahprideofmuslims', 7, 3980, '2018-12-04 10:10:05'),
('hezbollah??', 1, 3981, '2018-12-04 10:10:05'),
('hezbollahisterrorism', 6, 3982, '2018-12-04 10:10:05'),
('hezbollahflag', 0, 3983, '2018-12-04 10:10:05'),
('hezbollahir', 6, 3984, '2018-12-04 10:10:05'),
('hezbollah?', 0, 3985, '2018-12-04 10:10:05'),
('michaelflynn', 6840, 3986, '2018-12-04 10:10:06'),
('michaelflynnceramics', 9, 3987, '2018-12-04 10:10:06'),
('michaelflynnjr', 10, 3988, '2018-12-04 10:10:06'),
('flynnmichael', 705, 3989, '2018-12-04 10:10:06'),
('michaelflynnmentor', 2, 3990, '2018-12-04 10:10:06'),
('michaelflynnart', 19, 3991, '2018-12-04 10:10:06'),
('michaelflynnresigns', 31, 3992, '2018-12-04 10:10:06'),
('michaelflynnn', 18, 3993, '2018-12-04 10:10:06'),
('michaelflynnlies', 22, 3994, '2018-12-04 10:10:06'),
('michaelflynnforvp', 0, 3995, '2018-12-04 10:10:06'),
('michaelflynnstudios', 9, 3996, '2018-12-04 10:10:06'),
('michaelflynnlied', 7, 3997, '2018-12-04 10:10:06'),
('michaelflynne', 0, 3998, '2018-12-04 10:10:06'),
('flynnmichaelparker', 115, 3999, '2018-12-04 10:10:06'),
('michaelflynnandrussia', 3, 4000, '2018-12-04 10:10:06'),
('michaelflynnisastud', 0, 4001, '2018-12-04 10:10:06'),
('michaelflynnmusic', 2, 4002, '2018-12-04 10:10:06'),
('michaelflynnguilty', 3, 4003, '2018-12-04 10:10:06'),
('michaelflynnisanidiot', 0, 4004, '2018-12-04 10:10:06'),
('michaelflynnphotography', 2, 4005, '2018-12-04 10:10:06'),
('michaelflynnmcdonald', 0, 4006, '2018-12-04 10:10:06'),
('michaelflynnwhosthat', 2, 4007, '2018-12-04 10:10:07'),
('michaelflynnjrtweet', 1, 4008, '2018-12-04 10:10:07'),
('michaelflynnmeme', 1, 4009, '2018-12-04 10:10:07'),
('michaelflynndidnotactalone', 1, 4011, '2018-12-04 10:10:07'),
('michaelflynnisgoingdown', 1, 4012, '2018-12-04 10:10:07'),
('michaelflynnpleasguilty', 1, 4013, '2018-12-04 10:10:07'),
('michaelflynnsamberarmy', 1, 4014, '2018-12-04 10:10:07'),
('michaelflynnrenderings', 2, 4015, '2018-12-04 10:10:07'),
('michaelflynnpleadsguilty', 0, 4016, '2018-12-04 10:10:07'),
('michaelflynnturning????', 0, 4017, '2018-12-04 10:10:07'),
('michaelflynnguiltylockhimup', 0, 4018, '2018-12-04 10:10:07'),
('michaelflynnisacircusclown', 0, 4019, '2018-12-04 10:10:07'),
('michaelflynnfdup', 1, 4020, '2018-12-04 10:10:07'),
('michaelflynn??', 0, 4021, '2018-12-04 10:10:07'),
('michaelflynnflip', 1, 4022, '2018-12-04 10:10:07'),
('michaelflynnagyn', 0, 4023, '2018-12-04 10:10:07'),
('michaelflynnigans', 1, 4024, '2018-12-04 10:10:07'),
('michaelflynnsbday', 0, 4025, '2018-12-04 10:10:07'),
('michaelflynnbelike', 1, 4026, '2018-12-04 10:10:07'),
('michaelflynnisarat', 0, 4027, '2018-12-04 10:10:07'),
('michaelflynnresignation', 1, 4028, '2018-12-04 10:10:07'),
('michaelflynnx2', 1, 4029, '2018-12-04 10:10:07'),
('michaelflynnisabeast', 0, 4030, '2018-12-04 10:10:07'),
('michaelflynnpulleddownthesheets', 0, 4031, '2018-12-04 10:10:07'),
('michaelflynnelliottphotography', 0, 4032, '2018-12-04 10:10:07'),
('michaelflynnmustbeinvestigated', 1, 4033, '2018-12-04 10:10:07'),
('michaelflynnsresignation', 1, 4034, '2018-12-04 10:10:07'),
('quora', 14794, 4035, '2018-12-04 10:10:08'),
('quoran', 2808, 4036, '2018-12-04 10:10:08'),
('quoradaily', 593, 4037, '2018-12-04 10:10:08'),
('quoragram', 587, 4038, '2018-12-04 10:10:08'),
('quoragyan', 489, 4039, '2018-12-04 10:10:08'),
('quoramantic', 331, 4040, '2018-12-04 10:10:08'),
('quora??', 367, 4041, '2018-12-04 10:10:08'),
('quoraworldmeetup2018', 127, 4042, '2018-12-04 10:10:08'),
('quorafordailylife', 432, 4043, '2018-12-04 10:10:08'),
('quoragyaan', 445, 4044, '2018-12-04 10:10:08'),
('quoralukaszlaniecki', 510, 4045, '2018-12-04 10:10:08'),
('quoraworldmeetup2017', 176, 4046, '2018-12-04 10:10:08'),
('lifeatquora', 219, 4047, '2018-12-04 10:10:08'),
('bestofquoraforu', 408, 4048, '2018-12-04 10:10:08'),
('quorameetup', 122, 4049, '2018-12-04 10:10:08'),
('quoratio', 119, 4050, '2018-12-04 10:10:08'),
('quoradict', 150, 4051, '2018-12-04 10:10:08'),
('quorans', 206, 4052, '2018-12-04 10:10:08'),
('bestofquora', 293, 4053, '2018-12-04 10:10:08'),
('quoratics', 161, 4054, '2018-12-04 10:10:08'),
('quorablogging', 207, 4055, '2018-12-04 10:10:08'),
('quoralove', 141, 4056, '2018-12-04 10:10:08'),
('naquora', 137, 4057, '2018-12-04 10:10:08'),
('sexquora', 134, 4058, '2018-12-04 10:10:08'),
('quorated', 147, 4059, '2018-12-04 10:10:08'),
('erictrump', 16893, 4060, '2018-12-04 10:10:09'),
('erictrumpfoundation', 742, 4061, '2018-12-04 10:10:09'),
('fuckerictrump', 140, 4062, '2018-12-04 10:10:09'),
('erictrumpjr', 6, 4063, '2018-12-04 10:10:09'),
('erictrumpfdn', 56, 4064, '2018-12-04 10:10:09'),
('drafterictrump', 278, 4065, '2018-12-04 10:10:09'),
('erictrumpasy', 12, 4066, '2018-12-04 10:10:09'),
('erictrumpisagiantdouche', 16, 4067, '2018-12-04 10:10:09'),
('erictrumptheshittyvampire', 7, 4068, '2018-12-04 10:10:09'),
('erictrumpsucks', 9, 4069, '2018-12-04 10:10:09'),
('erictrumps', 2, 4070, '2018-12-04 10:10:09'),
('erictrumpblows', 2, 4071, '2018-12-04 10:10:09'),
('erictrumpisavampire', 3, 4072, '2018-12-04 10:10:09'),
('erictrumpisagoblin', 3, 4073, '2018-12-04 10:10:09'),
('erictrumpscancer', 1, 4074, '2018-12-04 10:10:09'),
('erictrumpman', 2, 4075, '2018-12-04 10:10:09'),
('erictrumpscaresme', 1, 4076, '2018-12-04 10:10:09'),
('erictrumpnepotism', 5, 4077, '2018-12-04 10:10:09'),
('erictrumpiscomplicit', 3, 4078, '2018-12-04 10:10:09'),
('erictrumpisanidiot', 2, 4079, '2018-12-04 10:10:09'),
('erictrumpislisk', 1, 4080, '2018-12-04 10:10:09'),
('erictrumpisterrible', 3, 4081, '2018-12-04 10:10:09'),
('erictrumpmemes', 2, 4082, '2018-12-04 10:10:09'),
('erictrumphaircut', 0, 4083, '2018-12-04 10:10:09'),
('erictrumpfanclub', 2, 4084, '2018-12-04 10:10:09'),
('erictrumpisgreat', 2, 4085, '2018-12-04 10:10:09'),
('erictrumpisneedy', 0, 4086, '2018-12-04 10:10:09'),
('erictrumpserialkiller', 3, 4087, '2018-12-04 10:10:09'),
('erictrumpgala', 0, 4088, '2018-12-04 10:10:09'),
('erictrump2020', 2, 4089, '2018-12-04 10:10:09'),
('erictrumphair', 0, 4090, '2018-12-04 10:10:09'),
('erictrump??', 0, 4091, '2018-12-04 10:10:09'),
('erictrumpquotes', 1, 4092, '2018-12-04 10:10:09'),
('erictrumpwinery', 1, 4093, '2018-12-04 10:10:09'),
('erictrumpsmile', 0, 4094, '2018-12-04 10:10:09'),
('erictrumpisanasshole', 2, 4095, '2018-12-04 10:10:09'),
('erictrumplookalike', 2, 4096, '2018-12-04 10:10:09'),
('erictrumpistheworst', 2, 4097, '2018-12-04 10:10:09'),
('erictrumpt', 0, 4098, '2018-12-04 10:10:09'),
('erictrumpwedding', 1, 4099, '2018-12-04 10:10:09'),
('erictrumpet', 0, 4100, '2018-12-04 10:10:09'),
('erictrumpsan', 0, 4101, '2018-12-04 10:10:09'),
('erictrumpjr2024', 0, 4102, '2018-12-04 10:10:09'),
('erictrumpinpanama', 1, 4103, '2018-12-04 10:10:09'),
('erictrumpgotpunked', 1, 4104, '2018-12-04 10:10:09'),
('erictrumpvisagedunrat', 0, 4105, '2018-12-04 10:10:09'),
('erictrumptweet', 1, 4106, '2018-12-04 10:10:09'),
('erictrumpgolfinvitational', 0, 4107, '2018-12-04 10:10:09'),
('erictrumptho', 1, 4108, '2018-12-04 10:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `token` varchar(300) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`token`, `id`) VALUES
('4417774710.a32e231.ae3c86cceeee4f72b026de289741a3a1', 1),
('4417774710.a32e231.ae3c86cceeee4f72b026de289741a3a2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `topTenTwitterTags`
--

CREATE TABLE IF NOT EXISTS `topTenTwitterTags` (
  `name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `savedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topTenTwitterTags`
--

INSERT INTO `topTenTwitterTags` (`name`, `count`, `id`, `savedtime`) VALUES
('''Friends''', 1088850, 271, '2018-12-04 09:51:12'),
('Edge', 56284, 273, '2018-12-04 09:51:12'),
('PresidentGeorgeH.W.Bush', 86580, 281, '2018-12-04 10:09:24'),
('Slate', 53585, 282, '2018-12-04 10:09:25'),
('UrbanMeyer', 52610, 283, '2018-12-04 10:09:25'),
('Article50', 44463, 284, '2018-12-04 10:09:25'),
('WisconsinandMichigan', 25401, 285, '2018-12-04 10:09:25'),
('BacktoBack', 24079, 286, '2018-12-04 10:09:25'),
('Hezbollah', 23625, 287, '2018-12-04 10:09:25'),
('MichaelFlynn', 20779, 288, '2018-12-04 10:09:25'),
('Quora', 19742, 289, '2018-12-04 10:09:25'),
('EricTrump', 15120, 290, '2018-12-04 10:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `topTwitterTags`
--

CREATE TABLE IF NOT EXISTS `topTwitterTags` (
  `name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `savedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topTenTwitterTags`
--
ALTER TABLE `topTenTwitterTags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `topTwitterTags`
--
ALTER TABLE `topTwitterTags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4109;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `topTenTwitterTags`
--
ALTER TABLE `topTenTwitterTags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT for table `topTwitterTags`
--
ALTER TABLE `topTwitterTags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
