% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 30-Jan-2014 13:53:49
% Model: elec25

% Objective
fun = @(x)1/((x(1)-x(2))^2+(x(26)-x(27))^2+(x(51)-x(52))^2)^0.5+1/((x(1)-x(3))^2+(x(26)-x(28))^2+(x(51)-x(53))^2)^0.5+1/((x(1)-x(4))^2+(x(26)-x(29))^2+(x(51)-x(54))^2)^0.5+1/((x(1)-x(5))^2+(x(26)-x(30))^2+(x(51)-x(55))^2)^0.5+1/((x(1)-x(6))^2+(x(26)-x(31))^2+(x(51)-x(56))^2)^0.5+1/((x(1)-x(7))^2+(x(26)-x(32))^2+(x(51)-x(57))^2)^0.5+1/((x(1)-x(8))^2+(x(26)-x(33))^2+(x(51)-x(58))^2)^0.5+1/((x(1)-x(9))^2+(x(26)-x(34))^2+(x(51)-x(59))^2)^0.5+1/((x(1)-x(10))^2+(x(26)-x(35))^2+(x(51)-x(60))^2)^0.5+1/((x(1)-x(11))^2+(x(26)-x(36))^2+(x(51)-x(61))^2)^0.5+1/((x(1)-x(12))^2+(x(26)-x(37))^2+(x(51)-x(62))^2)^0.5+1/((x(1)-x(13))^2+(x(26)-x(38))^2+(x(51)-x(63))^2)^0.5+1/((x(1)-x(14))^2+(x(26)-x(39))^2+(x(51)-x(64))^2)^0.5+1/((x(1)-x(15))^2+(x(26)-x(40))^2+(x(51)-x(65))^2)^0.5+1/((x(1)-x(16))^2+(x(26)-x(41))^2+(x(51)-x(66))^2)^0.5+1/((x(1)-x(17))^2+(x(26)-x(42))^2+(x(51)-x(67))^2)^0.5+1/((x(1)-x(18))^2+(x(26)-x(43))^2+(x(51)-x(68))^2)^0.5+1/((x(1)-x(19))^2+(x(26)-x(44))^2+(x(51)-x(69))^2)^0.5+1/((x(1)-x(20))^2+(x(26)-x(45))^2+(x(51)-x(70))^2)^0.5+1/((x(1)-x(21))^2+(x(26)-x(46))^2+(x(51)-x(71))^2)^0.5+1/((x(1)-x(22))^2+(x(26)-x(47))^2+(x(51)-x(72))^2)^0.5+1/((x(1)-x(23))^2+(x(26)-x(48))^2+(x(51)-x(73))^2)^0.5+1/((x(1)-x(24))^2+(x(26)-x(49))^2+(x(51)-x(74))^2)^0.5+1/((x(1)-x(25))^2+(x(26)-x(50))^2+(x(51)-x(75))^2)^0.5+1/((x(2)-x(3))^2+(x(27)-x(28))^2+(x(52)-x(53))^2)^0.5+1/((x(2)-x(4))^2+(x(27)-x(29))^2+(x(52)-x(54))^2)^0.5+1/((x(2)-x(5))^2+(x(27)-x(30))^2+(x(52)-x(55))^2)^0.5+1/((x(2)-x(6))^2+(x(27)-x(31))^2+(x(52)-x(56))^2)^0.5+1/((x(2)-x(7))^2+(x(27)-x(32))^2+(x(52)-x(57))^2)^0.5+1/((x(2)-x(8))^2+(x(27)-x(33))^2+(x(52)-x(58))^2)^0.5+1/((x(2)-x(9))^2+(x(27)-x(34))^2+(x(52)-x(59))^2)^0.5+1/((x(2)-x(10))^2+(x(27)-x(35))^2+(x(52)-x(60))^2)^0.5+1/((x(2)-x(11))^2+(x(27)-x(36))^2+(x(52)-x(61))^2)^0.5+1/((x(2)-x(12))^2+(x(27)-x(37))^2+(x(52)-x(62))^2)^0.5+1/((x(2)-x(13))^2+(x(27)-x(38))^2+(x(52)-x(63))^2)^0.5+1/((x(2)-x(14))^2+(x(27)-x(39))^2+(x(52)-x(64))^2)^0.5+1/((x(2)-x(15))^2+(x(27)-x(40))^2+(x(52)-x(65))^2)^0.5+1/((x(2)-x(16))^2+(x(27)-x(41))^2+(x(52)-x(66))^2)^0.5+1/((x(2)-x(17))^2+(x(27)-x(42))^2+(x(52)-x(67))^2)^0.5+1/((x(2)-x(18))^2+(x(27)-x(43))^2+(x(52)-x(68))^2)^0.5+1/((x(2)-x(19))^2+(x(27)-x(44))^2+(x(52)-x(69))^2)^0.5+1/((x(2)-x(20))^2+(x(27)-x(45))^2+(x(52)-x(70))^2)^0.5+1/((x(2)-x(21))^2+(x(27)-x(46))^2+(x(52)-x(71))^2)^0.5+1/((x(2)-x(22))^2+(x(27)-x(47))^2+(x(52)-x(72))^2)^0.5+1/((x(2)-x(23))^2+(x(27)-x(48))^2+(x(52)-x(73))^2)^0.5+1/((x(2)-x(24))^2+(x(27)-x(49))^2+(x(52)-x(74))^2)^0.5+1/((x(2)-x(25))^2+(x(27)-x(50))^2+(x(52)-x(75))^2)^0.5+1/((x(3)-x(4))^2+(x(28)-x(29))^2+(x(53)-x(54))^2)^0.5+1/((x(3)-x(5))^2+(x(28)-x(30))^2+(x(53)-x(55))^2)^0.5+1/((x(3)-x(6))^2+(x(28)-x(31))^2+(x(53)-x(56))^2)^0.5+1/((x(3)-x(7))^2+(x(28)-x(32))^2+(x(53)-x(57))^2)^0.5+1/((x(3)-x(8))^2+(x(28)-x(33))^2+(x(53)-x(58))^2)^0.5+1/((x(3)-x(9))^2+(x(28)-x(34))^2+(x(53)-x(59))^2)^0.5+1/((x(3)-x(10))^2+(x(28)-x(35))^2+(x(53)-x(60))^2)^0.5+1/((x(3)-x(11))^2+(x(28)-x(36))^2+(x(53)-x(61))^2)^0.5+1/((x(3)-x(12))^2+(x(28)-x(37))^2+(x(53)-x(62))^2)^0.5+1/((x(3)-x(13))^2+(x(28)-x(38))^2+(x(53)-x(63))^2)^0.5+1/((x(3)-x(14))^2+(x(28)-x(39))^2+(x(53)-x(64))^2)^0.5+1/((x(3)-x(15))^2+(x(28)-x(40))^2+(x(53)-x(65))^2)^0.5+1/((x(3)-x(16))^2+(x(28)-x(41))^2+(x(53)-x(66))^2)^0.5+1/((x(3)-x(17))^2+(x(28)-x(42))^2+(x(53)-x(67))^2)^0.5+1/((x(3)-x(18))^2+(x(28)-x(43))^2+(x(53)-x(68))^2)^0.5+1/((x(3)-x(19))^2+(x(28)-x(44))^2+(x(53)-x(69))^2)^0.5+1/((x(3)-x(20))^2+(x(28)-x(45))^2+(x(53)-x(70))^2)^0.5+1/((x(3)-x(21))^2+(x(28)-x(46))^2+(x(53)-x(71))^2)^0.5+1/((x(3)-x(22))^2+(x(28)-x(47))^2+(x(53)-x(72))^2)^0.5+1/((x(3)-x(23))^2+(x(28)-x(48))^2+(x(53)-x(73))^2)^0.5+1/((x(3)-x(24))^2+(x(28)-x(49))^2+(x(53)-x(74))^2)^0.5+1/((x(3)-x(25))^2+(x(28)-x(50))^2+(x(53)-x(75))^2)^0.5+1/((x(4)-x(5))^2+(x(29)-x(30))^2+(x(54)-x(55))^2)^0.5+1/((x(4)-x(6))^2+(x(29)-x(31))^2+(x(54)-x(56))^2)^0.5+1/((x(4)-x(7))^2+(x(29)-x(32))^2+(x(54)-x(57))^2)^0.5+1/((x(4)-x(8))^2+(x(29)-x(33))^2+(x(54)-x(58))^2)^0.5+1/((x(4)-x(9))^2+(x(29)-x(34))^2+(x(54)-x(59))^2)^0.5+1/((x(4)-x(10))^2+(x(29)-x(35))^2+(x(54)-x(60))^2)^0.5+1/((x(4)-x(11))^2+(x(29)-x(36))^2+(x(54)-x(61))^2)^0.5+1/((x(4)-x(12))^2+(x(29)-x(37))^2+(x(54)-x(62))^2)^0.5+1/((x(4)-x(13))^2+(x(29)-x(38))^2+(x(54)-x(63))^2)^0.5+1/((x(4)-x(14))^2+(x(29)-x(39))^2+(x(54)-x(64))^2)^0.5+1/((x(4)-x(15))^2+(x(29)-x(40))^2+(x(54)-x(65))^2)^0.5+1/((x(4)-x(16))^2+(x(29)-x(41))^2+(x(54)-x(66))^2)^0.5+1/((x(4)-x(17))^2+(x(29)-x(42))^2+(x(54)-x(67))^2)^0.5+1/((x(4)-x(18))^2+(x(29)-x(43))^2+(x(54)-x(68))^2)^0.5+1/((x(4)-x(19))^2+(x(29)-x(44))^2+(x(54)-x(69))^2)^0.5+1/((x(4)-x(20))^2+(x(29)-x(45))^2+(x(54)-x(70))^2)^0.5+1/((x(4)-x(21))^2+(x(29)-x(46))^2+(x(54)-x(71))^2)^0.5+1/((x(4)-x(22))^2+(x(29)-x(47))^2+(x(54)-x(72))^2)^0.5+1/((x(4)-x(23))^2+(x(29)-x(48))^2+(x(54)-x(73))^2)^0.5+1/((x(4)-x(24))^2+(x(29)-x(49))^2+(x(54)-x(74))^2)^0.5+1/((x(4)-x(25))^2+(x(29)-x(50))^2+(x(54)-x(75))^2)^0.5+1/((x(5)-x(6))^2+(x(30)-x(31))^2+(x(55)-x(56))^2)^0.5+1/((x(5)-x(7))^2+(x(30)-x(32))^2+(x(55)-x(57))^2)^0.5+1/((x(5)-x(8))^2+(x(30)-x(33))^2+(x(55)-x(58))^2)^0.5+1/((x(5)-x(9))^2+(x(30)-x(34))^2+(x(55)-x(59))^2)^0.5+1/((x(5)-x(10))^2+(x(30)-x(35))^2+(x(55)-x(60))^2)^0.5+1/((x(5)-x(11))^2+(x(30)-x(36))^2+(x(55)-x(61))^2)^0.5+1/((x(5)-x(12))^2+(x(30)-x(37))^2+(x(55)-x(62))^2)^0.5+1/((x(5)-x(13))^2+(x(30)-x(38))^2+(x(55)-x(63))^2)^0.5+1/((x(5)-x(14))^2+(x(30)-x(39))^2+(x(55)-x(64))^2)^0.5+1/((x(5)-x(15))^2+(x(30)-x(40))^2+(x(55)-x(65))^2)^0.5+1/((x(5)-x(16))^2+(x(30)-x(41))^2+(x(55)-x(66))^2)^0.5+1/((x(5)-x(17))^2+(x(30)-x(42))^2+(x(55)-x(67))^2)^0.5+1/((x(5)-x(18))^2+(x(30)-x(43))^2+(x(55)-x(68))^2)^0.5+1/((x(5)-x(19))^2+(x(30)-x(44))^2+(x(55)-x(69))^2)^0.5+1/((x(5)-x(20))^2+(x(30)-x(45))^2+(x(55)-x(70))^2)^0.5+1/((x(5)-x(21))^2+(x(30)-x(46))^2+(x(55)-x(71))^2)^0.5+1/((x(5)-x(22))^2+(x(30)-x(47))^2+(x(55)-x(72))^2)^0.5+1/((x(5)-x(23))^2+(x(30)-x(48))^2+(x(55)-x(73))^2)^0.5+1/((x(5)-x(24))^2+(x(30)-x(49))^2+(x(55)-x(74))^2)^0.5+1/((x(5)-x(25))^2+(x(30)-x(50))^2+(x(55)-x(75))^2)^0.5+1/((x(6)-x(7))^2+(x(31)-x(32))^2+(x(56)-x(57))^2)^0.5+1/((x(6)-x(8))^2+(x(31)-x(33))^2+(x(56)-x(58))^2)^0.5+1/((x(6)-x(9))^2+(x(31)-x(34))^2+(x(56)-x(59))^2)^0.5+1/((x(6)-x(10))^2+(x(31)-x(35))^2+(x(56)-x(60))^2)^0.5+1/((x(6)-x(11))^2+(x(31)-x(36))^2+(x(56)-x(61))^2)^0.5+1/((x(6)-x(12))^2+(x(31)-x(37))^2+(x(56)-x(62))^2)^0.5+1/((x(6)-x(13))^2+(x(31)-x(38))^2+(x(56)-x(63))^2)^0.5+1/((x(6)-x(14))^2+(x(31)-x(39))^2+(x(56)-x(64))^2)^0.5+1/((x(6)-x(15))^2+(x(31)-x(40))^2+(x(56)-x(65))^2)^0.5+1/((x(6)-x(16))^2+(x(31)-x(41))^2+(x(56)-x(66))^2)^0.5+1/((x(6)-x(17))^2+(x(31)-x(42))^2+(x(56)-x(67))^2)^0.5+1/((x(6)-x(18))^2+(x(31)-x(43))^2+(x(56)-x(68))^2)^0.5+1/((x(6)-x(19))^2+(x(31)-x(44))^2+(x(56)-x(69))^2)^0.5+1/((x(6)-x(20))^2+(x(31)-x(45))^2+(x(56)-x(70))^2)^0.5+1/((x(6)-x(21))^2+(x(31)-x(46))^2+(x(56)-x(71))^2)^0.5+1/((x(6)-x(22))^2+(x(31)-x(47))^2+(x(56)-x(72))^2)^0.5+1/((x(6)-x(23))^2+(x(31)-x(48))^2+(x(56)-x(73))^2)^0.5+1/((x(6)-x(24))^2+(x(31)-x(49))^2+(x(56)-x(74))^2)^0.5+1/((x(6)-x(25))^2+(x(31)-x(50))^2+(x(56)-x(75))^2)^0.5+1/((x(7)-x(8))^2+(x(32)-x(33))^2+(x(57)-x(58))^2)^0.5+1/((x(7)-x(9))^2+(x(32)-x(34))^2+(x(57)-x(59))^2)^0.5+1/((x(7)-x(10))^2+(x(32)-x(35))^2+(x(57)-x(60))^2)^0.5+1/((x(7)-x(11))^2+(x(32)-x(36))^2+(x(57)-x(61))^2)^0.5+1/((x(7)-x(12))^2+(x(32)-x(37))^2+(x(57)-x(62))^2)^0.5+1/((x(7)-x(13))^2+(x(32)-x(38))^2+(x(57)-x(63))^2)^0.5+1/((x(7)-x(14))^2+(x(32)-x(39))^2+(x(57)-x(64))^2)^0.5+1/((x(7)-x(15))^2+(x(32)-x(40))^2+(x(57)-x(65))^2)^0.5+1/((x(7)-x(16))^2+(x(32)-x(41))^2+(x(57)-x(66))^2)^0.5+1/((x(7)-x(17))^2+(x(32)-x(42))^2+(x(57)-x(67))^2)^0.5+1/((x(7)-x(18))^2+(x(32)-x(43))^2+(x(57)-x(68))^2)^0.5+1/((x(7)-x(19))^2+(x(32)-x(44))^2+(x(57)-x(69))^2)^0.5+1/((x(7)-x(20))^2+(x(32)-x(45))^2+(x(57)-x(70))^2)^0.5+1/((x(7)-x(21))^2+(x(32)-x(46))^2+(x(57)-x(71))^2)^0.5+1/((x(7)-x(22))^2+(x(32)-x(47))^2+(x(57)-x(72))^2)^0.5+1/((x(7)-x(23))^2+(x(32)-x(48))^2+(x(57)-x(73))^2)^0.5+1/((x(7)-x(24))^2+(x(32)-x(49))^2+(x(57)-x(74))^2)^0.5+1/((x(7)-x(25))^2+(x(32)-x(50))^2+(x(57)-x(75))^2)^0.5+1/((x(8)-x(9))^2+(x(33)-x(34))^2+(x(58)-x(59))^2)^0.5+1/((x(8)-x(10))^2+(x(33)-x(35))^2+(x(58)-x(60))^2)^0.5+1/((x(8)-x(11))^2+(x(33)-x(36))^2+(x(58)-x(61))^2)^0.5+1/((x(8)-x(12))^2+(x(33)-x(37))^2+(x(58)-x(62))^2)^0.5+1/((x(8)-x(13))^2+(x(33)-x(38))^2+(x(58)-x(63))^2)^0.5+1/((x(8)-x(14))^2+(x(33)-x(39))^2+(x(58)-x(64))^2)^0.5+1/((x(8)-x(15))^2+(x(33)-x(40))^2+(x(58)-x(65))^2)^0.5+1/((x(8)-x(16))^2+(x(33)-x(41))^2+(x(58)-x(66))^2)^0.5+1/((x(8)-x(17))^2+(x(33)-x(42))^2+(x(58)-x(67))^2)^0.5+1/((x(8)-x(18))^2+(x(33)-x(43))^2+(x(58)-x(68))^2)^0.5+1/((x(8)-x(19))^2+(x(33)-x(44))^2+(x(58)-x(69))^2)^0.5+1/((x(8)-x(20))^2+(x(33)-x(45))^2+(x(58)-x(70))^2)^0.5+1/((x(8)-x(21))^2+(x(33)-x(46))^2+(x(58)-x(71))^2)^0.5+1/((x(8)-x(22))^2+(x(33)-x(47))^2+(x(58)-x(72))^2)^0.5+1/((x(8)-x(23))^2+(x(33)-x(48))^2+(x(58)-x(73))^2)^0.5+1/((x(8)-x(24))^2+(x(33)-x(49))^2+(x(58)-x(74))^2)^0.5+1/((x(8)-x(25))^2+(x(33)-x(50))^2+(x(58)-x(75))^2)^0.5+1/((x(9)-x(10))^2+(x(34)-x(35))^2+(x(59)-x(60))^2)^0.5+1/((x(9)-x(11))^2+(x(34)-x(36))^2+(x(59)-x(61))^2)^0.5+1/((x(9)-x(12))^2+(x(34)-x(37))^2+(x(59)-x(62))^2)^0.5+1/((x(9)-x(13))^2+(x(34)-x(38))^2+(x(59)-x(63))^2)^0.5+1/((x(9)-x(14))^2+(x(34)-x(39))^2+(x(59)-x(64))^2)^0.5+1/((x(9)-x(15))^2+(x(34)-x(40))^2+(x(59)-x(65))^2)^0.5+1/((x(9)-x(16))^2+(x(34)-x(41))^2+(x(59)-x(66))^2)^0.5+1/((x(9)-x(17))^2+(x(34)-x(42))^2+(x(59)-x(67))^2)^0.5+1/((x(9)-x(18))^2+(x(34)-x(43))^2+(x(59)-x(68))^2)^0.5+1/((x(9)-x(19))^2+(x(34)-x(44))^2+(x(59)-x(69))^2)^0.5+1/((x(9)-x(20))^2+(x(34)-x(45))^2+(x(59)-x(70))^2)^0.5+1/((x(9)-x(21))^2+(x(34)-x(46))^2+(x(59)-x(71))^2)^0.5+1/((x(9)-x(22))^2+(x(34)-x(47))^2+(x(59)-x(72))^2)^0.5+1/((x(9)-x(23))^2+(x(34)-x(48))^2+(x(59)-x(73))^2)^0.5+1/((x(9)-x(24))^2+(x(34)-x(49))^2+(x(59)-x(74))^2)^0.5+1/((x(9)-x(25))^2+(x(34)-x(50))^2+(x(59)-x(75))^2)^0.5+1/((x(10)-x(11))^2+(x(35)-x(36))^2+(x(60)-x(61))^2)^0.5+1/((x(10)-x(12))^2+(x(35)-x(37))^2+(x(60)-x(62))^2)^0.5+1/((x(10)-x(13))^2+(x(35)-x(38))^2+(x(60)-x(63))^2)^0.5+1/((x(10)-x(14))^2+(x(35)-x(39))^2+(x(60)-x(64))^2)^0.5+1/((x(10)-x(15))^2+(x(35)-x(40))^2+(x(60)-x(65))^2)^0.5+1/((x(10)-x(16))^2+(x(35)-x(41))^2+(x(60)-x(66))^2)^0.5+1/((x(10)-x(17))^2+(x(35)-x(42))^2+(x(60)-x(67))^2)^0.5+1/((x(10)-x(18))^2+(x(35)-x(43))^2+(x(60)-x(68))^2)^0.5+1/((x(10)-x(19))^2+(x(35)-x(44))^2+(x(60)-x(69))^2)^0.5+1/((x(10)-x(20))^2+(x(35)-x(45))^2+(x(60)-x(70))^2)^0.5+1/((x(10)-x(21))^2+(x(35)-x(46))^2+(x(60)-x(71))^2)^0.5+1/((x(10)-x(22))^2+(x(35)-x(47))^2+(x(60)-x(72))^2)^0.5+1/((x(10)-x(23))^2+(x(35)-x(48))^2+(x(60)-x(73))^2)^0.5+1/((x(10)-x(24))^2+(x(35)-x(49))^2+(x(60)-x(74))^2)^0.5+1/((x(10)-x(25))^2+(x(35)-x(50))^2+(x(60)-x(75))^2)^0.5+1/((x(11)-x(12))^2+(x(36)-x(37))^2+(x(61)-x(62))^2)^0.5+1/((x(11)-x(13))^2+(x(36)-x(38))^2+(x(61)-x(63))^2)^0.5+1/((x(11)-x(14))^2+(x(36)-x(39))^2+(x(61)-x(64))^2)^0.5+1/((x(11)-x(15))^2+(x(36)-x(40))^2+(x(61)-x(65))^2)^0.5+1/((x(11)-x(16))^2+(x(36)-x(41))^2+(x(61)-x(66))^2)^0.5+1/((x(11)-x(17))^2+(x(36)-x(42))^2+(x(61)-x(67))^2)^0.5+1/((x(11)-x(18))^2+(x(36)-x(43))^2+(x(61)-x(68))^2)^0.5+1/((x(11)-x(19))^2+(x(36)-x(44))^2+(x(61)-x(69))^2)^0.5+1/((x(11)-x(20))^2+(x(36)-x(45))^2+(x(61)-x(70))^2)^0.5+1/((x(11)-x(21))^2+(x(36)-x(46))^2+(x(61)-x(71))^2)^0.5+1/((x(11)-x(22))^2+(x(36)-x(47))^2+(x(61)-x(72))^2)^0.5+1/((x(11)-x(23))^2+(x(36)-x(48))^2+(x(61)-x(73))^2)^0.5+1/((x(11)-x(24))^2+(x(36)-x(49))^2+(x(61)-x(74))^2)^0.5+1/((x(11)-x(25))^2+(x(36)-x(50))^2+(x(61)-x(75))^2)^0.5+1/((x(12)-x(13))^2+(x(37)-x(38))^2+(x(62)-x(63))^2)^0.5+1/((x(12)-x(14))^2+(x(37)-x(39))^2+(x(62)-x(64))^2)^0.5+1/((x(12)-x(15))^2+(x(37)-x(40))^2+(x(62)-x(65))^2)^0.5+1/((x(12)-x(16))^2+(x(37)-x(41))^2+(x(62)-x(66))^2)^0.5+1/((x(12)-x(17))^2+(x(37)-x(42))^2+(x(62)-x(67))^2)^0.5+1/((x(12)-x(18))^2+(x(37)-x(43))^2+(x(62)-x(68))^2)^0.5+1/((x(12)-x(19))^2+(x(37)-x(44))^2+(x(62)-x(69))^2)^0.5+1/((x(12)-x(20))^2+(x(37)-x(45))^2+(x(62)-x(70))^2)^0.5+1/((x(12)-x(21))^2+(x(37)-x(46))^2+(x(62)-x(71))^2)^0.5+1/((x(12)-x(22))^2+(x(37)-x(47))^2+(x(62)-x(72))^2)^0.5+1/((x(12)-x(23))^2+(x(37)-x(48))^2+(x(62)-x(73))^2)^0.5+1/((x(12)-x(24))^2+(x(37)-x(49))^2+(x(62)-x(74))^2)^0.5+1/((x(12)-x(25))^2+(x(37)-x(50))^2+(x(62)-x(75))^2)^0.5+1/((x(13)-x(14))^2+(x(38)-x(39))^2+(x(63)-x(64))^2)^0.5+1/((x(13)-x(15))^2+(x(38)-x(40))^2+(x(63)-x(65))^2)^0.5+1/((x(13)-x(16))^2+(x(38)-x(41))^2+(x(63)-x(66))^2)^0.5+1/((x(13)-x(17))^2+(x(38)-x(42))^2+(x(63)-x(67))^2)^0.5+1/((x(13)-x(18))^2+(x(38)-x(43))^2+(x(63)-x(68))^2)^0.5+1/((x(13)-x(19))^2+(x(38)-x(44))^2+(x(63)-x(69))^2)^0.5+1/((x(13)-x(20))^2+(x(38)-x(45))^2+(x(63)-x(70))^2)^0.5+1/((x(13)-x(21))^2+(x(38)-x(46))^2+(x(63)-x(71))^2)^0.5+1/((x(13)-x(22))^2+(x(38)-x(47))^2+(x(63)-x(72))^2)^0.5+1/((x(13)-x(23))^2+(x(38)-x(48))^2+(x(63)-x(73))^2)^0.5+1/((x(13)-x(24))^2+(x(38)-x(49))^2+(x(63)-x(74))^2)^0.5+1/((x(13)-x(25))^2+(x(38)-x(50))^2+(x(63)-x(75))^2)^0.5+1/((x(14)-x(15))^2+(x(39)-x(40))^2+(x(64)-x(65))^2)^0.5+1/((x(14)-x(16))^2+(x(39)-x(41))^2+(x(64)-x(66))^2)^0.5+1/((x(14)-x(17))^2+(x(39)-x(42))^2+(x(64)-x(67))^2)^0.5+1/((x(14)-x(18))^2+(x(39)-x(43))^2+(x(64)-x(68))^2)^0.5+1/((x(14)-x(19))^2+(x(39)-x(44))^2+(x(64)-x(69))^2)^0.5+1/((x(14)-x(20))^2+(x(39)-x(45))^2+(x(64)-x(70))^2)^0.5+1/((x(14)-x(21))^2+(x(39)-x(46))^2+(x(64)-x(71))^2)^0.5+1/((x(14)-x(22))^2+(x(39)-x(47))^2+(x(64)-x(72))^2)^0.5+1/((x(14)-x(23))^2+(x(39)-x(48))^2+(x(64)-x(73))^2)^0.5+1/((x(14)-x(24))^2+(x(39)-x(49))^2+(x(64)-x(74))^2)^0.5+1/((x(14)-x(25))^2+(x(39)-x(50))^2+(x(64)-x(75))^2)^0.5+1/((x(15)-x(16))^2+(x(40)-x(41))^2+(x(65)-x(66))^2)^0.5+1/((x(15)-x(17))^2+(x(40)-x(42))^2+(x(65)-x(67))^2)^0.5+1/((x(15)-x(18))^2+(x(40)-x(43))^2+(x(65)-x(68))^2)^0.5+1/((x(15)-x(19))^2+(x(40)-x(44))^2+(x(65)-x(69))^2)^0.5+1/((x(15)-x(20))^2+(x(40)-x(45))^2+(x(65)-x(70))^2)^0.5+1/((x(15)-x(21))^2+(x(40)-x(46))^2+(x(65)-x(71))^2)^0.5+1/((x(15)-x(22))^2+(x(40)-x(47))^2+(x(65)-x(72))^2)^0.5+1/((x(15)-x(23))^2+(x(40)-x(48))^2+(x(65)-x(73))^2)^0.5+1/((x(15)-x(24))^2+(x(40)-x(49))^2+(x(65)-x(74))^2)^0.5+1/((x(15)-x(25))^2+(x(40)-x(50))^2+(x(65)-x(75))^2)^0.5+1/((x(16)-x(17))^2+(x(41)-x(42))^2+(x(66)-x(67))^2)^0.5+1/((x(16)-x(18))^2+(x(41)-x(43))^2+(x(66)-x(68))^2)^0.5+1/((x(16)-x(19))^2+(x(41)-x(44))^2+(x(66)-x(69))^2)^0.5+1/((x(16)-x(20))^2+(x(41)-x(45))^2+(x(66)-x(70))^2)^0.5+1/((x(16)-x(21))^2+(x(41)-x(46))^2+(x(66)-x(71))^2)^0.5+1/((x(16)-x(22))^2+(x(41)-x(47))^2+(x(66)-x(72))^2)^0.5+1/((x(16)-x(23))^2+(x(41)-x(48))^2+(x(66)-x(73))^2)^0.5+1/((x(16)-x(24))^2+(x(41)-x(49))^2+(x(66)-x(74))^2)^0.5+1/((x(16)-x(25))^2+(x(41)-x(50))^2+(x(66)-x(75))^2)^0.5+1/((x(17)-x(18))^2+(x(42)-x(43))^2+(x(67)-x(68))^2)^0.5+1/((x(17)-x(19))^2+(x(42)-x(44))^2+(x(67)-x(69))^2)^0.5+1/((x(17)-x(20))^2+(x(42)-x(45))^2+(x(67)-x(70))^2)^0.5+1/((x(17)-x(21))^2+(x(42)-x(46))^2+(x(67)-x(71))^2)^0.5+1/((x(17)-x(22))^2+(x(42)-x(47))^2+(x(67)-x(72))^2)^0.5+1/((x(17)-x(23))^2+(x(42)-x(48))^2+(x(67)-x(73))^2)^0.5+1/((x(17)-x(24))^2+(x(42)-x(49))^2+(x(67)-x(74))^2)^0.5+1/((x(17)-x(25))^2+(x(42)-x(50))^2+(x(67)-x(75))^2)^0.5+1/((x(18)-x(19))^2+(x(43)-x(44))^2+(x(68)-x(69))^2)^0.5+1/((x(18)-x(20))^2+(x(43)-x(45))^2+(x(68)-x(70))^2)^0.5+1/((x(18)-x(21))^2+(x(43)-x(46))^2+(x(68)-x(71))^2)^0.5+1/((x(18)-x(22))^2+(x(43)-x(47))^2+(x(68)-x(72))^2)^0.5+1/((x(18)-x(23))^2+(x(43)-x(48))^2+(x(68)-x(73))^2)^0.5+1/((x(18)-x(24))^2+(x(43)-x(49))^2+(x(68)-x(74))^2)^0.5+1/((x(18)-x(25))^2+(x(43)-x(50))^2+(x(68)-x(75))^2)^0.5+1/((x(19)-x(20))^2+(x(44)-x(45))^2+(x(69)-x(70))^2)^0.5+1/((x(19)-x(21))^2+(x(44)-x(46))^2+(x(69)-x(71))^2)^0.5+1/((x(19)-x(22))^2+(x(44)-x(47))^2+(x(69)-x(72))^2)^0.5+1/((x(19)-x(23))^2+(x(44)-x(48))^2+(x(69)-x(73))^2)^0.5+1/((x(19)-x(24))^2+(x(44)-x(49))^2+(x(69)-x(74))^2)^0.5+1/((x(19)-x(25))^2+(x(44)-x(50))^2+(x(69)-x(75))^2)^0.5+1/((x(20)-x(21))^2+(x(45)-x(46))^2+(x(70)-x(71))^2)^0.5+1/((x(20)-x(22))^2+(x(45)-x(47))^2+(x(70)-x(72))^2)^0.5+1/((x(20)-x(23))^2+(x(45)-x(48))^2+(x(70)-x(73))^2)^0.5+1/((x(20)-x(24))^2+(x(45)-x(49))^2+(x(70)-x(74))^2)^0.5+1/((x(20)-x(25))^2+(x(45)-x(50))^2+(x(70)-x(75))^2)^0.5+1/((x(21)-x(22))^2+(x(46)-x(47))^2+(x(71)-x(72))^2)^0.5+1/((x(21)-x(23))^2+(x(46)-x(48))^2+(x(71)-x(73))^2)^0.5+1/((x(21)-x(24))^2+(x(46)-x(49))^2+(x(71)-x(74))^2)^0.5+1/((x(21)-x(25))^2+(x(46)-x(50))^2+(x(71)-x(75))^2)^0.5+1/((x(22)-x(23))^2+(x(47)-x(48))^2+(x(72)-x(73))^2)^0.5+1/((x(22)-x(24))^2+(x(47)-x(49))^2+(x(72)-x(74))^2)^0.5+1/((x(22)-x(25))^2+(x(47)-x(50))^2+(x(72)-x(75))^2)^0.5+1/((x(23)-x(24))^2+(x(48)-x(49))^2+(x(73)-x(74))^2)^0.5+1/((x(23)-x(25))^2+(x(48)-x(50))^2+(x(73)-x(75))^2)^0.5+1/((x(24)-x(25))^2+(x(49)-x(50))^2+(x(74)-x(75))^2)^0.5;

