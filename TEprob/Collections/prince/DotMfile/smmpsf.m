% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 01-Feb-2014 11:38:09
% Model: smmpsf

% Objective
fun = @(x)1.419999*x(241)+71*x(242)+2.44*x(243)+122*x(244)+2.24*x(245)+112*x(246)+2.099999*x(247)+105*x(248)+0.88*x(249)+44*x(250)+1.66*x(251)+83*x(252)+1.759999*x(253)+88*x(254)+1.099999*x(255)+55*x(256)+1.099999*x(257)+55*x(258)+1.94*x(259)+97*x(260)+1.86*x(261)+93*x(262)+1.36*x(263)+68*x(264)+2.54*x(265)+127*x(266)+1.419999*x(267)+71*x(268)+1.48*x(269)+74*x(270)+1.16*x(271)+58*x(272)+1.08*x(273)+54*x(274)+1.339999*x(275)+67*x(276)+2.28*x(277)+114*x(278)+2.86*x(279)+143*x(280)+1.419999*x(281)+71*x(282)+2.44*x(283)+122*x(284)+2.24*x(285)+112*x(286)+2.099999*x(287)+105*x(288)+0.88*x(289)+44*x(290)+1.66*x(291)+83*x(292)+1.759999*x(293)+88*x(294)+1.099999*x(295)+55*x(296)+1.099999*x(297)+55*x(298)+1.94*x(299)+97*x(300)+1.86*x(301)+93*x(302)+1.36*x(303)+68*x(304)+2.54*x(305)+127*x(306)+1.419999*x(307)+71*x(308)+1.48*x(309)+74*x(310)+1.16*x(311)+58*x(312)+1.08*x(313)+54*x(314)+1.339999*x(315)+67*x(316)+2.28*x(317)+114*x(318)+2.86*x(319)+143*x(320)+1.419999*x(321)+71*x(322)+2.44*x(323)+122*x(324)+2.24*x(325)+112*x(326)+2.099999*x(327)+105*x(328)+0.88*x(329)+44*x(330)+1.66*x(331)+83*x(332)+1.759999*x(333)+88*x(334)+1.099999*x(335)+55*x(336)+1.099999*x(337)+55*x(338)+1.94*x(339)+97*x(340)+1.86*x(341)+93*x(342)+1.36*x(343)+68*x(344)+2.54*x(345)+127*x(346)+1.419999*x(347)+71*x(348)+1.48*x(349)+74*x(350)+1.16*x(351)+58*x(352)+1.08*x(353)+54*x(354)+1.339999*x(355)+67*x(356)+2.28*x(357)+114*x(358)+2.86*x(359)+143*x(360)+1.419999*x(361)+71*x(362)+2.44*x(363)+122*x(364)+2.24*x(365)+112*x(366)+2.099999*x(367)+105*x(368)+0.88*x(369)+44*x(370)+1.66*x(371)+83*x(372)+1.759999*x(373)+88*x(374)+1.099999*x(375)+55*x(376)+1.099999*x(377)+55*x(378)+1.94*x(379)+97*x(380)+1.86*x(381)+93*x(382)+1.36*x(383)+68*x(384)+2.54*x(385)+127*x(386)+1.419999*x(387)+71*x(388)+1.48*x(389)+74*x(390)+1.16*x(391)+58*x(392)+1.08*x(393)+54*x(394)+1.339999*x(395)+67*x(396)+2.28*x(397)+114*x(398)+2.86*x(399)+143*x(400)+1.419999*x(401)+71*x(402)+2.44*x(403)+122*x(404)+2.24*x(405)+112*x(406)+2.099999*x(407)+105*x(408)+0.88*x(409)+44*x(410)+1.66*x(411)+83*x(412)+1.759999*x(413)+88*x(414)+1.099999*x(415)+55*x(416)+1.099999*x(417)+55*x(418)+1.94*x(419)+97*x(420)+1.86*x(421)+93*x(422)+1.36*x(423)+68*x(424)+2.54*x(425)+127*x(426)+1.419999*x(427)+71*x(428)+1.48*x(429)+74*x(430)+1.16*x(431)+58*x(432)+1.08*x(433)+54*x(434)+1.339999*x(435)+67*x(436)+2.28*x(437)+114*x(438)+2.86*x(439)+143*x(440)+1.419999*x(441)+71*x(442)+2.44*x(443)+122*x(444)+2.24*x(445)+112*x(446)+2.099999*x(447)+105*x(448)+0.88*x(449)+44*x(450)+1.66*x(451)+83*x(452)+1.759999*x(453)+88*x(454)+1.099999*x(455)+55*x(456)+1.099999*x(457)+55*x(458)+1.94*x(459)+97*x(460)+1.86*x(461)+93*x(462)+1.36*x(463)+68*x(464)+2.54*x(465)+127*x(466)+1.419999*x(467)+71*x(468)+1.48*x(469)+74*x(470)+1.16*x(471)+58*x(472)+1.08*x(473)+54*x(474)+1.339999*x(475)+67*x(476)+2.28*x(477)+114*x(478)+2.86*x(479)+143*x(480)+1.419999*x(481)+71*x(482)+2.44*x(483)+122*x(484)+2.24*x(485)+112*x(486)+2.099999*x(487)+105*x(488)+0.88*x(489)+44*x(490)+1.66*x(491)+83*x(492)+1.759999*x(493)+88*x(494)+1.099999*x(495)+55*x(496)+1.099999*x(497)+55*x(498)+1.94*x(499)+97*x(500)+1.86*x(501)+93*x(502)+1.36*x(503)+68*x(504)+2.54*x(505)+127*x(506)+1.419999*x(507)+71*x(508)+1.48*x(509)+74*x(510)+1.16*x(511)+58*x(512)+1.08*x(513)+54*x(514)+1.339999*x(515)+67*x(516)+2.28*x(517)+114*x(518)+2.86*x(519)+143*x(520)+1.419999*x(521)+71*x(522)+2.44*x(523)+122*x(524)+2.24*x(525)+112*x(526)+2.099999*x(527)+105*x(528)+0.88*x(529)+44*x(530)+1.66*x(531)+83*x(532)+1.759999*x(533)+88*x(534)+1.099999*x(535)+55*x(536)+1.099999*x(537)+55*x(538)+1.94*x(539)+97*x(540)+1.86*x(541)+93*x(542)+1.36*x(543)+68*x(544)+2.54*x(545)+127*x(546)+1.419999*x(547)+71*x(548)+1.48*x(549)+74*x(550)+1.16*x(551)+58*x(552)+1.08*x(553)+54*x(554)+1.339999*x(555)+67*x(556)+2.28*x(557)+114*x(558)+2.86*x(559)+143*x(560)+1.419999*x(561)+71*x(562)+2.44*x(563)+122*x(564)+2.24*x(565)+112*x(566)+2.099999*x(567)+105*x(568)+0.88*x(569)+44*x(570)+1.66*x(571)+83*x(572)+1.759999*x(573)+88*x(574)+1.099999*x(575)+55*x(576)+1.099999*x(577)+55*x(578)+1.94*x(579)+97*x(580)+1.86*x(581)+93*x(582)+1.36*x(583)+68*x(584)+2.54*x(585)+127*x(586)+1.419999*x(587)+71*x(588)+1.48*x(589)+74*x(590)+1.16*x(591)+58*x(592)+1.08*x(593)+54*x(594)+1.339999*x(595)+67*x(596)+2.28*x(597)+114*x(598)+2.86*x(599)+143*x(600)+1.419999*x(601)+71*x(602)+2.44*x(603)+122*x(604)+2.24*x(605)+112*x(606)+2.099999*x(607)+105*x(608)+0.88*x(609)+44*x(610)+1.66*x(611)+83*x(612)+1.759999*x(613)+88*x(614)+1.099999*x(615)+55*x(616)+1.099999*x(617)+55*x(618)+1.94*x(619)+97*x(620)+1.86*x(621)+93*x(622)+1.36*x(623)+68*x(624)+2.54*x(625)+127*x(626)+1.419999*x(627)+71*x(628)+1.48*x(629)+74*x(630)+1.16*x(631)+58*x(632)+1.08*x(633)+54*x(634)+1.339999*x(635)+67*x(636)+2.28*x(637)+114*x(638)+2.86*x(639)+143*x(640)+1.419999*x(641)+71*x(642)+2.44*x(643)+122*x(644)+2.24*x(645)+112*x(646)+2.099999*x(647)+105*x(648)+0.88*x(649)+44*x(650)+1.66*x(651)+83*x(652)+1.759999*x(653)+88*x(654)+1.099999*x(655)+55*x(656)+1.099999*x(657)+55*x(658)+1.94*x(659)+97*x(660)+1.86*x(661)+93*x(662)+1.36*x(663)+68*x(664)+2.54*x(665)+127*x(666)+1.419999*x(667)+71*x(668)+1.48*x(669)+74*x(670)+1.16*x(671)+58*x(672)+1.08*x(673)+54*x(674)+1.339999*x(675)+67*x(676)+2.28*x(677)+114*x(678)+2.86*x(679)+143*x(680)+1.419999*x(681)+71*x(682)+2.44*x(683)+122*x(684)+2.24*x(685)+112*x(686)+2.099999*x(687)+105*x(688)+0.88*x(689)+44*x(690)+1.66*x(691)+83*x(692)+1.759999*x(693)+88*x(694)+1.099999*x(695)+55*x(696)+1.099999*x(697)+55*x(698)+1.94*x(699)+97*x(700)+1.86*x(701)+93*x(702)+1.36*x(703)+68*x(704)+2.54*x(705)+127*x(706)+1.419999*x(707)+71*x(708)+1.48*x(709)+74*x(710)+1.16*x(711)+58*x(712)+1.08*x(713)+54*x(714)+1.339999*x(715)+67*x(716)+2.28*x(717)+114*x(718)+2.86*x(719)+143*x(720);

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[-225*x(1)-116*x(2)-140*x(3)-140*x(4)-245*x(5)-110*x(6)-190*x(7)-205*x(8)-205*x(9)-157*x(10)-157*x(11)-51*x(12)-116*x(13)-258*x(14)-225*x(15)-245*x(16)-210*x(17)-130*x(18)-168*x(19)-168*x(20);
             -225*x(21)-116*x(22)-140*x(23)-140*x(24)-245*x(25)-110*x(26)-190*x(27)-205*x(28)-205*x(29)-157*x(30)-157*x(31)-51*x(32)-116*x(33)-258*x(34)-225*x(35)-245*x(36)-210*x(37)-130*x(38)-168*x(39)-168*x(40);
             -225*x(41)-116*x(42)-140*x(43)-140*x(44)-245*x(45)-110*x(46)-190*x(47)-205*x(48)-205*x(49)-157*x(50)-157*x(51)-51*x(52)-116*x(53)-258*x(54)-225*x(55)-245*x(56)-210*x(57)-130*x(58)-168*x(59)-168*x(60);
             -225*x(61)-116*x(62)-140*x(63)-140*x(64)-245*x(65)-110*x(66)-190*x(67)-205*x(68)-205*x(69)-157*x(70)-157*x(71)-51*x(72)-116*x(73)-258*x(74)-225*x(75)-245*x(76)-210*x(77)-130*x(78)-168*x(79)-168*x(80);
             -225*x(81)-116*x(82)-140*x(83)-140*x(84)-245*x(85)-110*x(86)-190*x(87)-205*x(88)-205*x(89)-157*x(90)-157*x(91)-51*x(92)-116*x(93)-258*x(94)-225*x(95)-245*x(96)-210*x(97)-130*x(98)-168*x(99)-168*x(100);
             -225*x(101)-116*x(102)-140*x(103)-140*x(104)-245*x(105)-110*x(106)-190*x(107)-205*x(108)-205*x(109)-157*x(110)-157*x(111)-51*x(112)-116*x(113)-258*x(114)-225*x(115)-245*x(116)-210*x(117)-130*x(118)-168*x(119)-168*x(120);
             -225*x(121)-116*x(122)-140*x(123)-140*x(124)-245*x(125)-110*x(126)-190*x(127)-205*x(128)-205*x(129)-157*x(130)-157*x(131)-51*x(132)-116*x(133)-258*x(134)-225*x(135)-245*x(136)-210*x(137)-130*x(138)-168*x(139)-168*x(140);
             -225*x(141)-116*x(142)-140*x(143)-140*x(144)-245*x(145)-110*x(146)-190*x(147)-205*x(148)-205*x(149)-157*x(150)-157*x(151)-51*x(152)-116*x(153)-258*x(154)-225*x(155)-245*x(156)-210*x(157)-130*x(158)-168*x(159)-168*x(160);
             -225*x(161)-116*x(162)-140*x(163)-140*x(164)-245*x(165)-110*x(166)-190*x(167)-205*x(168)-205*x(169)-157*x(170)-157*x(171)-51*x(172)-116*x(173)-258*x(174)-225*x(175)-245*x(176)-210*x(177)-130*x(178)-168*x(179)-168*x(180);
             -225*x(181)-116*x(182)-140*x(183)-140*x(184)-245*x(185)-110*x(186)-190*x(187)-205*x(188)-205*x(189)-157*x(190)-157*x(191)-51*x(192)-116*x(193)-258*x(194)-225*x(195)-245*x(196)-210*x(197)-130*x(198)-168*x(199)-168*x(200);
             -225*x(201)-116*x(202)-140*x(203)-140*x(204)-245*x(205)-110*x(206)-190*x(207)-205*x(208)-205*x(209)-157*x(210)-157*x(211)-51*x(212)-116*x(213)-258*x(214)-225*x(215)-245*x(216)-210*x(217)-130*x(218)-168*x(219)-168*x(220);
             -225*x(221)-116*x(222)-140*x(223)-140*x(224)-245*x(225)-110*x(226)-190*x(227)-205*x(228)-205*x(229)-157*x(230)-157*x(231)-51*x(232)-116*x(233)-258*x(234)-225*x(235)-245*x(236)-210*x(237)-130*x(238)-168*x(239)-168*x(240);
             x(1)-x(241)+x(242);
             x(2)-x(243)+x(244);
             x(3)-x(245)+x(246);
             x(4)-x(247)+x(248);
             x(5)-x(249)+x(250);
             x(6)-x(251)+x(252);
             x(7)-x(253)+x(254);
             x(8)-x(255)+x(256);
             x(9)-x(257)+x(258);
             x(10)-x(259)+x(260);
             x(11)-x(261)+x(262);
             x(12)-x(263)+x(264);
             x(13)-x(265)+x(266);
             x(14)-x(267)+x(268);
             x(15)-x(269)+x(270);
             x(16)-x(271)+x(272);
             x(17)-x(273)+x(274);
             x(18)-x(275)+x(276);
             x(19)-x(277)+x(278);
             x(20)-x(279)+x(280);
             x(21)+x(241)-x(281)+x(282);
             x(22)+x(243)-x(283)+x(284);
             x(23)+x(245)-x(285)+x(286);
             x(24)+x(247)-x(287)+x(288);
             x(25)+x(249)-x(289)+x(290);
             x(26)+x(251)-x(291)+x(292);
             x(27)+x(253)-x(293)+x(294);
             x(28)+x(255)-x(295)+x(296);
             x(29)+x(257)-x(297)+x(298);
             x(30)+x(259)-x(299)+x(300);
             x(31)+x(261)-x(301)+x(302);
             x(32)+x(263)-x(303)+x(304);
             x(33)+x(265)-x(305)+x(306);
             x(34)+x(267)-x(307)+x(308);
             x(35)+x(269)-x(309)+x(310);
             x(36)+x(271)-x(311)+x(312);
             x(37)+x(273)-x(313)+x(314);
             x(38)+x(275)-x(315)+x(316);
             x(39)+x(277)-x(317)+x(318);
             x(40)+x(279)-x(319)+x(320);
             x(41)+x(281)-x(321)+x(322);
             x(42)+x(283)-x(323)+x(324);
             x(43)+x(285)-x(325)+x(326);
             x(44)+x(287)-x(327)+x(328);
             x(45)+x(289)-x(329)+x(330);
             x(46)+x(291)-x(331)+x(332);
             x(47)+x(293)-x(333)+x(334);
             x(48)+x(295)-x(335)+x(336);
             x(49)+x(297)-x(337)+x(338);
             x(50)+x(299)-x(339)+x(340);
             x(51)+x(301)-x(341)+x(342);
             x(52)+x(303)-x(343)+x(344);
             x(53)+x(305)-x(345)+x(346);
             x(54)+x(307)-x(347)+x(348);
             x(55)+x(309)-x(349)+x(350);
             x(56)+x(311)-x(351)+x(352);
             x(57)+x(313)-x(353)+x(354);
             x(58)+x(315)-x(355)+x(356);
             x(59)+x(317)-x(357)+x(358);
             x(60)+x(319)-x(359)+x(360);
             x(61)+x(321)-x(361)+x(362);
             x(62)+x(323)-x(363)+x(364);
             x(63)+x(325)-x(365)+x(366);
             x(64)+x(327)-x(367)+x(368);
             x(65)+x(329)-x(369)+x(370);
             x(66)+x(331)-x(371)+x(372);
             x(67)+x(333)-x(373)+x(374);
             x(68)+x(335)-x(375)+x(376);
             x(69)+x(337)-x(377)+x(378);
             x(70)+x(339)-x(379)+x(380);
             x(71)+x(341)-x(381)+x(382);
             x(72)+x(343)-x(383)+x(384);
             x(73)+x(345)-x(385)+x(386);
             x(74)+x(347)-x(387)+x(388);
             x(75)+x(349)-x(389)+x(390);
             x(76)+x(351)-x(391)+x(392);
             x(77)+x(353)-x(393)+x(394);
             x(78)+x(355)-x(395)+x(396);
             x(79)+x(357)-x(397)+x(398);
             x(80)+x(359)-x(399)+x(400);
             x(81)+x(361)-x(401)+x(402);
             x(82)+x(363)-x(403)+x(404);
             x(83)+x(365)-x(405)+x(406);
             x(84)+x(367)-x(407)+x(408);
             x(85)+x(369)-x(409)+x(410);
             x(86)+x(371)-x(411)+x(412);
             x(87)+x(373)-x(413)+x(414);
             x(88)+x(375)-x(415)+x(416);
             x(89)+x(377)-x(417)+x(418);
             x(90)+x(379)-x(419)+x(420);
             x(91)+x(381)-x(421)+x(422);
             x(92)+x(383)-x(423)+x(424);
             x(93)+x(385)-x(425)+x(426);
             x(94)+x(387)-x(427)+x(428);
             x(95)+x(389)-x(429)+x(430);
             x(96)+x(391)-x(431)+x(432);
             x(97)+x(393)-x(433)+x(434);
             x(98)+x(395)-x(435)+x(436);
             x(99)+x(397)-x(437)+x(438);
             x(100)+x(399)-x(439)+x(440);
             x(101)+x(401)-x(441)+x(442);
             x(102)+x(403)-x(443)+x(444);
             x(103)+x(405)-x(445)+x(446);
             x(104)+x(407)-x(447)+x(448);
             x(105)+x(409)-x(449)+x(450);
             x(106)+x(411)-x(451)+x(452);
             x(107)+x(413)-x(453)+x(454);
             x(108)+x(415)-x(455)+x(456);
             x(109)+x(417)-x(457)+x(458);
             x(110)+x(419)-x(459)+x(460);
             x(111)+x(421)-x(461)+x(462);
             x(112)+x(423)-x(463)+x(464);
             x(113)+x(425)-x(465)+x(466);
             x(114)+x(427)-x(467)+x(468);
             x(115)+x(429)-x(469)+x(470);
             x(116)+x(431)-x(471)+x(472);
             x(117)+x(433)-x(473)+x(474);
             x(118)+x(435)-x(475)+x(476);
             x(119)+x(437)-x(477)+x(478);
             x(120)+x(439)-x(479)+x(480);
             x(121)+x(441)-x(481)+x(482);
             x(122)+x(443)-x(483)+x(484);
             x(123)+x(445)-x(485)+x(486);
             x(124)+x(447)-x(487)+x(488);
             x(125)+x(449)-x(489)+x(490);
             x(126)+x(451)-x(491)+x(492);
             x(127)+x(453)-x(493)+x(494);
             x(128)+x(455)-x(495)+x(496);
             x(129)+x(457)-x(497)+x(498);
             x(130)+x(459)-x(499)+x(500);
             x(131)+x(461)-x(501)+x(502);
             x(132)+x(463)-x(503)+x(504);
             x(133)+x(465)-x(505)+x(506);
             x(134)+x(467)-x(507)+x(508);
             x(135)+x(469)-x(509)+x(510);
             x(136)+x(471)-x(511)+x(512);
             x(137)+x(473)-x(513)+x(514);
             x(138)+x(475)-x(515)+x(516);
             x(139)+x(477)-x(517)+x(518);
             x(140)+x(479)-x(519)+x(520);
             x(141)+x(481)-x(521)+x(522);
             x(142)+x(483)-x(523)+x(524);
             x(143)+x(485)-x(525)+x(526);
             x(144)+x(487)-x(527)+x(528);
             x(145)+x(489)-x(529)+x(530);
             x(146)+x(491)-x(531)+x(532);
             x(147)+x(493)-x(533)+x(534);
             x(148)+x(495)-x(535)+x(536);
             x(149)+x(497)-x(537)+x(538);
             x(150)+x(499)-x(539)+x(540);
             x(151)+x(501)-x(541)+x(542);
             x(152)+x(503)-x(543)+x(544);
             x(153)+x(505)-x(545)+x(546);
             x(154)+x(507)-x(547)+x(548);
             x(155)+x(509)-x(549)+x(550);
             x(156)+x(511)-x(551)+x(552);
             x(157)+x(513)-x(553)+x(554);
             x(158)+x(515)-x(555)+x(556);
             x(159)+x(517)-x(557)+x(558);
             x(160)+x(519)-x(559)+x(560);
             x(161)+x(521)-x(561)+x(562);
             x(162)+x(523)-x(563)+x(564);
             x(163)+x(525)-x(565)+x(566);
             x(164)+x(527)-x(567)+x(568);
             x(165)+x(529)-x(569)+x(570);
             x(166)+x(531)-x(571)+x(572);
             x(167)+x(533)-x(573)+x(574);
             x(168)+x(535)-x(575)+x(576);
             x(169)+x(537)-x(577)+x(578);
             x(170)+x(539)-x(579)+x(580);
             x(171)+x(541)-x(581)+x(582);
             x(172)+x(543)-x(583)+x(584);
             x(173)+x(545)-x(585)+x(586);
             x(174)+x(547)-x(587)+x(588);
             x(175)+x(549)-x(589)+x(590);
             x(176)+x(551)-x(591)+x(592);
             x(177)+x(553)-x(593)+x(594);
             x(178)+x(555)-x(595)+x(596);
             x(179)+x(557)-x(597)+x(598);
             x(180)+x(559)-x(599)+x(600);
             x(181)+x(561)-x(601)+x(602);
             x(182)+x(563)-x(603)+x(604);
             x(183)+x(565)-x(605)+x(606);
             x(184)+x(567)-x(607)+x(608);
             x(185)+x(569)-x(609)+x(610);
             x(186)+x(571)-x(611)+x(612);
             x(187)+x(573)-x(613)+x(614);
             x(188)+x(575)-x(615)+x(616);
             x(189)+x(577)-x(617)+x(618);
             x(190)+x(579)-x(619)+x(620);
             x(191)+x(581)-x(621)+x(622);
             x(192)+x(583)-x(623)+x(624);
             x(193)+x(585)-x(625)+x(626);
             x(194)+x(587)-x(627)+x(628);
             x(195)+x(589)-x(629)+x(630);
             x(196)+x(591)-x(631)+x(632);
             x(197)+x(593)-x(633)+x(634);
             x(198)+x(595)-x(635)+x(636);
             x(199)+x(597)-x(637)+x(638);
             x(200)+x(599)-x(639)+x(640);
             x(201)+x(601)-x(641)+x(642);
             x(202)+x(603)-x(643)+x(644);
             x(203)+x(605)-x(645)+x(646);
             x(204)+x(607)-x(647)+x(648);
             x(205)+x(609)-x(649)+x(650);
             x(206)+x(611)-x(651)+x(652);
             x(207)+x(613)-x(653)+x(654);
             x(208)+x(615)-x(655)+x(656);
             x(209)+x(617)-x(657)+x(658);
             x(210)+x(619)-x(659)+x(660);
             x(211)+x(621)-x(661)+x(662);
             x(212)+x(623)-x(663)+x(664);
             x(213)+x(625)-x(665)+x(666);
             x(214)+x(627)-x(667)+x(668);
             x(215)+x(629)-x(669)+x(670);
             x(216)+x(631)-x(671)+x(672);
             x(217)+x(633)-x(673)+x(674);
             x(218)+x(635)-x(675)+x(676);
             x(219)+x(637)-x(677)+x(678);
             x(220)+x(639)-x(679)+x(680);
             x(221)+x(641)-x(681)+x(682);
             x(222)+x(643)-x(683)+x(684);
             x(223)+x(645)-x(685)+x(686);
             x(224)+x(647)-x(687)+x(688);
             x(225)+x(649)-x(689)+x(690);
             x(226)+x(651)-x(691)+x(692);
             x(227)+x(653)-x(693)+x(694);
             x(228)+x(655)-x(695)+x(696);
             x(229)+x(657)-x(697)+x(698);
             x(230)+x(659)-x(699)+x(700);
             x(231)+x(661)-x(701)+x(702);
             x(232)+x(663)-x(703)+x(704);
             x(233)+x(665)-x(705)+x(706);
             x(234)+x(667)-x(707)+x(708);
             x(235)+x(669)-x(709)+x(710);
             x(236)+x(671)-x(711)+x(712);
             x(237)+x(673)-x(713)+x(714);
             x(238)+x(675)-x(715)+x(716);
             x(239)+x(677)-x(717)+x(718);
             x(240)+x(679)-x(719)+x(720);
             -((x(20)-x(19)+x(40))^2-2.5e-5*(x(19)+x(20))^2);
             -((x(40)-x(39)+x(60))^2-2.5e-5*(x(39)+x(40))^2);
             -((x(60)-x(59)+x(80))^2-2.5e-5*(x(59)+x(60))^2);
             -((x(80)-x(79)+x(100))^2-2.5e-5*(x(79)+x(80))^2);
             -((x(100)-x(99)+x(120))^2-2.5e-5*(x(99)+x(100))^2);
             -((x(120)-x(119)+x(140))^2-2.5e-5*(x(119)+x(120))^2);
             -((x(140)-x(139)+x(160))^2-2.5e-5*(x(139)+x(140))^2);
             -((x(160)-x(159)+x(180))^2-2.5e-5*(x(159)+x(160))^2);
             -((x(180)-x(179)+x(200))^2-2.5e-5*(x(179)+x(180))^2);
             -((x(200)-x(199)+x(220))^2-2.5e-5*(x(199)+x(200))^2);
             -((x(220)-x(219)+x(240))^2-2.5e-5*(x(219)+x(220))^2)];
