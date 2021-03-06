%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'NK_CGG02';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_CGG02.log');
M_.exo_names = 'inf_';
M_.exo_names_tex = 'inf\_';
M_.exo_names_long = 'inf_';
M_.exo_names = char(M_.exo_names, 'a_');
M_.exo_names_tex = char(M_.exo_names_tex, 'a\_');
M_.exo_names_long = char(M_.exo_names_long, 'a_');
M_.exo_names = char(M_.exo_names, 'infstar_');
M_.exo_names_tex = char(M_.exo_names_tex, 'infstar\_');
M_.exo_names_long = char(M_.exo_names_long, 'infstar_');
M_.exo_names = char(M_.exo_names, 'ystar_');
M_.exo_names_tex = char(M_.exo_names_tex, 'ystar\_');
M_.exo_names_long = char(M_.exo_names_long, 'ystar_');
M_.exo_names = char(M_.exo_names, 'rstar_');
M_.exo_names_tex = char(M_.exo_names_tex, 'rstar\_');
M_.exo_names_long = char(M_.exo_names_long, 'rstar_');
M_.exo_names = char(M_.exo_names, 'astar_');
M_.exo_names_tex = char(M_.exo_names_tex, 'astar\_');
M_.exo_names_long = char(M_.exo_names_long, 'astar_');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'ytilde';
M_.endo_names_tex = 'ytilde';
M_.endo_names_long = 'ytilde';
M_.endo_names = char(M_.endo_names, 'ybar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ybar');
M_.endo_names_long = char(M_.endo_names_long, 'ybar');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'infl');
M_.endo_names_tex = char(M_.endo_names_tex, 'infl');
M_.endo_names_long = char(M_.endo_names_long, 'infl');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, 'r');
M_.endo_names_long = char(M_.endo_names_long, 'r');
M_.endo_names = char(M_.endo_names, 'rr');
M_.endo_names_tex = char(M_.endo_names_tex, 'rr');
M_.endo_names_long = char(M_.endo_names_long, 'rr');
M_.endo_names = char(M_.endo_names, 'u');
M_.endo_names_tex = char(M_.endo_names_tex, 'u');
M_.endo_names_long = char(M_.endo_names_long, 'u');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'ytildestar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ytildestar');
M_.endo_names_long = char(M_.endo_names_long, 'ytildestar');
M_.endo_names = char(M_.endo_names, 'ybarstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ybarstar');
M_.endo_names_long = char(M_.endo_names_long, 'ybarstar');
M_.endo_names = char(M_.endo_names, 'ystar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ystar');
M_.endo_names_long = char(M_.endo_names_long, 'ystar');
M_.endo_names = char(M_.endo_names, 'infstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'infstar');
M_.endo_names_long = char(M_.endo_names_long, 'infstar');
M_.endo_names = char(M_.endo_names, 'rstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'rstar');
M_.endo_names_long = char(M_.endo_names_long, 'rstar');
M_.endo_names = char(M_.endo_names, 'rrstar');
M_.endo_names_tex = char(M_.endo_names_tex, 'rrstar');
M_.endo_names_long = char(M_.endo_names_long, 'rrstar');
M_.endo_names = char(M_.endo_names, 'ustar');
M_.endo_names_tex = char(M_.endo_names_tex, 'ustar');
M_.endo_names_long = char(M_.endo_names_long, 'ustar');
M_.endo_names = char(M_.endo_names, 'astar');
M_.endo_names_tex = char(M_.endo_names_tex, 'astar');
M_.endo_names_long = char(M_.endo_names_long, 'astar');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_74');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_74');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_74');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_78');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_78');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_78');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_82');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_82');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_82');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_109');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_109');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_109');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_113');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_113');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_113');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_117');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_117');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_117');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_144');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_144');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_144');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_148');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_148');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_148');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_152');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_152');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_152');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_190');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_190');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_190');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_193');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_193');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_193');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_196');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_196');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_196');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_217');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_217');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_217');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_220');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_220');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_220');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_223');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_223');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_223');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_20_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_20\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_20_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_20_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_20\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_20_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_20_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_20\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_20_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_19_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_19\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_19_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_16_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_16\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_16_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_18_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_18\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_18_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_8_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_8\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_8_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_8_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_8\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_8_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_8_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_8\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_8_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_11_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_11\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_11_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_11_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_11\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_11_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_11_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_11\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_11_3');
M_.endo_partitions = struct();
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'sigma0');
M_.param_names_tex = char(M_.param_names_tex, 'sigma0');
M_.param_names_long = char(M_.param_names_long, 'sigma0');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'lambda');
M_.param_names_tex = char(M_.param_names_tex, 'lambda');
M_.param_names_long = char(M_.param_names_long, 'lambda');
M_.param_names = char(M_.param_names, 'rhoa');
M_.param_names_tex = char(M_.param_names_tex, 'rhoa');
M_.param_names_long = char(M_.param_names_long, 'rhoa');
M_.param_names = char(M_.param_names, 'rhou');
M_.param_names_tex = char(M_.param_names_tex, 'rhou');
M_.param_names_long = char(M_.param_names_long, 'rhou');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'kappa0');
M_.param_names_tex = char(M_.param_names_tex, 'kappa0');
M_.param_names_long = char(M_.param_names_long, 'kappa0');
M_.param_names = char(M_.param_names, 'delta1');
M_.param_names_tex = char(M_.param_names_tex, 'delta1');
M_.param_names_long = char(M_.param_names_long, 'delta1');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_names = char(M_.param_names, 'phi');
M_.param_names_tex = char(M_.param_names_tex, 'phi');
M_.param_names_long = char(M_.param_names_long, 'phi');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'gamma1');
M_.param_names_tex = char(M_.param_names_tex, 'gamma1');
M_.param_names_long = char(M_.param_names_long, 'gamma1');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 59;
M_.param_nbr = 46;
M_.orig_endo_nbr = 21;
M_.aux_vars(1).endo_index = 22;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 23;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 24;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 25;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 26;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 27;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 28;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 29;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 30;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 31;
M_.aux_vars(10).type = 0;
M_.aux_vars(11).endo_index = 32;
M_.aux_vars(11).type = 0;
M_.aux_vars(12).endo_index = 33;
M_.aux_vars(12).type = 0;
M_.aux_vars(13).endo_index = 34;
M_.aux_vars(13).type = 0;
M_.aux_vars(14).endo_index = 35;
M_.aux_vars(14).type = 0;
M_.aux_vars(15).endo_index = 36;
M_.aux_vars(15).type = 0;
M_.aux_vars(16).endo_index = 37;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 4;
M_.aux_vars(16).orig_lead_lag = -1;
M_.aux_vars(17).endo_index = 38;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 4;
M_.aux_vars(17).orig_lead_lag = -2;
M_.aux_vars(18).endo_index = 39;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 21;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 40;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 21;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 41;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 21;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 42;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 20;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 43;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 20;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 44;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 20;
M_.aux_vars(23).orig_lead_lag = -3;
M_.aux_vars(24).endo_index = 45;
M_.aux_vars(24).type = 1;
M_.aux_vars(24).orig_index = 17;
M_.aux_vars(24).orig_lead_lag = -1;
M_.aux_vars(25).endo_index = 46;
M_.aux_vars(25).type = 1;
M_.aux_vars(25).orig_index = 17;
M_.aux_vars(25).orig_lead_lag = -2;
M_.aux_vars(26).endo_index = 47;
M_.aux_vars(26).type = 1;
M_.aux_vars(26).orig_index = 17;
M_.aux_vars(26).orig_lead_lag = -3;
M_.aux_vars(27).endo_index = 48;
M_.aux_vars(27).type = 1;
M_.aux_vars(27).orig_index = 19;
M_.aux_vars(27).orig_lead_lag = -1;
M_.aux_vars(28).endo_index = 49;
M_.aux_vars(28).type = 1;
M_.aux_vars(28).orig_index = 19;
M_.aux_vars(28).orig_lead_lag = -2;
M_.aux_vars(29).endo_index = 50;
M_.aux_vars(29).type = 1;
M_.aux_vars(29).orig_index = 19;
M_.aux_vars(29).orig_lead_lag = -3;
M_.aux_vars(30).endo_index = 51;
M_.aux_vars(30).type = 1;
M_.aux_vars(30).orig_index = 9;
M_.aux_vars(30).orig_lead_lag = -1;
M_.aux_vars(31).endo_index = 52;
M_.aux_vars(31).type = 1;
M_.aux_vars(31).orig_index = 9;
M_.aux_vars(31).orig_lead_lag = -2;
M_.aux_vars(32).endo_index = 53;
M_.aux_vars(32).type = 1;
M_.aux_vars(32).orig_index = 9;
M_.aux_vars(32).orig_lead_lag = -3;
M_.aux_vars(33).endo_index = 54;
M_.aux_vars(33).type = 1;
M_.aux_vars(33).orig_index = 13;
M_.aux_vars(33).orig_lead_lag = -1;
M_.aux_vars(34).endo_index = 55;
M_.aux_vars(34).type = 1;
M_.aux_vars(34).orig_index = 13;
M_.aux_vars(34).orig_lead_lag = -2;
M_.aux_vars(35).endo_index = 56;
M_.aux_vars(35).type = 1;
M_.aux_vars(35).orig_index = 13;
M_.aux_vars(35).orig_lead_lag = -3;
M_.aux_vars(36).endo_index = 57;
M_.aux_vars(36).type = 1;
M_.aux_vars(36).orig_index = 12;
M_.aux_vars(36).orig_lead_lag = -1;
M_.aux_vars(37).endo_index = 58;
M_.aux_vars(37).type = 1;
M_.aux_vars(37).orig_index = 12;
M_.aux_vars(37).orig_lead_lag = -2;
M_.aux_vars(38).endo_index = 59;
M_.aux_vars(38).type = 1;
M_.aux_vars(38).orig_index = 12;
M_.aux_vars(38).orig_lead_lag = -3;
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('NK_CGG02_static');
erase_compiled_function('NK_CGG02_dynamic');
M_.orig_eq_nbr = 21;
M_.eq_nbr = 59;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 36 95;
 0 37 96;
 0 38 97;
 1 39 98;
 0 40 0;
 0 41 0;
 2 42 0;
 3 43 0;
 4 44 99;
 0 45 100;
 0 46 101;
 5 47 102;
 6 48 0;
 0 49 0;
 7 50 0;
 8 51 0;
 9 52 0;
 0 53 0;
 10 54 103;
 11 55 104;
 12 56 105;
 0 57 106;
 0 58 107;
 0 59 108;
 0 60 109;
 0 61 110;
 0 62 111;
 0 63 112;
 0 64 113;
 0 65 114;
 0 66 115;
 0 67 116;
 0 68 117;
 0 69 118;
 0 70 119;
 0 71 120;
 13 72 0;
 14 73 0;
 15 74 0;
 16 75 0;
 17 76 0;
 18 77 0;
 19 78 0;
 20 79 0;
 21 80 0;
 22 81 0;
 23 82 0;
 24 83 0;
 25 84 0;
 26 85 0;
 27 86 0;
 28 87 0;
 29 88 0;
 30 89 0;
 31 90 0;
 32 91 0;
 33 92 0;
 34 93 0;
 35 94 0;]';
