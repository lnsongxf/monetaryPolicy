function [ys,check] = CA_ToTEM10_steadystate(ys,exe)
% Inputs:   ys, exe
%           ys is a vector of current values of endo_names
%           exe is vector of values of exo_names
%
% Outputs:  ys -- Vector of steady-state values in endo_names order.
%           check -- 0 if the steady-state was found, 1 otherwise.
  
global M_ 
  
cbal = -2.28057599e-02;
cbal_cor = 0.00000000e+00;
defn_yn = -1.75100770e-02;
defn_yn_ss = -1.75100770e-02;
den_w = 8.37549458e-01;
deprk = 3.14921145e-02;
dr1rown = 0.00000000e+00;
gbn_cor = 0.00000000e+00;
gbn_yn = 2.50000000e-01;
gbn_yn_ss = 2.50000000e-01;
gn_yn_cor = 0.00000000e+00;
gn_yn_ss = 2.38346847e-01;
inff = 1.98026273e-02;
infprow = 1.79918070e-02;
infq = 4.95065682e-03;
infq2 = 4.95065682e-03;
infq_pg = 4.95065682e-03;
infq_row = 1.79918070e-02;
infrow = 1.79918070e-02;
infrow2 = 1.79918070e-02;
infrow_ss = 1.79918070e-02;
la = 3.99003300e-02;
la0_cor = 0.00000000e+00;
la5_cor = 0.00000000e+00;
la9_cor = 0.00000000e+00;
ladotrow = 0.00000000e+00;
la_inv = -4.61468359e-01;
la_tot = 3.99003300e-02;
lc = 2.95406258e-02;
lc0_cor = 0.00000000e+00;
lc995_cor = 0.00000000e+00;
lcfl = -1.00620495e-01;
lchm = -2.07381633e+00;
lckl = -1.66265294e-01;
lcklc = -9.75373544e-02;
lcklcm = -1.09364543e-02;
lcm = -1.53047540e+00;
lcom = -1.29103867e+00;
lcomc = -3.18628068e+00;
lcomd = -1.80648964e+00;
lcomdc = -2.76426707e+00;
lcomdg = -3.50604489e+00;
lcomdinv = -4.56717553e+00;
lcomdx = -3.93839677e+00;
lcomx = -2.20043126e+00;
lcomy = -1.29103867e+00;
lcshare = 6.20029014e-01;
lcshare_add = 0.00000000e+00;
lcshare_sreq = 6.20029014e-01;
lcx8 = -1.09364543e-02;
lc_cor = 0.00000000e+00;
lc_cor_tot = 0.00000000e+00;
leec = 0.00000000e+00;
leeg = 0.00000000e+00;
leeinv = 0.00000000e+00;
leex = 0.00000000e+00;
lforex = -2.38973246e-01;
lforexn0_cor = 0.00000000e+00;
lforexn_cor = 0.00000000e+00;
lforexn_cor_tot = 0.00000000e+00;
lg = -9.13983659e-01;
lgbn_r = -8.67948516e-01;
lgkl = -9.08043107e-01;
lgklc = -8.39315168e-01;
lgklcm = -9.13983659e-01;
lgm = -3.34326510e+00;
lhaw = -4.93736730e-01;
lhawc = -1.20798005e+00;
lhawcom = -3.58887991e+00;
lhawcom_sreq = -3.58887991e+00;
lhawc_sreq = -1.20798005e+00;
lhawg = -1.94975786e+00;
lhawg_sreq = -1.94975786e+00;
lhawinv = -3.01088850e+00;
lhawinv_sreq = -3.01088850e+00;
lhawx = -2.38210975e+00;
lhawx_sreq = -2.38210975e+00;
lhaw_sreq = -4.93736730e-01;
lindex_w = 4.95065682e-03;
linv = -1.76808824e+00;
linvc = -2.48233155e+00;
linvcom = -4.86323142e+00;
linvg = -3.22410937e+00;
linvinv = -4.28524001e+00;
linvkl = -1.96917375e+00;
linvklc = -1.90044581e+00;
linvklcm = -1.76808824e+00;
linvm = -2.56346144e+00;
linvx = -3.65646125e+00;
linv_add = 0.00000000e+00;
linv_cor = 0.00000000e+00;
linv_cor1 = 0.00000000e+00;
lk = -4.10607815e-01;
lkcom = -2.79150768e+00;
lkg = -1.15238563e+00;
lkinv = -2.21351627e+00;
lktotal = 3.03635502e-01;
lkx = -1.58473752e+00;
lk_cor = 0.00000000e+00;
ll = -4.93736730e-01;
llabshare = 5.65983645e-01;
llabshare_add = 0.00000000e+00;
llabshare_sreq = 5.65983645e-01;
llagrlpc = 1.47505494e+00;
llc = -1.20798005e+00;
llcom = -3.58887991e+00;
llg = -1.94975786e+00;
llinv = -3.01088850e+00;
llx = -2.38210975e+00;
lm = -7.49275592e-01;
lm0_cor = 0.00000000e+00;
lmanx = -1.00701027e+00;
lmcg_r = -1.69882147e-03;
lmcinv_r = 1.89541355e-01;
lmcm_r = 4.45174199e-02;
lmcsum_r = 0.00000000e+00;
lmcx_r = 5.57462418e-02;
lmc_r = 0.00000000e+00;
lmpk = -1.11195166e+00;
lmpkcom = -1.34285690e+00;
lmpkg = -1.11025283e+00;
lmpkinv = -1.30149301e+00;
lmpkx = -1.16769790e+00;
lmpl = 4.42892479e-01;
lm_cor = 0.00000000e+00;
lm_cor_tot = 0.00000000e+00;
lpcomdsum_r = 3.07761041e+01;
lpcomd_r = 2.30905246e-01;
lpcomrow_prow = 4.23196376e-01;
lpcom_r = 2.30905246e-01;
lpcrow_r = 4.23196376e-03;
lpc_cor = 0.00000000e+00;
lpc_r = 1.08162142e-02;
lpfx_r = 2.48037373e-01;
lpg_r = -1.69882147e-03;
lpinvsum_r = 2.52629362e+01;
lpinv_r = 1.89541355e-01;
lpmanx_r = 5.57462418e-02;
lpm_fitsum_r = 5.93348474e+00;
lpm_fit_r = 4.45174199e-02;
lpm_r = 4.45174199e-02;
lprow2_cor = 0.00000000e+00;
lprow2_r = -1.15367822e-05;
lprow_cor = 0.00000000e+00;
lpxrow_prow = 2.36808551e-01;
lpxrow_r = 2.36808551e-01;
lpx_r = 9.93200180e-02;
lp_r = 4.66821148e-02;
lqcom_r = 1.89541355e-01;
lqg_r = 1.89541355e-01;
lqinv_r = 1.89541355e-01;
lqx_r = 1.89541355e-01;
lq_r = 1.89541355e-01;
ltdnr_r = -1.18856097e+00;
ltincr_r = -1.22427195e+00;
ltransf_r = -1.77795195e+00;
lw = 3.96210364e-01;
lwn_r = 4.42892479e-01;
lwsum_r = 5.37126313e+01;
lx = -7.42201072e-01;
lxdc0_cor = 0.00000000e+00;
lxdc_cor = 0.00000000e+00;
lxdc_cor_tot = 0.00000000e+00;
lxdg_cor = 0.00000000e+00;
lxdinv_cor = 0.00000000e+00;
lxdx_cor = 0.00000000e+00;
lxf_cor = 0.00000000e+00;
lxkl = -1.34039499e+00;
lxklc = -1.27166706e+00;
lxklcm = -1.00701027e+00;
lxm = -1.93851817e+00;
lxw0_cor = 0.00000000e+00;
lxw_cor = 0.00000000e+00;
lxw_cor_tot = 0.00000000e+00;
lxw_r = 4.42892479e-01;
lx_cor = 0.00000000e+00;
ly = 4.71663730e-01;
lykl = -2.54716516e+00;
lyrow = 4.48878700e-02;
lyrow_cor = 0.00000000e+00;
lyrow_gap = 0.00000000e+00;
lyrow_sreq = 4.48878700e-02;
ly_gap = 0.00000000e+00;
nfa = -4.19049428e-01;
nfa_ss = -4.19049428e-01;
num_w = -1.04603117e+00;
pcomrow_prow_ss = 1.52683410e+00;
pertarget = 4.95065682e-03;
pertran = 0.00000000e+00;
profit = 4.34016355e-01;
r1 = 7.55946120e-03;
r1n = 1.25599099e-02;
r1n_ss = 1.25599099e-02;
r1n_tran = 0.00000000e+00;
r1row = 7.05946120e-03;
r1rown = 2.53422577e-02;
r1rown_des = 1.05287926e-01;
r1row_ss = 7.05946120e-03;
rfn = 1.25599099e-02;
rf_prem = 0.00000000e+00;
rgb = 7.19014932e-02;
rgbn = 9.33395231e-02;
rgbn_cor = 0.00000000e+00;
rgbn_ss = 9.33395231e-02;
rgb_ss = 7.19014932e-02;
rhn = 1.25599099e-02;
rh_prem = 0.00000000e+00;
risk = 4.30197865e-03;
risk_cor = 0.00000000e+00;
risk_dyn = 0.00000000e+00;
risk_ss = 4.30197865e-03;
rkn = 2.46790266e-01;
target = 4.95065682e-03;
tdn = 3.20550092e-01;
tdn_cor = 0.00000000e+00;
tdn_ss = 3.20550092e-01;
tinc = 2.82344084e-01;
tincr_yn_ss = 1.75061524e-01;
tinc_cor = 0.00000000e+00;
tinc_ss = 2.82344084e-01;
transf_r_cor = 0.00000000e+00;
transf_yn = 1.00630710e-01;
transf_yn_ss = 1.00630710e-01;
u = 1.00000000e+00;
ucom = 1.00000000e+00;
ug = 1.00000000e+00;
uinv = 1.00000000e+00;
usact = 0.00000000e+00;
usum = 1.33284560e+02;
utotal = 1.00000000e+00;
ux = 1.00000000e+00;
w_inf = 1.98026273e-02;
interest = 0.00000000e+00;
inflation = 0.00000000e+00;
inflationq = 0.00000000e+00;
outputgap = 0.00000000e+00;
fispol = 0.00000000e+00;

CA_ToTEM10_set_auxiliary_variables(ys,exe);

NumberOfEndogenousVariables = M_.orig_endo_nbr;                    % Number of ORIGINAL endogenous variables.
ys = zeros(NumberOfEndogenousVariables,1);                    
for i = 1:NumberOfEndogenousVariables                         
  varname = deblank(M_.endo_names(i,:));                                     
  eval(['ys(' int2str(i) ') = ' varname ';']);                
end                                                           
  
check = 0;