% Bounds
lb = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)^2+x(26)^2+x(51)^2;
             x(2)^2+x(27)^2+x(52)^2;
             x(3)^2+x(28)^2+x(53)^2;
             x(4)^2+x(29)^2+x(54)^2;
             x(5)^2+x(30)^2+x(55)^2;
             x(6)^2+x(31)^2+x(56)^2;
             x(7)^2+x(32)^2+x(57)^2;
             x(8)^2+x(33)^2+x(58)^2;
             x(9)^2+x(34)^2+x(59)^2;
             x(10)^2+x(35)^2+x(60)^2;
             x(11)^2+x(36)^2+x(61)^2;
             x(12)^2+x(37)^2+x(62)^2;
             x(13)^2+x(38)^2+x(63)^2;
             x(14)^2+x(39)^2+x(64)^2;
             x(15)^2+x(40)^2+x(65)^2;
             x(16)^2+x(41)^2+x(66)^2;
             x(17)^2+x(42)^2+x(67)^2;
             x(18)^2+x(43)^2+x(68)^2;
             x(19)^2+x(44)^2+x(69)^2;
             x(20)^2+x(45)^2+x(70)^2;
             x(21)^2+x(46)^2+x(71)^2;
             x(22)^2+x(47)^2+x(72)^2;
             x(23)^2+x(48)^2+x(73)^2;
             x(24)^2+x(49)^2+x(74)^2;
             x(25)^2+x(50)^2+x(75)^2];