M_.nstatic = 4;
M_.nfwrd   = 20;
M_.npred   = 29;
M_.nboth   = 6;
M_.nsfwrd   = 26;
M_.nspred   = 35;
M_.ndynamic   = 55;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:7];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(59, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(46, 1);
M_.NNZDerivatives = [199; 0; -1];
M_.params( 36 ) = 0.99;
beta = M_.params( 36 );
M_.params( 38 ) = 0.9;
rhoa = M_.params( 38 );
M_.params( 39 ) = 0;
rhou = M_.params( 39 );
M_.params( 40 ) = 7;
sigma = M_.params( 40 );
M_.params( 44 ) = 1;
phi = M_.params( 44 );
M_.params( 45 ) = 0.75;
theta = M_.params( 45 );
M_.params( 46 ) = 0.5;
gamma1 = M_.params( 46 );
M_.params( 41 ) = M_.params(40)*M_.params(46)-M_.params(46);
kappa0 = M_.params( 41 );
M_.params( 43 ) = M_.params(40)+M_.params(44)-M_.params(41);
kappa = M_.params( 43 );
M_.params( 35 ) = M_.params(40)-M_.params(41);
sigma0 = M_.params( 35 );
M_.params( 42 ) = (1-M_.params(45))*(1-M_.params(45)*M_.params(36))/M_.params(45);
delta1 = M_.params( 42 );
M_.params( 37 ) = M_.params(42)*M_.params(43);
lambda = M_.params( 37 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);   
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
M_.Sigma_e(5, 5) = 0;
M_.Sigma_e(6, 6) = 0;
M_.Sigma_e(7, 7) = 0;
save('NK_CGG02_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_CGG02_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_CGG02_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_CGG02_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_CGG02_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('NK_CGG02_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('NK_CGG02_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
