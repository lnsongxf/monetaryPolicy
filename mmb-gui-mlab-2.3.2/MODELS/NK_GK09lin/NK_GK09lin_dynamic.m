function [residual, g1, g2, g3] = NK_GK09lin_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [M_.exo_nbr by nperiods] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(92, 1);
T3 = (-1);
T348 = T3/((1-params(36)*params(55))*(1-params(55)));
T395 = params(86)*params(51)*params(57)^(params(54)*(1-params(52)));
T417 = params(57)^((1-params(52))*(params(51)-1))*params(51)*params(54)/(1-params(51))*((1-params(51)*params(57)^((1-params(52))*(params(51)-1)))/(1-params(51)))^((-params(54))/(1-params(51)));
T451 = params(88)*params(81)*params(36)*params(51)*params(57)^(params(52)-1);
lhs =y(105);
rhs =4*y(62);
residual(1)= lhs-rhs;
lhs =y(106);
rhs =y(61)+y(8)+y(27)+y(28);
residual(2)= lhs-rhs;
lhs =y(107);
rhs =4*y(61);
residual(3)= lhs-rhs;
lhs =y(108);
rhs =y(57)-y(94);
residual(4)= lhs-rhs;
lhs =y(109);
rhs =y(57);
residual(5)= lhs-rhs;
lhs =y(105);
rhs =params(32)*x(it_, 4)+params(31)*y(163)+params(30)*y(162)+params(29)*y(161)+params(28)*y(154)+params(27)*y(31)+params(26)*y(30)+params(25)*y(29)+params(24)*y(26)+y(109)*params(23)+params(22)*y(160)+params(21)*y(159)+params(20)*y(158)+params(19)*y(153)+params(18)*y(34)+params(17)*y(33)+params(16)*y(32)+params(15)*y(25)+y(108)*params(14)+params(13)*y(157)+params(12)*y(156)+params(11)*y(155)+params(10)*y(152)+params(6)*y(24)+y(107)*params(5)+params(1)*y(23)+params(2)*y(35)+params(3)*y(36)+params(4)*y(37)+params(7)*y(38)+params(8)*y(39)+params(9)*y(40);
residual(6)= lhs-rhs;
lhs =params(64)*y(41);
rhs =(1-params(35))*params(36)*(params(67)*y(134)-params(62)*y(43))+(1-params(35))*params(36)*(params(67)-params(62))*y(140)+params(64)*params(35)*params(36)*params(66)*(y(140)+y(136)+y(133));
residual(7)= lhs-rhs;
lhs =params(63)*y(45);
rhs =params(62)*(1-params(35))*params(36)*params(81)*(y(43)+y(140))+params(63)*params(35)*params(36)*params(65)*(y(140)+y(137)+y(135));
residual(8)= lhs-rhs;
lhs =params(37)*params(60)*y(48)-params(64)*params(60)*(y(41)+y(48));
rhs =params(63)*y(45);
residual(9)= lhs-rhs;
lhs =params(65)*y(47);
rhs =params(62)*y(1)+params(60)*(params(67)*y(42)-params(62)*y(1))+(params(67)-params(62))*params(60)*y(3);
residual(10)= lhs-rhs;
lhs =y(46);
rhs =y(47)+y(48)-y(3);
residual(11)= lhs-rhs;
lhs =y(49);
rhs =params(77)/params(76)*y(50)+params(78)/params(76)*y(51)-x(it_, 3);
residual(12)= lhs-rhs;
lhs =y(50);
rhs =y(47)+y(4);
residual(13)= lhs-rhs;
lhs =y(51);
rhs =y(52)+y(53)+y(63);
residual(14)= lhs-rhs;
lhs =params(67)*params(74)*(y(42)+y(5)+y(6));
rhs =params(39)*params(53)*params(75)*(y(65)+y(74))+params(74)*(y(6)+y(52)+y(63))-params(74)*params(68)*(y(6)+y(63)+y(54));
residual(15)= lhs-rhs;
lhs =y(74);
rhs =y(64)+params(39)*y(55)+y(63)*params(39)+y(6)*params(39)+(1-params(39))*y(56);
residual(16)= lhs-rhs;
lhs =y(54)*params(68)/(params(68)-params(40));
rhs =y(55)*(1+params(42));
residual(17)= lhs-rhs;
lhs =y(65)+y(74)-y(55);
rhs =y(6)+y(63)+y(55)*params(42);
residual(18)= lhs-rhs;
lhs =y(77);
rhs =params(56)*y(58)-params(74)*params(68)*(y(54)+y(63)+y(6));
residual(19)= lhs-rhs;
lhs =y(52);
rhs =params(44)*(y(77)-y(12))/params(56)-params(36)*params(44)*(y(143)-y(77))/params(56);
residual(20)= lhs-rhs;
lhs =y(53)*params(74);
rhs =y(77)+params(74)*y(6)+y(63)*params(74);
residual(21)= lhs-rhs;
lhs =y(44);
rhs =T348*(y(59)-params(55)*y(7)-params(36)*params(55)*(y(138)-params(55)*y(59)));
residual(22)= lhs-rhs;
lhs =y(67);
rhs =y(44)-y(2);
residual(23)= lhs-rhs;
residual(24) = y(43)+y(140);
lhs =y(57)*params(75);
rhs =params(56)*y(58)+y(59)*params(79);
residual(25)= lhs-rhs;
lhs =y(65)+y(74)-y(56);
rhs =(-y(44))+y(56)*params(45);
residual(26)= lhs-rhs;
lhs =y(65);
rhs =y(60)-y(61);
residual(27)= lhs-rhs;
lhs =y(75);
rhs =(-y(65));
residual(28)= lhs-rhs;
lhs =y(57);
rhs =y(74)+y(76);
residual(29)= lhs-rhs;
lhs =y(76)*params(86);
rhs =T395*(y(8)*params(54)*(-params(52))+y(61)*params(54)+y(11))+T417*(y(61)*(params(51)-1)+y(8)*params(52)*(1-params(51)));
residual(30)= lhs-rhs;
lhs =params(87)*y(71);
rhs =params(53)*params(75)*(y(57)+y(65))+params(87)*params(81)*params(36)*params(51)*(y(140)-y(61)*params(54)*params(52)+params(54)*y(139)+y(141));
residual(31)= lhs-rhs;
lhs =params(88)*y(72);
rhs =y(57)*params(75)+T451*(y(140)+y(61)*params(52)*(1-params(54))-y(139)*(1-params(54))+y(142));
residual(32)= lhs-rhs;
lhs =y(73);
rhs =y(61)+y(71)-y(72);
residual(33)= lhs-rhs;
lhs =y(61);
rhs =y(8)*params(51)*params(52)+(1-params(51))*y(73);
residual(34)= lhs-rhs;
lhs =y(62);
rhs =y(43)+y(139);
residual(35)= lhs-rhs;
lhs =y(66);
rhs =y(134)-y(43);
residual(36)= lhs-rhs;
lhs =y(64);
rhs =params(46)*y(10)-x(it_, 1);
residual(37)= lhs-rhs;
lhs =y(63);
rhs =params(47)*y(9)-x(it_, 2);
residual(38)= lhs-rhs;
lhs =y(68);
rhs =y(134);
residual(39)= lhs-rhs;
lhs =params(82)*y(69);
rhs =y(66)*(-params(83))*params(61);
residual(40)= lhs-rhs;
lhs =y(52)+y(53);
rhs =y(49)+y(70);
residual(41)= lhs-rhs;
lhs =y(69)+y(70);
rhs =y(48);
residual(42)= lhs-rhs;
lhs =params(64)*y(78);
rhs =(1-params(35))*params(36)*(params(67)*y(145)-params(62)*y(80))+(1-params(35))*params(36)*(params(67)-params(62))*y(150)+params(64)*params(35)*params(36)*params(66)*(y(150)+y(146)+y(144));
residual(43)= lhs-rhs;
lhs =params(63)*y(83);
rhs =params(62)*(1-params(35))*params(36)*params(81)*(y(80)+y(150))+params(63)*params(35)*params(36)*params(65)*(y(150)+y(148)+y(147));
residual(44)= lhs-rhs;
lhs =params(37)*params(60)*y(85)-params(64)*params(60)*(y(78)+y(85));
rhs =params(63)*y(83);
residual(45)= lhs-rhs;
lhs =params(65)*y(84);
rhs =params(62)*y(13)+params(60)*(params(67)*y(79)-params(62)*y(13))+(params(67)-params(62))*params(60)*y(15);
residual(46)= lhs-rhs;
lhs =y(82);
rhs =y(84)+y(85)-y(15);
residual(47)= lhs-rhs;
lhs =y(86);
rhs =params(104)/params(103)*y(87)+params(105)/params(103)*y(88)-x(it_, 3);
residual(48)= lhs-rhs;
lhs =y(87);
rhs =y(84)+y(16);
residual(49)= lhs-rhs;
lhs =y(88);
rhs =y(89)+y(90);
residual(50)= lhs-rhs;
lhs =params(67)*params(94)*(y(79)+y(17)+y(18));
rhs =y(94)*params(39)*params(89)*params(90)+params(94)*(y(18)+y(89)+y(97))-params(68)*params(94)*(y(18)+y(97)+y(91));
residual(51)= lhs-rhs;
lhs =y(94);
rhs =y(98)+params(39)*y(92)+params(39)*y(97)+params(39)*y(18)+(1-params(39))*y(93);
residual(52)= lhs-rhs;
lhs =y(91)*params(68)/(params(68)-params(106));
rhs =(1+params(42))*y(92);
residual(53)= lhs-rhs;
lhs =y(94)-y(92);
rhs =y(18)+y(97)+params(42)*y(92);
residual(54)= lhs-rhs;
lhs =y(104);
rhs =params(95)*y(95)-params(68)*params(94)*(y(91)+y(18)+y(97));
residual(55)= lhs-rhs;
lhs =y(89);
rhs =params(44)*(y(104)-y(22))/params(95)-params(36)*params(44)*(y(151)-y(104))/params(95);
residual(56)= lhs-rhs;
lhs =y(90)*params(94);
rhs =y(104)+params(94)*y(18)+params(94)*y(97);
residual(57)= lhs-rhs;
lhs =y(81);
rhs =T348*(y(96)-params(55)*y(19)-params(36)*params(55)*(y(149)-params(55)*y(96)));
residual(58)= lhs-rhs;
lhs =y(100);
rhs =y(81)-y(14);
residual(59)= lhs-rhs;
residual(60) = y(80)+y(150);
lhs =y(94)*params(90);
rhs =params(95)*y(95)+y(96)*params(101);
residual(61)= lhs-rhs;
lhs =y(94)-y(93);
rhs =(-y(81))+params(45)*y(93);
residual(62)= lhs-rhs;
lhs =y(99);
rhs =y(145)-y(80);
residual(63)= lhs-rhs;
lhs =y(98);
rhs =params(46)*y(21)-x(it_, 1);
residual(64)= lhs-rhs;
lhs =y(97);
rhs =params(47)*y(20)-x(it_, 2);
residual(65)= lhs-rhs;
lhs =y(101);
rhs =y(145);
residual(66)= lhs-rhs;
lhs =params(82)*y(102);
rhs =(-params(83))*params(61)*y(99);
residual(67)= lhs-rhs;
lhs =y(89)+y(90);
rhs =y(86)+y(103);
residual(68)= lhs-rhs;
lhs =y(102)+y(103);
rhs =y(85);
residual(69)= lhs-rhs;
lhs =y(110);
rhs =y(152);
residual(70)= lhs-rhs;
lhs =y(111);
rhs =y(155);
residual(71)= lhs-rhs;
lhs =y(112);
rhs =y(156);
residual(72)= lhs-rhs;
lhs =y(113);
rhs =y(153);
residual(73)= lhs-rhs;
lhs =y(114);
rhs =y(158);
residual(74)= lhs-rhs;
lhs =y(115);
rhs =y(159);
residual(75)= lhs-rhs;
lhs =y(116);
rhs =y(154);
residual(76)= lhs-rhs;
lhs =y(117);
rhs =y(161);
residual(77)= lhs-rhs;
lhs =y(118);
rhs =y(162);
residual(78)= lhs-rhs;
lhs =y(119);
rhs =y(8);
residual(79)= lhs-rhs;
lhs =y(120);
rhs =y(27);
residual(80)= lhs-rhs;
lhs =y(121);
rhs =y(26);
residual(81)= lhs-rhs;
lhs =y(122);
rhs =y(29);
residual(82)= lhs-rhs;
lhs =y(123);
rhs =y(30);
residual(83)= lhs-rhs;
lhs =y(124);
rhs =y(25);
residual(84)= lhs-rhs;
lhs =y(125);
rhs =y(32);
residual(85)= lhs-rhs;
lhs =y(126);
rhs =y(33);
residual(86)= lhs-rhs;
lhs =y(127);
rhs =y(23);
residual(87)= lhs-rhs;
lhs =y(128);
rhs =y(35);
residual(88)= lhs-rhs;
lhs =y(129);
rhs =y(36);
residual(89)= lhs-rhs;
lhs =y(130);
rhs =y(24);
residual(90)= lhs-rhs;
lhs =y(131);
rhs =y(38);
residual(91)= lhs-rhs;
lhs =y(132);
rhs =y(39);
residual(92)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(92, 167);

  %
  % Jacobian matrix
  %

  g1(1,62)=(-4);
  g1(1,105)=1;
  g1(2,8)=T3;
  g1(2,61)=T3;
  g1(2,106)=1;
  g1(2,27)=T3;
  g1(2,28)=T3;
  g1(3,61)=(-4);
  g1(3,107)=1;
  g1(4,57)=T3;
  g1(4,94)=1;
  g1(4,108)=1;
  g1(5,57)=T3;
  g1(5,109)=1;
  g1(6,23)=(-params(1));
  g1(6,105)=1;
  g1(6,24)=(-params(6));
  g1(6,107)=(-params(5));
  g1(6,152)=(-params(10));
  g1(6,25)=(-params(15));
  g1(6,108)=(-params(14));
  g1(6,153)=(-params(19));
  g1(6,26)=(-params(24));
  g1(6,109)=(-params(23));
  g1(6,154)=(-params(28));
  g1(6,167)=(-params(32));
  g1(6,155)=(-params(11));
  g1(6,156)=(-params(12));
  g1(6,157)=(-params(13));
  g1(6,158)=(-params(20));
  g1(6,159)=(-params(21));
  g1(6,160)=(-params(22));
  g1(6,161)=(-params(29));
  g1(6,162)=(-params(30));
  g1(6,163)=(-params(31));
  g1(6,29)=(-params(25));
  g1(6,30)=(-params(26));
  g1(6,31)=(-params(27));
  g1(6,32)=(-params(16));
  g1(6,33)=(-params(17));
  g1(6,34)=(-params(18));
  g1(6,35)=(-params(2));
  g1(6,36)=(-params(3));
  g1(6,37)=(-params(4));
  g1(6,38)=(-params(7));
  g1(6,39)=(-params(8));
  g1(6,40)=(-params(9));
  g1(7,41)=params(64);
  g1(7,133)=(-(params(64)*params(35)*params(36)*params(66)));
  g1(7,134)=(-((1-params(35))*params(36)*params(67)));
  g1(7,43)=(-((1-params(35))*params(36)*(-params(62))));
  g1(7,136)=(-(params(64)*params(35)*params(36)*params(66)));
  g1(7,140)=(-((1-params(35))*params(36)*(params(67)-params(62))+params(64)*params(35)*params(36)*params(66)));
  g1(8,43)=(-(params(62)*(1-params(35))*params(36)*params(81)));
  g1(8,45)=params(63);
  g1(8,135)=(-(params(63)*params(35)*params(36)*params(65)));
  g1(8,137)=(-(params(63)*params(35)*params(36)*params(65)));
  g1(8,140)=(-(params(62)*(1-params(35))*params(36)*params(81)+params(63)*params(35)*params(36)*params(65)));
  g1(9,41)=(-(params(64)*params(60)));
  g1(9,45)=(-params(63));
  g1(9,48)=params(37)*params(60)-params(64)*params(60);
  g1(10,42)=(-(params(67)*params(60)));
  g1(10,1)=(-(params(62)+params(60)*(-params(62))));
  g1(10,47)=params(65);
  g1(10,3)=(-((params(67)-params(62))*params(60)));
  g1(11,46)=1;
  g1(11,47)=T3;
  g1(11,3)=1;
  g1(11,48)=T3;
  g1(12,49)=1;
  g1(12,50)=(-(params(77)/params(76)));
  g1(12,51)=(-(params(78)/params(76)));
  g1(12,166)=1;
  g1(13,47)=T3;
  g1(13,4)=T3;
  g1(13,50)=1;
  g1(14,51)=1;
  g1(14,52)=T3;
  g1(14,53)=T3;
  g1(14,63)=T3;
  g1(15,42)=params(67)*params(74);
  g1(15,5)=params(67)*params(74);
  g1(15,52)=(-params(74));
  g1(15,6)=params(67)*params(74)-(params(74)-params(74)*params(68));
  g1(15,54)=params(74)*params(68);
  g1(15,63)=(-(params(74)-params(74)*params(68)));
  g1(15,65)=(-(params(39)*params(53)*params(75)));
  g1(15,74)=(-(params(39)*params(53)*params(75)));
  g1(16,6)=(-params(39));
  g1(16,55)=(-params(39));
  g1(16,56)=(-(1-params(39)));
  g1(16,63)=(-params(39));
  g1(16,64)=T3;
  g1(16,74)=1;
  g1(17,54)=params(68)/(params(68)-params(40));
  g1(17,55)=(-(1+params(42)));
  g1(18,6)=T3;
  g1(18,55)=T3-params(42);
  g1(18,63)=T3;
  g1(18,65)=1;
  g1(18,74)=1;
  g1(19,6)=params(74)*params(68);
  g1(19,54)=params(74)*params(68);
  g1(19,58)=(-params(56));
  g1(19,63)=params(74)*params(68);
  g1(19,77)=1;
  g1(20,52)=1;
  g1(20,12)=(-((-params(44))/params(56)));
  g1(20,77)=(-(params(44)/params(56)-(-(params(36)*params(44)))/params(56)));
  g1(20,143)=params(36)*params(44)/params(56);
  g1(21,6)=(-params(74));
  g1(21,53)=params(74);
  g1(21,63)=(-params(74));
  g1(21,77)=T3;
  g1(22,44)=1;
  g1(22,7)=(-(T348*(-params(55))));
  g1(22,59)=(-(T348*(1-params(36)*params(55)*(-params(55)))));
  g1(22,138)=(-(T348*(-(params(36)*params(55)))));
  g1(23,2)=1;
  g1(23,44)=T3;
  g1(23,67)=1;
  g1(24,43)=1;
  g1(24,140)=1;
  g1(25,57)=params(75);
  g1(25,58)=(-params(56));
  g1(25,59)=(-params(79));
  g1(26,44)=1;
  g1(26,56)=T3-params(45);
  g1(26,65)=1;
  g1(26,74)=1;
  g1(27,60)=T3;
  g1(27,61)=1;
  g1(27,65)=1;
  g1(28,65)=1;
  g1(28,75)=1;
  g1(29,57)=1;
  g1(29,74)=T3;
  g1(29,76)=T3;
  g1(30,8)=(-(T395*params(54)*(-params(52))+T417*params(52)*(1-params(51))));
  g1(30,61)=(-(params(54)*T395+(params(51)-1)*T417));
  g1(30,11)=(-T395);
  g1(30,76)=params(86);
  g1(31,57)=(-(params(53)*params(75)));
  g1(31,61)=(-(params(87)*params(81)*params(36)*params(51)*(-(params(54)*params(52)))));
  g1(31,139)=(-(params(54)*params(87)*params(81)*params(36)*params(51)));
  g1(31,65)=(-(params(53)*params(75)));
  g1(31,140)=(-(params(87)*params(81)*params(36)*params(51)));
  g1(31,71)=params(87);
  g1(31,141)=(-(params(87)*params(81)*params(36)*params(51)));
  g1(32,57)=(-params(75));
  g1(32,61)=(-(T451*params(52)*(1-params(54))));
  g1(32,139)=(-(T451*(-(1-params(54)))));
  g1(32,140)=(-T451);
  g1(32,72)=params(88);
  g1(32,142)=(-T451);
  g1(33,61)=T3;
  g1(33,71)=T3;
  g1(33,72)=1;
  g1(33,73)=1;
  g1(34,8)=(-(params(51)*params(52)));
  g1(34,61)=1;
  g1(34,73)=(-(1-params(51)));
  g1(35,43)=T3;
  g1(35,139)=T3;
  g1(35,62)=1;
  g1(36,134)=T3;
  g1(36,43)=1;
  g1(36,66)=1;
  g1(37,10)=(-params(46));
  g1(37,64)=1;
  g1(37,164)=1;
  g1(38,9)=(-params(47));
  g1(38,63)=1;
  g1(38,165)=1;
  g1(39,134)=T3;
  g1(39,68)=1;
  g1(40,66)=(-((-params(83))*params(61)));
  g1(40,69)=params(82);
  g1(41,49)=T3;
  g1(41,52)=1;
  g1(41,53)=1;
  g1(41,70)=T3;
  g1(42,48)=T3;
  g1(42,69)=1;
  g1(42,70)=1;
  g1(43,78)=params(64);
  g1(43,144)=(-(params(64)*params(35)*params(36)*params(66)));
  g1(43,145)=(-((1-params(35))*params(36)*params(67)));
  g1(43,80)=(-((1-params(35))*params(36)*(-params(62))));
  g1(43,146)=(-(params(64)*params(35)*params(36)*params(66)));
  g1(43,150)=(-((1-params(35))*params(36)*(params(67)-params(62))+params(64)*params(35)*params(36)*params(66)));
  g1(44,80)=(-(params(62)*(1-params(35))*params(36)*params(81)));
  g1(44,83)=params(63);
  g1(44,147)=(-(params(63)*params(35)*params(36)*params(65)));
  g1(44,148)=(-(params(63)*params(35)*params(36)*params(65)));
  g1(44,150)=(-(params(62)*(1-params(35))*params(36)*params(81)+params(63)*params(35)*params(36)*params(65)));
  g1(45,78)=(-(params(64)*params(60)));
  g1(45,83)=(-params(63));
  g1(45,85)=params(37)*params(60)-params(64)*params(60);
  g1(46,79)=(-(params(67)*params(60)));
  g1(46,13)=(-(params(62)+params(60)*(-params(62))));
  g1(46,84)=params(65);
  g1(46,15)=(-((params(67)-params(62))*params(60)));
  g1(47,82)=1;
  g1(47,84)=T3;
  g1(47,15)=1;
  g1(47,85)=T3;
  g1(48,86)=1;
  g1(48,87)=(-(params(104)/params(103)));
  g1(48,88)=(-(params(105)/params(103)));
  g1(48,166)=1;
  g1(49,84)=T3;
  g1(49,16)=T3;
  g1(49,87)=1;
  g1(50,88)=1;
  g1(50,89)=T3;
  g1(50,90)=T3;
  g1(51,79)=params(67)*params(94);
  g1(51,17)=params(67)*params(94);
  g1(51,89)=(-params(94));
  g1(51,18)=params(67)*params(94)-(params(94)-params(68)*params(94));
  g1(51,91)=params(68)*params(94);
  g1(51,94)=(-(params(39)*params(89)*params(90)));
  g1(51,97)=(-(params(94)-params(68)*params(94)));
  g1(52,18)=(-params(39));
  g1(52,92)=(-params(39));
  g1(52,93)=(-(1-params(39)));
  g1(52,94)=1;
  g1(52,97)=(-params(39));
  g1(52,98)=T3;
  g1(53,91)=params(68)/(params(68)-params(106));
  g1(53,92)=(-(1+params(42)));
  g1(54,18)=T3;
  g1(54,92)=T3-params(42);
  g1(54,94)=1;
  g1(54,97)=T3;
  g1(55,18)=params(68)*params(94);
  g1(55,91)=params(68)*params(94);
  g1(55,95)=(-params(95));
  g1(55,97)=params(68)*params(94);
  g1(55,104)=1;
  g1(56,89)=1;
  g1(56,22)=(-((-params(44))/params(95)));
  g1(56,104)=(-(params(44)/params(95)-(-(params(36)*params(44)))/params(95)));
  g1(56,151)=params(36)*params(44)/params(95);
  g1(57,18)=(-params(94));
  g1(57,90)=params(94);
  g1(57,97)=(-params(94));
  g1(57,104)=T3;
  g1(58,81)=1;
  g1(58,19)=(-(T348*(-params(55))));
  g1(58,96)=(-(T348*(1-params(36)*params(55)*(-params(55)))));
  g1(58,149)=(-(T348*(-(params(36)*params(55)))));
  g1(59,14)=1;
  g1(59,81)=T3;
  g1(59,100)=1;
  g1(60,80)=1;
  g1(60,150)=1;
  g1(61,94)=params(90);
  g1(61,95)=(-params(95));
  g1(61,96)=(-params(101));
  g1(62,81)=1;
  g1(62,93)=T3-params(45);
  g1(62,94)=1;
  g1(63,145)=T3;
  g1(63,80)=1;
  g1(63,99)=1;
  g1(64,21)=(-params(46));
  g1(64,98)=1;
  g1(64,164)=1;
  g1(65,20)=(-params(47));
  g1(65,97)=1;
  g1(65,165)=1;
  g1(66,145)=T3;
  g1(66,101)=1;
  g1(67,99)=(-((-params(83))*params(61)));
  g1(67,102)=params(82);
  g1(68,86)=T3;
  g1(68,89)=1;
  g1(68,90)=1;
  g1(68,103)=T3;
  g1(69,85)=T3;
  g1(69,102)=1;
  g1(69,103)=1;
  g1(70,152)=T3;
  g1(70,110)=1;
  g1(71,155)=T3;
  g1(71,111)=1;
  g1(72,156)=T3;
  g1(72,112)=1;
  g1(73,153)=T3;
  g1(73,113)=1;
  g1(74,158)=T3;
  g1(74,114)=1;
  g1(75,159)=T3;
  g1(75,115)=1;
  g1(76,154)=T3;
  g1(76,116)=1;
  g1(77,161)=T3;
  g1(77,117)=1;
  g1(78,162)=T3;
  g1(78,118)=1;
  g1(79,8)=T3;
  g1(79,119)=1;
  g1(80,27)=T3;
  g1(80,120)=1;
  g1(81,26)=T3;
  g1(81,121)=1;
  g1(82,29)=T3;
  g1(82,122)=1;
  g1(83,30)=T3;
  g1(83,123)=1;
  g1(84,25)=T3;
  g1(84,124)=1;
  g1(85,32)=T3;
  g1(85,125)=1;
  g1(86,33)=T3;
  g1(86,126)=1;
  g1(87,23)=T3;
  g1(87,127)=1;
  g1(88,35)=T3;
  g1(88,128)=1;
  g1(89,36)=T3;
  g1(89,129)=1;
  g1(90,24)=T3;
  g1(90,130)=1;
  g1(91,38)=T3;
  g1(91,131)=1;
  g1(92,39)=T3;
  g1(92,132)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],92,27889);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],92,4657463);
end
end