cl = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';
cu = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC';

% Starting Guess
x0 = [0.239180341590991,0.366795705695488,-0.824393694345008,-0.20445364152556,-0.213822736723748,0.0552164684243268,-0.586906863272324,0.298593602647523,0.355869249309419,-0.739872584978883,0.781972693719759,-0.842050067383099,0.763853183973836,0.0707385883845137,0.676966872258273,-0.615239159391388,0.194562217624882,-0.000422232856522465,-0.0710616666815774,-0.802987831773153,-0.344305154696255,-0.533805829063186,0.665382373979989,0.388420087049812,-0.682029983840943,0.446611486489583,-0.552573627870873,-0.270012939754188,0.614265045675796,0.787195952709942,0.335681675744966,0.809619787722586,-0.378664598119689,0.159642467758326,-0.000979349466686923,-0.00924905564272029,-0.454232023429031,-0.042600453543173,-0.91720202046222,0.727211440768476,-0.741026339314474,0.304537885768853,0.834446009909628,-0.127224428134585,0.34535116139819,0.417792969107124,0.720899917808122,0.72200222898579,0.535334038601125,-0.427520073559083,-0.862166424962131,0.748413853469436,-0.497461605643582,-0.762152978166359,0.578448242539515,0.940355759371844,-0.00749220741006433,0.876045080226371,-0.920799304888955,0.672746310931013,0.623244062343463,-0.290903683221246,-0.643982542225292,-0.392092470947082,0.113487330924153,0.268999518946722,0.932417406317752,0.551089537430458,0.989325115628965,0.485739762985462,0.840775234776954,-0.441989417704098,-0.189681516591112,-0.750031534731191,0.593347864111736]';

% Options
opts = struct('probname','elec25');
opts.sense = 'min';