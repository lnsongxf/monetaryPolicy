function [residual, g1, g2, g3] = RBC_DTT11_dynamic(y, x, params, steady_state, it_)
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

residual = zeros(53, 1);
T207 = exp(y(52));
T210 = exp(T207^2/2);
T211 = T210/2;
T215 = (T207^2-y(40))/1.414213562373095;
T216 = T215/T207;
T217 = erf(T216);
T221 = exp(y(40))/2;
T223 = y(40)/1.414213562373095/T207;
T224 = erf(T223);
T243 = exp((-0.5)*(y(40)/T207)^2);
T248 = T243/2.506628274794649/T207;
T268 = 1-y(47)/y(48);
T269 = exp(y(32))*exp(y(34))/T268;
T278 = params(38)*exp(y(84))^(-params(35));
T280 = exp(y(31))^(-params(35));
T281 = T278/T280;
T301 = (-exp(y(41)))*exp(y(49))*exp(y(2));
T314 = (-exp(y(35)))*exp(y(33))*exp(y(7));
T325 = (1-exp(y(10)))*y(4)*exp(y(5))*exp(y(3));
T330 = T280*exp(y(49))/params(34);
T342 = exp(y(41))*exp(y(49))*(-(1-params(48)))*(1-y(37)*exp(y(50)));
T354 = exp(y(6))*(1-exp(y(2)))/exp(y(40));
T362 = exp(y(44))/exp(y(32));
T567 = exp(y(31))*getPowerDeriv(exp(y(31)),(-params(35)),1);
T578 = params(38)*exp(y(84))*getPowerDeriv(exp(y(84)),(-params(35)),1)/T280;
T586 = (-(exp(y(32))*exp(y(44))))/(exp(y(32))*exp(y(32)));
T594 = exp(y(6))*(-exp(y(2)))/exp(y(40));
T600 = exp(y(41))*exp(y(49))*(-(1-params(48)))*(-exp(y(50)));
T605 = (-0.7071067811865476)/T207;
T607 = exp(T216^2);
T609 = T607*1.772453850905516;
T610 = 2/T609;
T615 = exp(T223^2);
T616 = 1.772453850905516*T615;
T617 = 2/T616;
T620 = T221*(-(0.7071067811865476/T207*T617));
T621 = T221*(1-T224)+T620;
T626 = 2*y(40)/T207;
T628 = (-0.5)*1/T207*T626;
T632 = exp(y(40))*T243*T628/2.506628274794649/T207;
T635 = exp(y(40))*exp(y(40));
T640 = (-(exp(y(40))*exp(y(6))*(1-exp(y(2)))))/T635;
T646 = T268*T268;
T647 = (-(exp(y(32))*exp(y(34))*(-(1/y(48)))))/T646;
T652 = (-(exp(y(32))*exp(y(34))*(-((-y(47))/(y(48)*y(48))))));
T653 = T652/T646;
T657 = exp(y(41))*exp(y(49))*(-(1-params(48)))*(-(y(37)*exp(y(50))));
T670 = T210*T207*2*T207/2/2;
T672 = T207*T207*2*T207/1.414213562373095;
T675 = T207*T207;
T676 = (T672-T207*T215)/T675;
T677 = T610*T676;
T682 = (-(T207*y(40)/1.414213562373095));
T683 = T682/T675;
T684 = T617*T683;
T694 = (-(T207*y(40)))/T675;
T696 = (-0.5)*T626*T694;
T701 = T207*T243*T696/2.506628274794649-T207*T243/2.506628274794649;
T702 = T701/T675;
T745 = (-(2*1.772453850905516*T607*T605*2*T216))/(T609*T609);
T755 = (-(2*1.772453850905516*T615*0.7071067811865476/T207*2*T223))/(T616*T616);
T786 = (T207*2*T207/2*T210*T207*2*T207/2+T210*(T207*2*T207+T207*2*T207)/2)/2;
T809 = T676*(-(2*1.772453850905516*T607*T676*2*T216))/(T609*T609)+T610*(T675*(T672+T207*(T207*2*T207+T207*2*T207)/1.414213562373095-(T672+T207*T215))-(T672-T207*T215)*(T675+T675))/(T675*T675);
T825 = T683*(-(2*1.772453850905516*T615*T683*2*T223))/(T616*T616)+T617*(T675*T682-T682*(T675+T675))/(T675*T675);
T904 = T268*(-(1/y(48)))+T268*(-(1/y(48)));
T934 = T567+exp(y(31))*exp(y(31))*getPowerDeriv(exp(y(31)),(-params(35)),2);
lhs =y(56);
rhs =400*y(32);
residual(1)= lhs-rhs;
lhs =y(57);
rhs =25*(4*y(33)+4*y(1)+4*y(17)+4*y(18));
residual(2)= lhs-rhs;
lhs =y(58);
rhs =400*y(33);
residual(3)= lhs-rhs;
lhs =y(59);
rhs =100*y(42);
residual(4)= lhs-rhs;
residual(5) = y(60);
lhs =y(56);
rhs =params(32)*x(it_, 6)+params(31)*y(105)+params(30)*y(104)+params(29)*y(103)+params(28)*y(95)+params(27)*y(21)+params(26)*y(20)+params(25)*y(19)+params(24)*y(15)+y(59)*params(23)+params(22)*y(102)+params(21)*y(101)+params(20)*y(100)+params(19)*y(96)+params(18)*y(24)+params(17)*y(23)+params(16)*y(22)+params(15)*y(16)+y(60)*params(14)+params(13)*y(99)+params(12)*y(98)+params(11)*y(97)+params(10)*y(94)+params(6)*y(14)+y(58)*params(5)+params(1)*y(13)+params(2)*y(25)+params(3)*y(26)+params(4)*y(27)+params(7)*y(28)+params(8)*y(29)+params(9)*y(30);
residual(6)= lhs-rhs;
lhs =y(54);
rhs =y(31)-params(34)*exp(y(41));
residual(7)= lhs-rhs;
lhs =y(55);
rhs =y(54)+params(38)*y(93);
residual(8)= lhs-rhs;
residual(9) = (-y(47))+exp(y(92))*exp(y(90))*y(89);
residual(10) = (-y(48))+1-y(88);
residual(11) = (-y(46))+y(2);
residual(12) = (-y(36))+T211*(1+T217)-T221*(1-T224);
residual(13) = (-y(37))+T211*(1-T217);
residual(14) = (-y(39))+T248/exp(y(40));
residual(15) = (-y(38))+(1+T224)/2;
residual(16) = (-exp(y(91)))*y(86)+T269;
residual(17) = (-1)/exp(y(32))+T281/exp(y(85));
residual(18) = (-exp(y(91)))*(1-exp(y(92))*y(87)-y(86))+exp(y(32))*(1-exp(y(34)));
residual(19) = T301+exp(y(43))*exp(y(35));
residual(20) = T314+T325;
residual(21) = (-exp(y(43)))+T330;
residual(22) = exp(y(31))+T342;
residual(23) = (-exp(y(42)))+exp(y(41))*exp(y(49));
residual(24) = (-exp(y(43)))+T354;
residual(25) = (-exp(y(45)))+T362;
residual(26) = y(49)-params(43)*y(8)-x(it_, 1);
residual(27) = y(50)-(1-params(44))*log(params(36))-params(44)*y(9)-x(it_, 2);
residual(28) = y(51)-(1-params(45))*log(params(37))-y(10)*params(45)-x(it_, 3);
residual(29) = y(52)-(1-params(46))*log(params(42))-params(46)*y(11)-x(it_, 4);
residual(30) = y(53)-params(43)*y(12)-x(it_, 5);
lhs =y(61);
rhs =y(94);
residual(31)= lhs-rhs;
lhs =y(62);
rhs =y(97);
residual(32)= lhs-rhs;
lhs =y(63);
rhs =y(98);
residual(33)= lhs-rhs;
lhs =y(64);
rhs =y(96);
residual(34)= lhs-rhs;
lhs =y(65);
rhs =y(100);
residual(35)= lhs-rhs;
lhs =y(66);
rhs =y(101);
residual(36)= lhs-rhs;
lhs =y(67);
rhs =y(95);
residual(37)= lhs-rhs;
lhs =y(68);
rhs =y(103);
residual(38)= lhs-rhs;
lhs =y(69);
rhs =y(104);
residual(39)= lhs-rhs;
lhs =y(70);
rhs =y(1);
residual(40)= lhs-rhs;
lhs =y(71);
rhs =y(17);
residual(41)= lhs-rhs;
lhs =y(72);
rhs =y(15);
residual(42)= lhs-rhs;
lhs =y(73);
rhs =y(19);
residual(43)= lhs-rhs;
lhs =y(74);
rhs =y(20);
residual(44)= lhs-rhs;
lhs =y(75);
rhs =y(16);
residual(45)= lhs-rhs;
lhs =y(76);
rhs =y(22);
residual(46)= lhs-rhs;
lhs =y(77);
rhs =y(23);
residual(47)= lhs-rhs;
lhs =y(78);
rhs =y(13);
residual(48)= lhs-rhs;
lhs =y(79);
rhs =y(25);
residual(49)= lhs-rhs;
lhs =y(80);
rhs =y(26);
residual(50)= lhs-rhs;
lhs =y(81);
rhs =y(14);
residual(51)= lhs-rhs;
lhs =y(82);
rhs =y(28);
residual(52)= lhs-rhs;
lhs =y(83);
rhs =y(29);
residual(53)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(53, 111);

  %
  % Jacobian matrix
  %

  g1(1,32)=(-400);
  g1(1,56)=1;
  g1(2,1)=(-100);
  g1(2,33)=(-100);
  g1(2,57)=1;
  g1(2,17)=(-100);
  g1(2,18)=(-100);
  g1(3,33)=(-400);
  g1(3,58)=1;
  g1(4,42)=(-100);
  g1(4,59)=1;
  g1(5,60)=1;
  g1(6,13)=(-params(1));
  g1(6,56)=1;
  g1(6,14)=(-params(6));
  g1(6,58)=(-params(5));
  g1(6,94)=(-params(10));
  g1(6,15)=(-params(24));
  g1(6,59)=(-params(23));
  g1(6,95)=(-params(28));
  g1(6,16)=(-params(15));
  g1(6,60)=(-params(14));
  g1(6,96)=(-params(19));
  g1(6,111)=(-params(32));
  g1(6,97)=(-params(11));
  g1(6,98)=(-params(12));
  g1(6,99)=(-params(13));
  g1(6,100)=(-params(20));
  g1(6,101)=(-params(21));
  g1(6,102)=(-params(22));
  g1(6,103)=(-params(29));
  g1(6,104)=(-params(30));
  g1(6,105)=(-params(31));
  g1(6,19)=(-params(25));
  g1(6,20)=(-params(26));
  g1(6,21)=(-params(27));
  g1(6,22)=(-params(16));
  g1(6,23)=(-params(17));
  g1(6,24)=(-params(18));
  g1(6,25)=(-params(2));
  g1(6,26)=(-params(3));
  g1(6,27)=(-params(4));
  g1(6,28)=(-params(7));
  g1(6,29)=(-params(8));
  g1(6,30)=(-params(9));
  g1(7,31)=(-1);
  g1(7,41)=params(34)*exp(y(41));
  g1(7,54)=1;
  g1(8,54)=(-1);
  g1(8,55)=1;
  g1(8,93)=(-params(38));
  g1(9,89)=exp(y(92))*exp(y(90));
  g1(9,90)=exp(y(92))*exp(y(90))*y(89);
  g1(9,47)=(-1);
  g1(9,92)=exp(y(92))*exp(y(90))*y(89);
  g1(10,88)=(-1);
  g1(10,48)=(-1);
  g1(11,2)=1;
  g1(11,46)=(-1);
  g1(12,36)=(-1);
  g1(12,40)=T211*T605*T610-T621;
  g1(12,52)=(1+T217)*T670+T211*T677-T221*(-T684);
  g1(13,37)=(-1);
  g1(13,40)=T211*(-(T605*T610));
  g1(13,52)=(1-T217)*T670+T211*(-T677);
  g1(14,39)=(-1);
  g1(14,40)=(T632-exp(y(40))*T248)/T635;
  g1(14,52)=T702/exp(y(40));
  g1(15,38)=(-1);
  g1(15,40)=0.7071067811865476/T207*T617/2;
  g1(15,52)=T684/2;
  g1(16,32)=T269;
  g1(16,34)=T269;
  g1(16,86)=(-exp(y(91)));
  g1(16,91)=(-exp(y(91)))*y(86);
  g1(16,47)=T647;
  g1(16,48)=T653;
  g1(17,31)=(-(T278*T567))/(T280*T280)/exp(y(85));
  g1(17,84)=T578/exp(y(85));
  g1(17,32)=exp(y(32))/(exp(y(32))*exp(y(32)));
  g1(17,85)=(-(T281*exp(y(85))))/(exp(y(85))*exp(y(85)));
  g1(18,32)=exp(y(32))*(1-exp(y(34)));
  g1(18,34)=exp(y(32))*(-exp(y(34)));
  g1(18,86)=exp(y(91));
  g1(18,87)=(-exp(y(91)))*(-exp(y(92)));
  g1(18,91)=(-exp(y(91)))*(1-exp(y(92))*y(87)-y(86));
  g1(18,92)=(-exp(y(91)))*(-(exp(y(92))*y(87)));
  g1(19,2)=T301;
  g1(19,35)=exp(y(43))*exp(y(35));
  g1(19,41)=T301;
  g1(19,43)=exp(y(43))*exp(y(35));
  g1(19,49)=T301;
  g1(20,33)=T314;
  g1(20,3)=T325;
  g1(20,35)=T314;
  g1(20,4)=exp(y(3))*(1-exp(y(10)))*exp(y(5));
  g1(20,5)=T325;
  g1(20,7)=T314;
  g1(20,10)=exp(y(3))*exp(y(5))*y(4)*(-exp(y(10)));
  g1(21,31)=exp(y(49))*T567/params(34);
  g1(21,43)=(-exp(y(43)));
  g1(21,49)=T330;
  g1(22,31)=exp(y(31));
  g1(22,37)=T600;
  g1(22,41)=T342;
  g1(22,49)=T342;
  g1(22,50)=T657;
  g1(23,41)=exp(y(41))*exp(y(49));
  g1(23,42)=(-exp(y(42)));
  g1(23,49)=exp(y(41))*exp(y(49));
  g1(24,2)=T594;
  g1(24,40)=T640;
  g1(24,43)=(-exp(y(43)));
  g1(24,6)=T354;
  g1(25,32)=T586;
  g1(25,44)=T362;
  g1(25,45)=(-exp(y(45)));
  g1(26,8)=(-params(43));
  g1(26,49)=1;
  g1(26,106)=(-1);
  g1(27,9)=(-params(44));
  g1(27,50)=1;
  g1(27,107)=(-1);
  g1(28,10)=(-params(45));
  g1(28,51)=1;
  g1(28,108)=(-1);
  g1(29,11)=(-params(46));
  g1(29,52)=1;
  g1(29,109)=(-1);
  g1(30,12)=(-params(43));
  g1(30,53)=1;
  g1(30,110)=(-1);
  g1(31,94)=(-1);
  g1(31,61)=1;
  g1(32,97)=(-1);
  g1(32,62)=1;
  g1(33,98)=(-1);
  g1(33,63)=1;
  g1(34,96)=(-1);
  g1(34,64)=1;
  g1(35,100)=(-1);
  g1(35,65)=1;
  g1(36,101)=(-1);
  g1(36,66)=1;
  g1(37,95)=(-1);
  g1(37,67)=1;
  g1(38,103)=(-1);
  g1(38,68)=1;
  g1(39,104)=(-1);
  g1(39,69)=1;
  g1(40,1)=(-1);
  g1(40,70)=1;
  g1(41,17)=(-1);
  g1(41,71)=1;
  g1(42,15)=(-1);
  g1(42,72)=1;
  g1(43,19)=(-1);
  g1(43,73)=1;
  g1(44,20)=(-1);
  g1(44,74)=1;
  g1(45,16)=(-1);
  g1(45,75)=1;
  g1(46,22)=(-1);
  g1(46,76)=1;
  g1(47,23)=(-1);
  g1(47,77)=1;
  g1(48,13)=(-1);
  g1(48,78)=1;
  g1(49,25)=(-1);
  g1(49,79)=1;
  g1(50,26)=(-1);
  g1(50,80)=1;
  g1(51,14)=(-1);
  g1(51,81)=1;
  g1(52,28)=(-1);
  g1(52,82)=1;
  g1(53,29)=(-1);
  g1(53,83)=1;
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(146,3);
  v2(1,1)=7;
  v2(1,2)=4481;
  v2(1,3)=params(34)*exp(y(41));
  v2(2,1)=9;
  v2(2,2)=9968;
  v2(2,3)=exp(y(92))*exp(y(90));
  v2(3,1)=9;
  v2(3,2)=9858;
  v2(3,3)=  v2(2,3);
  v2(4,1)=9;
  v2(4,2)=9969;
  v2(4,3)=exp(y(92))*exp(y(90))*y(89);
  v2(5,1)=9;
  v2(5,2)=10190;
  v2(5,3)=exp(y(92))*exp(y(90));
  v2(6,1)=9;
  v2(6,2)=9860;
  v2(6,3)=  v2(5,3);
  v2(7,1)=9;
  v2(7,2)=10191;
  v2(7,3)=exp(y(92))*exp(y(90))*y(89);
  v2(8,1)=9;
  v2(8,2)=9971;
  v2(8,3)=  v2(7,3);
  v2(9,1)=9;
  v2(9,2)=10193;
  v2(9,3)=exp(y(92))*exp(y(90))*y(89);
  v2(10,1)=12;
  v2(10,2)=4369;
  v2(10,3)=T211*T605*T745-(T621+T620+T221*(-(0.7071067811865476/T207*T755)));
  v2(11,1)=12;
  v2(11,2)=5701;
  v2(11,3)=T605*T610*T670+T211*(T676*T745+T610*(-(T207*(-0.7071067811865476)))/T675)-(T221*(-T684)+T221*(-(T683*T755+T617*(-(T207*0.7071067811865476))/T675)));
  v2(12,1)=12;
  v2(12,2)=4381;
  v2(12,3)=  v2(11,3);
  v2(13,1)=12;
  v2(13,2)=5713;
  v2(13,3)=T670*T677+(1+T217)*T786+T670*T677+T211*T809-T221*(-T825);
  v2(14,1)=13;
  v2(14,2)=4369;
  v2(14,3)=T211*(-(T605*T745));
  v2(15,1)=13;
  v2(15,2)=5701;
  v2(15,3)=(-(T605*T610))*T670+T211*(-(T676*T745+T610*(-(T207*(-0.7071067811865476)))/T675));
  v2(16,1)=13;
  v2(16,2)=4381;
  v2(16,3)=  v2(15,3);
  v2(17,1)=13;
  v2(17,2)=5713;
  v2(17,3)=T670*(-T677)+(1-T217)*T786+T670*(-T677)+T211*(-T809);
  v2(18,1)=14;
  v2(18,2)=4369;
  v2(18,3)=(T635*(T632+exp(y(40))*(T628*T243*T628+T243*(-0.5)*1/T207*2*1/T207)/2.506628274794649/T207-(T632+exp(y(40))*T248))-(T632-exp(y(40))*T248)*(T635+T635))/(T635*T635);
  v2(19,1)=14;
  v2(19,2)=5701;
  v2(19,3)=(exp(y(40))*(T207*(T243*T628*T696+T243*(-0.5)*(T694*2*1/T207+T626*(-T207)/T675))/2.506628274794649-T207*T243*T628/2.506628274794649)/T675-exp(y(40))*T702)/T635;
  v2(20,1)=14;
  v2(20,2)=4381;
  v2(20,3)=  v2(19,3);
  v2(21,1)=14;
  v2(21,2)=5713;
  v2(21,3)=(T675*(T207*T243*T696/2.506628274794649+T207*(T696*T243*T696+T243*(-0.5)*(T694*2*T694+T626*(T675*(-(T207*y(40)))-(-(T207*y(40)))*(T675+T675))/(T675*T675)))/2.506628274794649-(T207*T243*T696/2.506628274794649+T207*T243/2.506628274794649))-T701*(T675+T675))/(T675*T675)/exp(y(40));
  v2(22,1)=15;
  v2(22,2)=4369;
  v2(22,3)=0.7071067811865476/T207*T755/2;
  v2(23,1)=15;
  v2(23,2)=5701;
  v2(23,3)=(T683*T755+T617*(-(T207*0.7071067811865476))/T675)/2;
  v2(24,1)=15;
  v2(24,2)=4381;
  v2(24,3)=  v2(23,3);
  v2(25,1)=15;
  v2(25,2)=5713;
  v2(25,3)=T825/2;
  v2(26,1)=16;
  v2(26,2)=3473;
  v2(26,3)=T269;
  v2(27,1)=16;
  v2(27,2)=3695;
  v2(27,3)=T269;
  v2(28,1)=16;
  v2(28,2)=3475;
  v2(28,3)=  v2(27,3);
  v2(29,1)=16;
  v2(29,2)=3697;
  v2(29,3)=T269;
  v2(30,1)=16;
  v2(30,2)=10076;
  v2(30,3)=(-exp(y(91)));
  v2(31,1)=16;
  v2(31,2)=9526;
  v2(31,3)=  v2(30,3);
  v2(32,1)=16;
  v2(32,2)=10081;
  v2(32,3)=(-exp(y(91)))*y(86);
  v2(33,1)=16;
  v2(33,2)=5138;
  v2(33,3)=T647;
  v2(34,1)=16;
  v2(34,2)=3488;
  v2(34,3)=  v2(33,3);
  v2(35,1)=16;
  v2(35,2)=5140;
  v2(35,3)=T647;
  v2(36,1)=16;
  v2(36,2)=3710;
  v2(36,3)=  v2(35,3);
  v2(37,1)=16;
  v2(37,2)=5153;
  v2(37,3)=(-((-(exp(y(32))*exp(y(34))*(-(1/y(48)))))*T904))/(T646*T646);
  v2(38,1)=16;
  v2(38,2)=5249;
  v2(38,3)=T653;
  v2(39,1)=16;
  v2(39,2)=3489;
  v2(39,3)=  v2(38,3);
  v2(40,1)=16;
  v2(40,2)=5251;
  v2(40,3)=T653;
  v2(41,1)=16;
  v2(41,2)=3711;
  v2(41,3)=  v2(40,3);
  v2(42,1)=16;
  v2(42,2)=5264;
  v2(42,3)=(T646*(-(exp(y(32))*exp(y(34))*(-((-1)/(y(48)*y(48))))))-T652*T904)/(T646*T646);
  v2(43,1)=16;
  v2(43,2)=5154;
  v2(43,3)=  v2(42,3);
  v2(44,1)=16;
  v2(44,2)=5265;
  v2(44,3)=(T646*(-(exp(y(32))*exp(y(34))*(-((-((-y(47))*(y(48)+y(48))))/(y(48)*y(48)*y(48)*y(48))))))-T652*(T268*(-((-y(47))/(y(48)*y(48))))+T268*(-((-y(47))/(y(48)*y(48))))))/(T646*T646);
  v2(45,1)=17;
  v2(45,2)=3361;
  v2(45,3)=(T280*T280*(-(T278*T934))-(-(T278*T567))*(T280*T567+T280*T567))/(T280*T280*T280*T280)/exp(y(85));
  v2(46,1)=17;
  v2(46,2)=9244;
  v2(46,3)=(-(T567*params(38)*exp(y(84))*getPowerDeriv(exp(y(84)),(-params(35)),1)))/(T280*T280)/exp(y(85));
  v2(47,1)=17;
  v2(47,2)=3414;
  v2(47,3)=  v2(46,3);
  v2(48,1)=17;
  v2(48,2)=9297;
  v2(48,3)=params(38)*(exp(y(84))*getPowerDeriv(exp(y(84)),(-params(35)),1)+exp(y(84))*exp(y(84))*getPowerDeriv(exp(y(84)),(-params(35)),2))/T280/exp(y(85));
  v2(49,1)=17;
  v2(49,2)=3473;
  v2(49,3)=(exp(y(32))*exp(y(32))*exp(y(32))-exp(y(32))*(exp(y(32))*exp(y(32))+exp(y(32))*exp(y(32))))/(exp(y(32))*exp(y(32))*exp(y(32))*exp(y(32)));
  v2(50,1)=17;
  v2(50,2)=9355;
  v2(50,3)=(-(exp(y(85))*(-(T278*T567))/(T280*T280)))/(exp(y(85))*exp(y(85)));
  v2(51,1)=17;
  v2(51,2)=3415;
  v2(51,3)=  v2(50,3);
  v2(52,1)=17;
  v2(52,2)=9408;
  v2(52,3)=(-(exp(y(85))*T578))/(exp(y(85))*exp(y(85)));
  v2(53,1)=17;
  v2(53,2)=9298;
  v2(53,3)=  v2(52,3);
  v2(54,1)=17;
  v2(54,2)=9409;
  v2(54,3)=((-(T281*exp(y(85))))*exp(y(85))*exp(y(85))-(-(T281*exp(y(85))))*(exp(y(85))*exp(y(85))+exp(y(85))*exp(y(85))))/(exp(y(85))*exp(y(85))*exp(y(85))*exp(y(85)));
  v2(55,1)=18;
  v2(55,2)=3473;
  v2(55,3)=exp(y(32))*(1-exp(y(34)));
  v2(56,1)=18;
  v2(56,2)=3695;
  v2(56,3)=exp(y(32))*(-exp(y(34)));
  v2(57,1)=18;
  v2(57,2)=3475;
  v2(57,3)=  v2(56,3);
  v2(58,1)=18;
  v2(58,2)=3697;
  v2(58,3)=exp(y(32))*(-exp(y(34)));
  v2(59,1)=18;
  v2(59,2)=10076;
  v2(59,3)=exp(y(91));
  v2(60,1)=18;
  v2(60,2)=9526;
  v2(60,3)=  v2(59,3);
  v2(61,1)=18;
  v2(61,2)=10077;
  v2(61,3)=(-exp(y(91)))*(-exp(y(92)));
  v2(62,1)=18;
  v2(62,2)=9637;
  v2(62,3)=  v2(61,3);
  v2(63,1)=18;
  v2(63,2)=10081;
  v2(63,3)=(-exp(y(91)))*(1-exp(y(92))*y(87)-y(86));
  v2(64,1)=18;
  v2(64,2)=10188;
  v2(64,3)=(-exp(y(91)))*(-exp(y(92)));
  v2(65,1)=18;
  v2(65,2)=9638;
  v2(65,3)=  v2(64,3);
  v2(66,1)=18;
  v2(66,2)=10192;
  v2(66,3)=(-exp(y(91)))*(-(exp(y(92))*y(87)));
  v2(67,1)=18;
  v2(67,2)=10082;
  v2(67,3)=  v2(66,3);
  v2(68,1)=18;
  v2(68,2)=10193;
  v2(68,3)=(-exp(y(91)))*(-(exp(y(92))*y(87)));
  v2(69,1)=19;
  v2(69,2)=113;
  v2(69,3)=T301;
  v2(70,1)=19;
  v2(70,2)=3809;
  v2(70,3)=exp(y(43))*exp(y(35));
  v2(71,1)=19;
  v2(71,2)=4442;
  v2(71,3)=T301;
  v2(72,1)=19;
  v2(72,2)=152;
  v2(72,3)=  v2(71,3);
  v2(73,1)=19;
  v2(73,2)=4481;
  v2(73,3)=T301;
  v2(74,1)=19;
  v2(74,2)=4697;
  v2(74,3)=exp(y(43))*exp(y(35));
  v2(75,1)=19;
  v2(75,2)=3817;
  v2(75,3)=  v2(74,3);
  v2(76,1)=19;
  v2(76,2)=4705;
  v2(76,3)=exp(y(43))*exp(y(35));
  v2(77,1)=19;
  v2(77,2)=5330;
  v2(77,3)=T301;
  v2(78,1)=19;
  v2(78,2)=160;
  v2(78,3)=  v2(77,3);
  v2(79,1)=19;
  v2(79,2)=5369;
  v2(79,3)=T301;
  v2(80,1)=19;
  v2(80,2)=4489;
  v2(80,3)=  v2(79,3);
  v2(81,1)=19;
  v2(81,2)=5377;
  v2(81,3)=T301;
  v2(82,1)=20;
  v2(82,2)=3585;
  v2(82,3)=T314;
  v2(83,1)=20;
  v2(83,2)=225;
  v2(83,3)=T325;
  v2(84,1)=20;
  v2(84,2)=3807;
  v2(84,3)=T314;
  v2(85,1)=20;
  v2(85,2)=3587;
  v2(85,3)=  v2(84,3);
  v2(86,1)=20;
  v2(86,2)=3809;
  v2(86,3)=T314;
  v2(87,1)=20;
  v2(87,2)=336;
  v2(87,3)=exp(y(3))*(1-exp(y(10)))*exp(y(5));
  v2(88,1)=20;
  v2(88,2)=226;
  v2(88,3)=  v2(87,3);
  v2(89,1)=20;
  v2(89,2)=447;
  v2(89,3)=T325;
  v2(90,1)=20;
  v2(90,2)=227;
  v2(90,3)=  v2(89,3);
  v2(91,1)=20;
  v2(91,2)=448;
  v2(91,3)=exp(y(3))*(1-exp(y(10)))*exp(y(5));
  v2(92,1)=20;
  v2(92,2)=338;
  v2(92,3)=  v2(91,3);
  v2(93,1)=20;
  v2(93,2)=449;
  v2(93,3)=T325;
  v2(94,1)=20;
  v2(94,2)=699;
  v2(94,3)=T314;
  v2(95,1)=20;
  v2(95,2)=3559;
  v2(95,3)=  v2(94,3);
  v2(96,1)=20;
  v2(96,2)=701;
  v2(96,3)=T314;
  v2(97,1)=20;
  v2(97,2)=3781;
  v2(97,3)=  v2(96,3);
  v2(98,1)=20;
  v2(98,2)=673;
  v2(98,3)=T314;
  v2(99,1)=20;
  v2(99,2)=1002;
  v2(99,3)=exp(y(3))*exp(y(5))*y(4)*(-exp(y(10)));
  v2(100,1)=20;
  v2(100,2)=232;
  v2(100,3)=  v2(99,3);
  v2(101,1)=20;
  v2(101,2)=1003;
  v2(101,3)=exp(y(3))*exp(y(5))*(-exp(y(10)));
  v2(102,1)=20;
  v2(102,2)=343;
  v2(102,3)=  v2(101,3);
  v2(103,1)=20;
  v2(103,2)=1004;
  v2(103,3)=exp(y(3))*exp(y(5))*y(4)*(-exp(y(10)));
  v2(104,1)=20;
  v2(104,2)=454;
  v2(104,3)=  v2(103,3);
  v2(105,1)=20;
  v2(105,2)=1009;
  v2(105,3)=exp(y(3))*exp(y(5))*y(4)*(-exp(y(10)));
  v2(106,1)=21;
  v2(106,2)=3361;
  v2(106,3)=exp(y(49))*T934/params(34);
  v2(107,1)=21;
  v2(107,2)=4705;
  v2(107,3)=(-exp(y(43)));
  v2(108,1)=21;
  v2(108,2)=5359;
  v2(108,3)=exp(y(49))*T567/params(34);
  v2(109,1)=21;
  v2(109,2)=3379;
  v2(109,3)=  v2(108,3);
  v2(110,1)=21;
  v2(110,2)=5377;
  v2(110,3)=T330;
  v2(111,1)=22;
  v2(111,2)=3361;
  v2(111,3)=exp(y(31));
  v2(112,1)=22;
  v2(112,2)=4477;
  v2(112,3)=T600;
  v2(113,1)=22;
  v2(113,2)=4037;
  v2(113,3)=  v2(112,3);
  v2(114,1)=22;
  v2(114,2)=4481;
  v2(114,3)=T342;
  v2(115,1)=22;
  v2(115,2)=5365;
  v2(115,3)=T600;
  v2(116,1)=22;
  v2(116,2)=4045;
  v2(116,3)=  v2(115,3);
  v2(117,1)=22;
  v2(117,2)=5369;
  v2(117,3)=T342;
  v2(118,1)=22;
  v2(118,2)=4489;
  v2(118,3)=  v2(117,3);
  v2(119,1)=22;
  v2(119,2)=5377;
  v2(119,3)=T342;
  v2(120,1)=22;
  v2(120,2)=5476;
  v2(120,3)=T600;
  v2(121,1)=22;
  v2(121,2)=4046;
  v2(121,3)=  v2(120,3);
  v2(122,1)=22;
  v2(122,2)=5480;
  v2(122,3)=T657;
  v2(123,1)=22;
  v2(123,2)=4490;
  v2(123,3)=  v2(122,3);
  v2(124,1)=22;
  v2(124,2)=5488;
  v2(124,3)=T657;
  v2(125,1)=22;
  v2(125,2)=5378;
  v2(125,3)=  v2(124,3);
  v2(126,1)=22;
  v2(126,2)=5489;
  v2(126,3)=T657;
  v2(127,1)=23;
  v2(127,2)=4481;
  v2(127,3)=exp(y(41))*exp(y(49));
  v2(128,1)=23;
  v2(128,2)=4593;
  v2(128,3)=(-exp(y(42)));
  v2(129,1)=23;
  v2(129,2)=5369;
  v2(129,3)=exp(y(41))*exp(y(49));
  v2(130,1)=23;
  v2(130,2)=4489;
  v2(130,3)=  v2(129,3);
  v2(131,1)=23;
  v2(131,2)=5377;
  v2(131,3)=exp(y(41))*exp(y(49));
  v2(132,1)=24;
  v2(132,2)=113;
  v2(132,3)=T594;
  v2(133,1)=24;
  v2(133,2)=4331;
  v2(133,3)=(-(exp(y(40))*exp(y(6))*(-exp(y(2)))))/T635;
  v2(134,1)=24;
  v2(134,2)=151;
  v2(134,3)=  v2(133,3);
  v2(135,1)=24;
  v2(135,2)=4369;
  v2(135,3)=(T635*(-(exp(y(40))*exp(y(6))*(1-exp(y(2)))))-(-(exp(y(40))*exp(y(6))*(1-exp(y(2)))))*(T635+T635))/(T635*T635);
  v2(136,1)=24;
  v2(136,2)=4705;
  v2(136,3)=(-exp(y(43)));
  v2(137,1)=24;
  v2(137,2)=557;
  v2(137,3)=T594;
  v2(138,1)=24;
  v2(138,2)=117;
  v2(138,3)=  v2(137,3);
  v2(139,1)=24;
  v2(139,2)=595;
  v2(139,3)=T640;
  v2(140,1)=24;
  v2(140,2)=4335;
  v2(140,3)=  v2(139,3);
  v2(141,1)=24;
  v2(141,2)=561;
  v2(141,3)=T354;
  v2(142,1)=25;
  v2(142,2)=3473;
  v2(142,3)=(exp(y(32))*exp(y(32))*(-(exp(y(32))*exp(y(44))))-(-(exp(y(32))*exp(y(44))))*(exp(y(32))*exp(y(32))+exp(y(32))*exp(y(32))))/(exp(y(32))*exp(y(32))*exp(y(32))*exp(y(32)));
  v2(143,1)=25;
  v2(143,2)=4805;
  v2(143,3)=T586;
  v2(144,1)=25;
  v2(144,2)=3485;
  v2(144,3)=  v2(143,3);
  v2(145,1)=25;
  v2(145,2)=4817;
  v2(145,3)=T362;
  v2(146,1)=25;
  v2(146,2)=4929;
  v2(146,3)=(-exp(y(45)));
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),53,12321);
end
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],53,1367631);
end
end
