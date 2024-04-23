% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 18:22:38
% Model: biggsb1

% Objective
fun = @(x)(-1+x(1))^2+(x(2)-x(1))^2+(x(3)-x(2))^2+(x(4)-x(3))^2+(x(5)-x(4))^2+(x(6)-x(5))^2+(x(7)-x(6))^2+(x(8)-x(7))^2+(x(9)-x(8))^2+(x(10)-x(9))^2+(x(11)-x(10))^2+(x(12)-x(11))^2+(x(13)-x(12))^2+(x(14)-x(13))^2+(x(15)-x(14))^2+(x(16)-x(15))^2+(x(17)-x(16))^2+(x(18)-x(17))^2+(x(19)-x(18))^2+(x(20)-x(19))^2+(x(21)-x(20))^2+(x(22)-x(21))^2+(x(23)-x(22))^2+(x(24)-x(23))^2+(x(25)-x(24))^2+(x(26)-x(25))^2+(x(27)-x(26))^2+(x(28)-x(27))^2+(x(29)-x(28))^2+(x(30)-x(29))^2+(x(31)-x(30))^2+(x(32)-x(31))^2+(x(33)-x(32))^2+(x(34)-x(33))^2+(x(35)-x(34))^2+(x(36)-x(35))^2+(x(37)-x(36))^2+(x(38)-x(37))^2+(x(39)-x(38))^2+(x(40)-x(39))^2+(x(41)-x(40))^2+(x(42)-x(41))^2+(x(43)-x(42))^2+(x(44)-x(43))^2+(x(45)-x(44))^2+(x(46)-x(45))^2+(x(47)-x(46))^2+(x(48)-x(47))^2+(x(49)-x(48))^2+(x(50)-x(49))^2+(x(51)-x(50))^2+(x(52)-x(51))^2+(x(53)-x(52))^2+(x(54)-x(53))^2+(x(55)-x(54))^2+(x(56)-x(55))^2+(x(57)-x(56))^2+(x(58)-x(57))^2+(x(59)-x(58))^2+(x(60)-x(59))^2+(x(61)-x(60))^2+(x(62)-x(61))^2+(x(63)-x(62))^2+(x(64)-x(63))^2+(x(65)-x(64))^2+(x(66)-x(65))^2+(x(67)-x(66))^2+(x(68)-x(67))^2+(x(69)-x(68))^2+(x(70)-x(69))^2+(x(71)-x(70))^2+(x(72)-x(71))^2+(x(73)-x(72))^2+(x(74)-x(73))^2+(x(75)-x(74))^2+(x(76)-x(75))^2+(x(77)-x(76))^2+(x(78)-x(77))^2+(x(79)-x(78))^2+(x(80)-x(79))^2+(x(81)-x(80))^2+(x(82)-x(81))^2+(x(83)-x(82))^2+(x(84)-x(83))^2+(x(85)-x(84))^2+(x(86)-x(85))^2+(x(87)-x(86))^2+(x(88)-x(87))^2+(x(89)-x(88))^2+(x(90)-x(89))^2+(x(91)-x(90))^2+(x(92)-x(91))^2+(x(93)-x(92))^2+(x(94)-x(93))^2+(x(95)-x(94))^2+(x(96)-x(95))^2+(x(97)-x(96))^2+(x(98)-x(97))^2+(x(99)-x(98))^2+(x(100)-x(99))^2+(x(101)-x(100))^2+(x(102)-x(101))^2+(x(103)-x(102))^2+(x(104)-x(103))^2+(x(105)-x(104))^2+(x(106)-x(105))^2+(x(107)-x(106))^2+(x(108)-x(107))^2+(x(109)-x(108))^2+(x(110)-x(109))^2+(x(111)-x(110))^2+(x(112)-x(111))^2+(x(113)-x(112))^2+(x(114)-x(113))^2+(x(115)-x(114))^2+(x(116)-x(115))^2+(x(117)-x(116))^2+(x(118)-x(117))^2+(x(119)-x(118))^2+(x(120)-x(119))^2+(x(121)-x(120))^2+(x(122)-x(121))^2+(x(123)-x(122))^2+(x(124)-x(123))^2+(x(125)-x(124))^2+(x(126)-x(125))^2+(x(127)-x(126))^2+(x(128)-x(127))^2+(x(129)-x(128))^2+(x(130)-x(129))^2+(x(131)-x(130))^2+(x(132)-x(131))^2+(x(133)-x(132))^2+(x(134)-x(133))^2+(x(135)-x(134))^2+(x(136)-x(135))^2+(x(137)-x(136))^2+(x(138)-x(137))^2+(x(139)-x(138))^2+(x(140)-x(139))^2+(x(141)-x(140))^2+(x(142)-x(141))^2+(x(143)-x(142))^2+(x(144)-x(143))^2+(x(145)-x(144))^2+(x(146)-x(145))^2+(x(147)-x(146))^2+(x(148)-x(147))^2+(x(149)-x(148))^2+(x(150)-x(149))^2+(x(151)-x(150))^2+(x(152)-x(151))^2+(x(153)-x(152))^2+(x(154)-x(153))^2+(x(155)-x(154))^2+(x(156)-x(155))^2+(x(157)-x(156))^2+(x(158)-x(157))^2+(x(159)-x(158))^2+(x(160)-x(159))^2+(x(161)-x(160))^2+(x(162)-x(161))^2+(x(163)-x(162))^2+(x(164)-x(163))^2+(x(165)-x(164))^2+(x(166)-x(165))^2+(x(167)-x(166))^2+(x(168)-x(167))^2+(x(169)-x(168))^2+(x(170)-x(169))^2+(x(171)-x(170))^2+(x(172)-x(171))^2+(x(173)-x(172))^2+(x(174)-x(173))^2+(x(175)-x(174))^2+(x(176)-x(175))^2+(x(177)-x(176))^2+(x(178)-x(177))^2+(x(179)-x(178))^2+(x(180)-x(179))^2+(x(181)-x(180))^2+(x(182)-x(181))^2+(x(183)-x(182))^2+(x(184)-x(183))^2+(x(185)-x(184))^2+(x(186)-x(185))^2+(x(187)-x(186))^2+(x(188)-x(187))^2+(x(189)-x(188))^2+(x(190)-x(189))^2+(x(191)-x(190))^2+(x(192)-x(191))^2+(x(193)-x(192))^2+(x(194)-x(193))^2+(x(195)-x(194))^2+(x(196)-x(195))^2+(x(197)-x(196))^2+(x(198)-x(197))^2+(x(199)-x(198))^2+(x(200)-x(199))^2+(x(201)-x(200))^2+(x(202)-x(201))^2+(x(203)-x(202))^2+(x(204)-x(203))^2+(x(205)-x(204))^2+(x(206)-x(205))^2+(x(207)-x(206))^2+(x(208)-x(207))^2+(x(209)-x(208))^2+(x(210)-x(209))^2+(x(211)-x(210))^2+(x(212)-x(211))^2+(x(213)-x(212))^2+(x(214)-x(213))^2+(x(215)-x(214))^2+(x(216)-x(215))^2+(x(217)-x(216))^2+(x(218)-x(217))^2+(x(219)-x(218))^2+(x(220)-x(219))^2+(x(221)-x(220))^2+(x(222)-x(221))^2+(x(223)-x(222))^2+(x(224)-x(223))^2+(x(225)-x(224))^2+(x(226)-x(225))^2+(x(227)-x(226))^2+(x(228)-x(227))^2+(x(229)-x(228))^2+(x(230)-x(229))^2+(x(231)-x(230))^2+(x(232)-x(231))^2+(x(233)-x(232))^2+(x(234)-x(233))^2+(x(235)-x(234))^2+(x(236)-x(235))^2+(x(237)-x(236))^2+(x(238)-x(237))^2+(x(239)-x(238))^2+(x(240)-x(239))^2+(x(241)-x(240))^2+(x(242)-x(241))^2+(x(243)-x(242))^2+(x(244)-x(243))^2+(x(245)-x(244))^2+(x(246)-x(245))^2+(x(247)-x(246))^2+(x(248)-x(247))^2+(x(249)-x(248))^2+(x(250)-x(249))^2+(x(251)-x(250))^2+(x(252)-x(251))^2+(x(253)-x(252))^2+(x(254)-x(253))^2+(x(255)-x(254))^2+(x(256)-x(255))^2+(x(257)-x(256))^2+(x(258)-x(257))^2+(x(259)-x(258))^2+(x(260)-x(259))^2+(x(261)-x(260))^2+(x(262)-x(261))^2+(x(263)-x(262))^2+(x(264)-x(263))^2+(x(265)-x(264))^2+(x(266)-x(265))^2+(x(267)-x(266))^2+(x(268)-x(267))^2+(x(269)-x(268))^2+(x(270)-x(269))^2+(x(271)-x(270))^2+(x(272)-x(271))^2+(x(273)-x(272))^2+(x(274)-x(273))^2+(x(275)-x(274))^2+(x(276)-x(275))^2+(x(277)-x(276))^2+(x(278)-x(277))^2+(x(279)-x(278))^2+(x(280)-x(279))^2+(x(281)-x(280))^2+(x(282)-x(281))^2+(x(283)-x(282))^2+(x(284)-x(283))^2+(x(285)-x(284))^2+(x(286)-x(285))^2+(x(287)-x(286))^2+(x(288)-x(287))^2+(x(289)-x(288))^2+(x(290)-x(289))^2+(x(291)-x(290))^2+(x(292)-x(291))^2+(x(293)-x(292))^2+(x(294)-x(293))^2+(x(295)-x(294))^2+(x(296)-x(295))^2+(x(297)-x(296))^2+(x(298)-x(297))^2+(x(299)-x(298))^2+(x(300)-x(299))^2+(x(301)-x(300))^2+(x(302)-x(301))^2+(x(303)-x(302))^2+(x(304)-x(303))^2+(x(305)-x(304))^2+(x(306)-x(305))^2+(x(307)-x(306))^2+(x(308)-x(307))^2+(x(309)-x(308))^2+(x(310)-x(309))^2+(x(311)-x(310))^2+(x(312)-x(311))^2+(x(313)-x(312))^2+(x(314)-x(313))^2+(x(315)-x(314))^2+(x(316)-x(315))^2+(x(317)-x(316))^2+(x(318)-x(317))^2+(x(319)-x(318))^2+(x(320)-x(319))^2+(x(321)-x(320))^2+(x(322)-x(321))^2+(x(323)-x(322))^2+(x(324)-x(323))^2+(x(325)-x(324))^2+(x(326)-x(325))^2+(x(327)-x(326))^2+(x(328)-x(327))^2+(x(329)-x(328))^2+(x(330)-x(329))^2+(x(331)-x(330))^2+(x(332)-x(331))^2+(x(333)-x(332))^2+(x(334)-x(333))^2+(x(335)-x(334))^2+(x(336)-x(335))^2+(x(337)-x(336))^2+(x(338)-x(337))^2+(x(339)-x(338))^2+(x(340)-x(339))^2+(x(341)-x(340))^2+(x(342)-x(341))^2+(x(343)-x(342))^2+(x(344)-x(343))^2+(x(345)-x(344))^2+(x(346)-x(345))^2+(x(347)-x(346))^2+(x(348)-x(347))^2+(x(349)-x(348))^2+(x(350)-x(349))^2+(x(351)-x(350))^2+(x(352)-x(351))^2+(x(353)-x(352))^2+(x(354)-x(353))^2+(x(355)-x(354))^2+(x(356)-x(355))^2+(x(357)-x(356))^2+(x(358)-x(357))^2+(x(359)-x(358))^2+(x(360)-x(359))^2+(x(361)-x(360))^2+(x(362)-x(361))^2+(x(363)-x(362))^2+(x(364)-x(363))^2+(x(365)-x(364))^2+(x(366)-x(365))^2+(x(367)-x(366))^2+(x(368)-x(367))^2+(x(369)-x(368))^2+(x(370)-x(369))^2+(x(371)-x(370))^2+(x(372)-x(371))^2+(x(373)-x(372))^2+(x(374)-x(373))^2+(x(375)-x(374))^2+(x(376)-x(375))^2+(x(377)-x(376))^2+(x(378)-x(377))^2+(x(379)-x(378))^2+(x(380)-x(379))^2+(x(381)-x(380))^2+(x(382)-x(381))^2+(x(383)-x(382))^2+(x(384)-x(383))^2+(x(385)-x(384))^2+(x(386)-x(385))^2+(x(387)-x(386))^2+(x(388)-x(387))^2+(x(389)-x(388))^2+(x(390)-x(389))^2+(x(391)-x(390))^2+(x(392)-x(391))^2+(x(393)-x(392))^2+(x(394)-x(393))^2+(x(395)-x(394))^2+(x(396)-x(395))^2+(x(397)-x(396))^2+(x(398)-x(397))^2+(x(399)-x(398))^2+(x(400)-x(399))^2+(x(401)-x(400))^2+(x(402)-x(401))^2+(x(403)-x(402))^2+(x(404)-x(403))^2+(x(405)-x(404))^2+(x(406)-x(405))^2+(x(407)-x(406))^2+(x(408)-x(407))^2+(x(409)-x(408))^2+(x(410)-x(409))^2+(x(411)-x(410))^2+(x(412)-x(411))^2+(x(413)-x(412))^2+(x(414)-x(413))^2+(x(415)-x(414))^2+(x(416)-x(415))^2+(x(417)-x(416))^2+(x(418)-x(417))^2+(x(419)-x(418))^2+(x(420)-x(419))^2+(x(421)-x(420))^2+(x(422)-x(421))^2+(x(423)-x(422))^2+(x(424)-x(423))^2+(x(425)-x(424))^2+(x(426)-x(425))^2+(x(427)-x(426))^2+(x(428)-x(427))^2+(x(429)-x(428))^2+(x(430)-x(429))^2+(x(431)-x(430))^2+(x(432)-x(431))^2+(x(433)-x(432))^2+(x(434)-x(433))^2+(x(435)-x(434))^2+(x(436)-x(435))^2+(x(437)-x(436))^2+(x(438)-x(437))^2+(x(439)-x(438))^2+(x(440)-x(439))^2+(x(441)-x(440))^2+(x(442)-x(441))^2+(x(443)-x(442))^2+(x(444)-x(443))^2+(x(445)-x(444))^2+(x(446)-x(445))^2+(x(447)-x(446))^2+(x(448)-x(447))^2+(x(449)-x(448))^2+(x(450)-x(449))^2+(x(451)-x(450))^2+(x(452)-x(451))^2+(x(453)-x(452))^2+(x(454)-x(453))^2+(x(455)-x(454))^2+(x(456)-x(455))^2+(x(457)-x(456))^2+(x(458)-x(457))^2+(x(459)-x(458))^2+(x(460)-x(459))^2+(x(461)-x(460))^2+(x(462)-x(461))^2+(x(463)-x(462))^2+(x(464)-x(463))^2+(x(465)-x(464))^2+(x(466)-x(465))^2+(x(467)-x(466))^2+(x(468)-x(467))^2+(x(469)-x(468))^2+(x(470)-x(469))^2+(x(471)-x(470))^2+(x(472)-x(471))^2+(x(473)-x(472))^2+(x(474)-x(473))^2+(x(475)-x(474))^2+(x(476)-x(475))^2+(x(477)-x(476))^2+(x(478)-x(477))^2+(x(479)-x(478))^2+(x(480)-x(479))^2+(x(481)-x(480))^2+(x(482)-x(481))^2+(x(483)-x(482))^2+(x(484)-x(483))^2+(x(485)-x(484))^2+(x(486)-x(485))^2+(x(487)-x(486))^2+(x(488)-x(487))^2+(x(489)-x(488))^2+(x(490)-x(489))^2+(x(491)-x(490))^2+(x(492)-x(491))^2+(x(493)-x(492))^2+(x(494)-x(493))^2+(x(495)-x(494))^2+(x(496)-x(495))^2+(x(497)-x(496))^2+(x(498)-x(497))^2+(x(499)-x(498))^2+(x(500)-x(499))^2+(x(501)-x(500))^2+(x(502)-x(501))^2+(x(503)-x(502))^2+(x(504)-x(503))^2+(x(505)-x(504))^2+(x(506)-x(505))^2+(x(507)-x(506))^2+(x(508)-x(507))^2+(x(509)-x(508))^2+(x(510)-x(509))^2+(x(511)-x(510))^2+(x(512)-x(511))^2+(x(513)-x(512))^2+(x(514)-x(513))^2+(x(515)-x(514))^2+(x(516)-x(515))^2+(x(517)-x(516))^2+(x(518)-x(517))^2+(x(519)-x(518))^2+(x(520)-x(519))^2+(x(521)-x(520))^2+(x(522)-x(521))^2+(x(523)-x(522))^2+(x(524)-x(523))^2+(x(525)-x(524))^2+(x(526)-x(525))^2+(x(527)-x(526))^2+(x(528)-x(527))^2+(x(529)-x(528))^2+(x(530)-x(529))^2+(x(531)-x(530))^2+(x(532)-x(531))^2+(x(533)-x(532))^2+(x(534)-x(533))^2+(x(535)-x(534))^2+(x(536)-x(535))^2+(x(537)-x(536))^2+(x(538)-x(537))^2+(x(539)-x(538))^2+(x(540)-x(539))^2+(x(541)-x(540))^2+(x(542)-x(541))^2+(x(543)-x(542))^2+(x(544)-x(543))^2+(x(545)-x(544))^2+(x(546)-x(545))^2+(x(547)-x(546))^2+(x(548)-x(547))^2+(x(549)-x(548))^2+(x(550)-x(549))^2+(x(551)-x(550))^2+(x(552)-x(551))^2+(x(553)-x(552))^2+(x(554)-x(553))^2+(x(555)-x(554))^2+(x(556)-x(555))^2+(x(557)-x(556))^2+(x(558)-x(557))^2+(x(559)-x(558))^2+(x(560)-x(559))^2+(x(561)-x(560))^2+(x(562)-x(561))^2+(x(563)-x(562))^2+(x(564)-x(563))^2+(x(565)-x(564))^2+(x(566)-x(565))^2+(x(567)-x(566))^2+(x(568)-x(567))^2+(x(569)-x(568))^2+(x(570)-x(569))^2+(x(571)-x(570))^2+(x(572)-x(571))^2+(x(573)-x(572))^2+(x(574)-x(573))^2+(x(575)-x(574))^2+(x(576)-x(575))^2+(x(577)-x(576))^2+(x(578)-x(577))^2+(x(579)-x(578))^2+(x(580)-x(579))^2+(x(581)-x(580))^2+(x(582)-x(581))^2+(x(583)-x(582))^2+(x(584)-x(583))^2+(x(585)-x(584))^2+(x(586)-x(585))^2+(x(587)-x(586))^2+(x(588)-x(587))^2+(x(589)-x(588))^2+(x(590)-x(589))^2+(x(591)-x(590))^2+(x(592)-x(591))^2+(x(593)-x(592))^2+(x(594)-x(593))^2+(x(595)-x(594))^2+(x(596)-x(595))^2+(x(597)-x(596))^2+(x(598)-x(597))^2+(x(599)-x(598))^2+(x(600)-x(599))^2+(x(601)-x(600))^2+(x(602)-x(601))^2+(x(603)-x(602))^2+(x(604)-x(603))^2+(x(605)-x(604))^2+(x(606)-x(605))^2+(x(607)-x(606))^2+(x(608)-x(607))^2+(x(609)-x(608))^2+(x(610)-x(609))^2+(x(611)-x(610))^2+(x(612)-x(611))^2+(x(613)-x(612))^2+(x(614)-x(613))^2+(x(615)-x(614))^2+(x(616)-x(615))^2+(x(617)-x(616))^2+(x(618)-x(617))^2+(x(619)-x(618))^2+(x(620)-x(619))^2+(x(621)-x(620))^2+(x(622)-x(621))^2+(x(623)-x(622))^2+(x(624)-x(623))^2+(x(625)-x(624))^2+(x(626)-x(625))^2+(x(627)-x(626))^2+(x(628)-x(627))^2+(x(629)-x(628))^2+(x(630)-x(629))^2+(x(631)-x(630))^2+(x(632)-x(631))^2+(x(633)-x(632))^2+(x(634)-x(633))^2+(x(635)-x(634))^2+(x(636)-x(635))^2+(x(637)-x(636))^2+(x(638)-x(637))^2+(x(639)-x(638))^2+(x(640)-x(639))^2+(x(641)-x(640))^2+(x(642)-x(641))^2+(x(643)-x(642))^2+(x(644)-x(643))^2+(x(645)-x(644))^2+(x(646)-x(645))^2+(x(647)-x(646))^2+(x(648)-x(647))^2+(x(649)-x(648))^2+(x(650)-x(649))^2+(x(651)-x(650))^2+(x(652)-x(651))^2+(x(653)-x(652))^2+(x(654)-x(653))^2+(x(655)-x(654))^2+(x(656)-x(655))^2+(x(657)-x(656))^2+(x(658)-x(657))^2+(x(659)-x(658))^2+(x(660)-x(659))^2+(x(661)-x(660))^2+(x(662)-x(661))^2+(x(663)-x(662))^2+(x(664)-x(663))^2+(x(665)-x(664))^2+(x(666)-x(665))^2+(x(667)-x(666))^2+(x(668)-x(667))^2+(x(669)-x(668))^2+(x(670)-x(669))^2+(x(671)-x(670))^2+(x(672)-x(671))^2+(x(673)-x(672))^2+(x(674)-x(673))^2+(x(675)-x(674))^2+(x(676)-x(675))^2+(x(677)-x(676))^2+(x(678)-x(677))^2+(x(679)-x(678))^2+(x(680)-x(679))^2+(x(681)-x(680))^2+(x(682)-x(681))^2+(x(683)-x(682))^2+(x(684)-x(683))^2+(x(685)-x(684))^2+(x(686)-x(685))^2+(x(687)-x(686))^2+(x(688)-x(687))^2+(x(689)-x(688))^2+(x(690)-x(689))^2+(x(691)-x(690))^2+(x(692)-x(691))^2+(x(693)-x(692))^2+(x(694)-x(693))^2+(x(695)-x(694))^2+(x(696)-x(695))^2+(x(697)-x(696))^2+(x(698)-x(697))^2+(x(699)-x(698))^2+(x(700)-x(699))^2+(x(701)-x(700))^2+(x(702)-x(701))^2+(x(703)-x(702))^2+(x(704)-x(703))^2+(x(705)-x(704))^2+(x(706)-x(705))^2+(x(707)-x(706))^2+(x(708)-x(707))^2+(x(709)-x(708))^2+(x(710)-x(709))^2+(x(711)-x(710))^2+(x(712)-x(711))^2+(x(713)-x(712))^2+(x(714)-x(713))^2+(x(715)-x(714))^2+(x(716)-x(715))^2+(x(717)-x(716))^2+(x(718)-x(717))^2+(x(719)-x(718))^2+(x(720)-x(719))^2+(x(721)-x(720))^2+(x(722)-x(721))^2+(x(723)-x(722))^2+(x(724)-x(723))^2+(x(725)-x(724))^2+(x(726)-x(725))^2+(x(727)-x(726))^2+(x(728)-x(727))^2+(x(729)-x(728))^2+(x(730)-x(729))^2+(x(731)-x(730))^2+(x(732)-x(731))^2+(x(733)-x(732))^2+(x(734)-x(733))^2+(x(735)-x(734))^2+(x(736)-x(735))^2+(x(737)-x(736))^2+(x(738)-x(737))^2+(x(739)-x(738))^2+(x(740)-x(739))^2+(x(741)-x(740))^2+(x(742)-x(741))^2+(x(743)-x(742))^2+(x(744)-x(743))^2+(x(745)-x(744))^2+(x(746)-x(745))^2+(x(747)-x(746))^2+(x(748)-x(747))^2+(x(749)-x(748))^2+(x(750)-x(749))^2+(x(751)-x(750))^2+(x(752)-x(751))^2+(x(753)-x(752))^2+(x(754)-x(753))^2+(x(755)-x(754))^2+(x(756)-x(755))^2+(x(757)-x(756))^2+(x(758)-x(757))^2+(x(759)-x(758))^2+(x(760)-x(759))^2+(x(761)-x(760))^2+(x(762)-x(761))^2+(x(763)-x(762))^2+(x(764)-x(763))^2+(x(765)-x(764))^2+(x(766)-x(765))^2+(x(767)-x(766))^2+(x(768)-x(767))^2+(x(769)-x(768))^2+(x(770)-x(769))^2+(x(771)-x(770))^2+(x(772)-x(771))^2+(x(773)-x(772))^2+(x(774)-x(773))^2+(x(775)-x(774))^2+(x(776)-x(775))^2+(x(777)-x(776))^2+(x(778)-x(777))^2+(x(779)-x(778))^2+(x(780)-x(779))^2+(x(781)-x(780))^2+(x(782)-x(781))^2+(x(783)-x(782))^2+(x(784)-x(783))^2+(x(785)-x(784))^2+(x(786)-x(785))^2+(x(787)-x(786))^2+(x(788)-x(787))^2+(x(789)-x(788))^2+(x(790)-x(789))^2+(x(791)-x(790))^2+(x(792)-x(791))^2+(x(793)-x(792))^2+(x(794)-x(793))^2+(x(795)-x(794))^2+(x(796)-x(795))^2+(x(797)-x(796))^2+(x(798)-x(797))^2+(x(799)-x(798))^2+(x(800)-x(799))^2+(x(801)-x(800))^2+(x(802)-x(801))^2+(x(803)-x(802))^2+(x(804)-x(803))^2+(x(805)-x(804))^2+(x(806)-x(805))^2+(x(807)-x(806))^2+(x(808)-x(807))^2+(x(809)-x(808))^2+(x(810)-x(809))^2+(x(811)-x(810))^2+(x(812)-x(811))^2+(x(813)-x(812))^2+(x(814)-x(813))^2+(x(815)-x(814))^2+(x(816)-x(815))^2+(x(817)-x(816))^2+(x(818)-x(817))^2+(x(819)-x(818))^2+(x(820)-x(819))^2+(x(821)-x(820))^2+(x(822)-x(821))^2+(x(823)-x(822))^2+(x(824)-x(823))^2+(x(825)-x(824))^2+(x(826)-x(825))^2+(x(827)-x(826))^2+(x(828)-x(827))^2+(x(829)-x(828))^2+(x(830)-x(829))^2+(x(831)-x(830))^2+(x(832)-x(831))^2+(x(833)-x(832))^2+(x(834)-x(833))^2+(x(835)-x(834))^2+(x(836)-x(835))^2+(x(837)-x(836))^2+(x(838)-x(837))^2+(x(839)-x(838))^2+(x(840)-x(839))^2+(x(841)-x(840))^2+(x(842)-x(841))^2+(x(843)-x(842))^2+(x(844)-x(843))^2+(x(845)-x(844))^2+(x(846)-x(845))^2+(x(847)-x(846))^2+(x(848)-x(847))^2+(x(849)-x(848))^2+(x(850)-x(849))^2+(x(851)-x(850))^2+(x(852)-x(851))^2+(x(853)-x(852))^2+(x(854)-x(853))^2+(x(855)-x(854))^2+(x(856)-x(855))^2+(x(857)-x(856))^2+(x(858)-x(857))^2+(x(859)-x(858))^2+(x(860)-x(859))^2+(x(861)-x(860))^2+(x(862)-x(861))^2+(x(863)-x(862))^2+(x(864)-x(863))^2+(x(865)-x(864))^2+(x(866)-x(865))^2+(x(867)-x(866))^2+(x(868)-x(867))^2+(x(869)-x(868))^2+(x(870)-x(869))^2+(x(871)-x(870))^2+(x(872)-x(871))^2+(x(873)-x(872))^2+(x(874)-x(873))^2+(x(875)-x(874))^2+(x(876)-x(875))^2+(x(877)-x(876))^2+(x(878)-x(877))^2+(x(879)-x(878))^2+(x(880)-x(879))^2+(x(881)-x(880))^2+(x(882)-x(881))^2+(x(883)-x(882))^2+(x(884)-x(883))^2+(x(885)-x(884))^2+(x(886)-x(885))^2+(x(887)-x(886))^2+(x(888)-x(887))^2+(x(889)-x(888))^2+(x(890)-x(889))^2+(x(891)-x(890))^2+(x(892)-x(891))^2+(x(893)-x(892))^2+(x(894)-x(893))^2+(x(895)-x(894))^2+(x(896)-x(895))^2+(x(897)-x(896))^2+(x(898)-x(897))^2+(x(899)-x(898))^2+(x(900)-x(899))^2+(x(901)-x(900))^2+(x(902)-x(901))^2+(x(903)-x(902))^2+(x(904)-x(903))^2+(x(905)-x(904))^2+(x(906)-x(905))^2+(x(907)-x(906))^2+(x(908)-x(907))^2+(x(909)-x(908))^2+(x(910)-x(909))^2+(x(911)-x(910))^2+(x(912)-x(911))^2+(x(913)-x(912))^2+(x(914)-x(913))^2+(x(915)-x(914))^2+(x(916)-x(915))^2+(x(917)-x(916))^2+(x(918)-x(917))^2+(x(919)-x(918))^2+(x(920)-x(919))^2+(x(921)-x(920))^2+(x(922)-x(921))^2+(x(923)-x(922))^2+(x(924)-x(923))^2+(x(925)-x(924))^2+(x(926)-x(925))^2+(x(927)-x(926))^2+(x(928)-x(927))^2+(x(929)-x(928))^2+(x(930)-x(929))^2+(x(931)-x(930))^2+(x(932)-x(931))^2+(x(933)-x(932))^2+(x(934)-x(933))^2+(x(935)-x(934))^2+(x(936)-x(935))^2+(x(937)-x(936))^2+(x(938)-x(937))^2+(x(939)-x(938))^2+(x(940)-x(939))^2+(x(941)-x(940))^2+(x(942)-x(941))^2+(x(943)-x(942))^2+(x(944)-x(943))^2+(x(945)-x(944))^2+(x(946)-x(945))^2+(x(947)-x(946))^2+(x(948)-x(947))^2+(x(949)-x(948))^2+(x(950)-x(949))^2+(x(951)-x(950))^2+(x(952)-x(951))^2+(x(953)-x(952))^2+(x(954)-x(953))^2+(x(955)-x(954))^2+(x(956)-x(955))^2+(x(957)-x(956))^2+(x(958)-x(957))^2+(x(959)-x(958))^2+(x(960)-x(959))^2+(x(961)-x(960))^2+(x(962)-x(961))^2+(x(963)-x(962))^2+(x(964)-x(963))^2+(x(965)-x(964))^2+(x(966)-x(965))^2+(x(967)-x(966))^2+(x(968)-x(967))^2+(x(969)-x(968))^2+(x(970)-x(969))^2+(x(971)-x(970))^2+(x(972)-x(971))^2+(x(973)-x(972))^2+(x(974)-x(973))^2+(x(975)-x(974))^2+(x(976)-x(975))^2+(x(977)-x(976))^2+(x(978)-x(977))^2+(x(979)-x(978))^2+(x(980)-x(979))^2+(x(981)-x(980))^2+(x(982)-x(981))^2+(x(983)-x(982))^2+(x(984)-x(983))^2+(x(985)-x(984))^2+(x(986)-x(985))^2+(x(987)-x(986))^2+(x(988)-x(987))^2+(x(989)-x(988))^2+(x(990)-x(989))^2+(x(991)-x(990))^2+(x(992)-x(991))^2+(x(993)-x(992))^2+(x(994)-x(993))^2+(x(995)-x(994))^2+(x(996)-x(995))^2+(x(997)-x(996))^2+(x(998)-x(997))^2+(x(999)-x(998))^2+(x(1000)-x(999))^2+(1-x(1000))^2;

% Bounds
lb = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]';
ub = [0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,0.9,Inf]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','biggsb1');
opts.sense = 'min';