cl = [-1010354,-1031485,-1021078,-999792,-1003985,-1028153,-1006962,-1020401,-1028626,-1020589,-1028371,-1040972,124,94,155,52,1899,29,226,1,1,257,515,23,76,60,1647,245,465,307,45,123,376,282,125,41,1557.333,14,180,81.333,68,211,426,20,59,39,1220.667,601,514,217,32,76,257,225,90,38,1481,14,217,86.333,88,210,472,18,44,42,1547,897,485,304,39,61,349,331,30,43,1472.667,23,280,96,91,264,610,21,15,53,1844.667,906,478,402,38,28,248,261,30,29,1434.667,20,255,91,75,259,570,23,10,53,1677.667,841,518,414,24,19,239,207,33.333,37,1616,22,280,160.667,92,249,588,25,23,39,1738.667,859,488,136,44,39,379,344,74.667,50,2060,27,356,290.333,125,265,689,23,39,51,2104.333,1034,375,502,64,58,317,284,66.667,38,1889,21,290,257.333,103,234,595,23,28,46,1727.333,886,334,442,40,42,300,251,56.333,42,1812,18,296,244.667,84,236,600,25,27,77,1820.667,939,338,386,44,45,311,256,57.333,45,1549.333,28,301,254,87,239,620,21,26,92,2066,1056,293,453,46,42,260,190,51,36,1596,16,243,217,75,206,530,21,20,92,1707.333,911,224,419,37,33,179,83,31.667,23,1232.667,0,149,156.667,35,136,333,28,11,55,1020.333,559,90,297,23,18,0,0,0,0,0,0,0,0,0,0,0]';
cu = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,124,94,155,52,1899,29,226,1,1,257,515,23,76,60,1647,245,465,307,45,123,376,282,125,41,1557.333,14,180,81.333,68,211,426,20,59,39,1220.667,601,514,217,32,76,257,225,90,38,1481,14,217,86.333,88,210,472,18,44,42,1547,897,485,304,39,61,349,331,30,43,1472.667,23,280,96,91,264,610,21,15,53,1844.667,906,478,402,38,28,248,261,30,29,1434.667,20,255,91,75,259,570,23,10,53,1677.667,841,518,414,24,19,239,207,33.333,37,1616,22,280,160.667,92,249,588,25,23,39,1738.667,859,488,136,44,39,379,344,74.667,50,2060,27,356,290.333,125,265,689,23,39,51,2104.333,1034,375,502,64,58,317,284,66.667,38,1889,21,290,257.333,103,234,595,23,28,46,1727.333,886,334,442,40,42,300,251,56.333,42,1812,18,296,244.667,84,236,600,25,27,77,1820.667,939,338,386,44,45,311,256,57.333,45,1549.333,28,301,254,87,239,620,21,26,92,2066,1056,293,453,46,42,260,190,51,36,1596,16,243,217,75,206,530,21,20,92,1707.333,911,224,419,37,33,179,83,31.667,23,1232.667,0,149,156.667,35,136,333,28,11,55,1020.333,559,90,297,23,18,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [124,94,155,52,NaN,29,226,1,1,257,515,23,76,60,1647,869.379395,465,307,45,123,376,282,125,41,NaN,14,180,81.332993,67.999985,211,426,20,59,39,1220.666992,1133.471924,514,217,32,76,257,225,90,38,NaN,14,217,86.332993,88,210,472,18,44,41.999985,1547,859.378418,485,304,39,61,349,331,30,43,NaN,23,280,96,90.999985,264,610,21,15,53,1844.666992,188.183365,478,402,38,28,248,261,30,29,NaN,20,255,91,74.999985,259,570,23,10,53,1677.666992,536.775146,518,414,24,19,238.999985,207,33.332993,37,NaN,22,280,160.666992,186.085693,249,588,25,23,39,1738.666992,262.640625,862.999756,136,44,39,378.999756,344,74.666992,50,NaN,27,356,290.332764,30.914291,265,689,23,39,50.999985,2104.332764,NaN,NaN,502,64,58,317,284,66.666992,38,NaN,21,290,257.332764,102.999985,234,595,23,28,46,1727.332764,382.581299,333.999756,442,40,42,299.999756,251,56.332993,42,NaN,18,296,244.666992,83.999985,236,600,25,27,77,1820.666992,372.895996,337.999756,386,44,45,310.999756,256,57.332993,45,NaN,28,301,254,87,239,620,21,26,92,2065.999756,55.821945,293,453,46,42,260,190,51,36,NaN,16,243,216.999985,74.999985,206,530,21,20,92,1707.332764,766.375732,223.999985,419,37,33,179,83,31.666992,23,1232.666992,NaN,149,156.666992,35,136,333,28,11,55,1020.332764,559,90,297,23,18,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1898.999756,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,624,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1557.332764,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1157,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1480.999756,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1119,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1472.666992,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,401,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1434.666992,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,97,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1615.999756,NaN,NaN,NaN,NaN,NaN,NaN,94,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,499.17041,375,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,2060,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1033.999756,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1889,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,503.418457,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1811.999756,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,566.10376,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1549.332764,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1000.177979,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,1595.999756,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,144.624176,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','smmpsf');
opts.sense = 'min';