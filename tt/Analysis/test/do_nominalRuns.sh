 rm outputs_nominal/*
 #####################
 #### Nominal runs ###
 #####################

 # 1. Data
 ./tt_analyzer.exe myntuples/Sep03_v2/data_B.root outputs_nominal/data_B.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_C.root outputs_nominal/data_C.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_D.root outputs_nominal/data_D.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_E.root outputs_nominal/data_E.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_F.root outputs_nominal/data_F.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_G.root outputs_nominal/data_G.root data_obs data_obs 0
 ./tt_analyzer.exe myntuples/Sep03_v2/data_H.root outputs_nominal/data_H.root data_obs data_obs 0
 hadd -f outputs_nominal/data.root outputs_nominal/data_*.root
 # 2. Signals
 ./tt_analyzer.exe myntuples/Sep03_v2/VBF125.root outputs_nominal/VBF125.root VBF125  VBF125 0
 ./tt_analyzer.exe myntuples/Sep03_v2/ggH125.root outputs_nominal/ggH125.root ggH125 ggH125 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WplusH125.root outputs_nominal/WplusH125.root WplusH125 WH125 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WminusH125.root outputs_nominal/WminusH125.root WminusH125 WH125 0
 hadd -f outputs_nominal/WH125.root outputs_nominal/WplusH125.root outputs_nominal/WminusH125.root
 ./tt_analyzer.exe myntuples/Sep03_v2/ZH125.root outputs_nominal/ZH125.root ZH125  ZH125 0
 # 3. DY
 ./tt_analyzer.exe myntuples/Sep03_v2/DY.root outputs_nominal/ZTT0.root ZTT ZTT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY1.root outputs_nominal/ZTT1.root ZTT ZTT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY2.root outputs_nominal/ZTT2.root ZTT ZTT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY3.root outputs_nominal/ZTT3.root ZTT ZTT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY4.root outputs_nominal/ZTT4.root ZTT ZTT 0
 hadd -f outputs_nominal/ZTT.root outputs_nominal/ZTT0.root outputs_nominal/ZTT1.root outputs_nominal/ZTT2.root outputs_nominal/ZTT3.root outputs_nominal/ZTT4.root
 ./tt_analyzer.exe myntuples/Sep03_v2/DY.root outputs_nominal/ZL0.root ZL ZL 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY1.root outputs_nominal/ZL1.root ZL ZL 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY2.root outputs_nominal/ZL2.root ZL ZL 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY3.root outputs_nominal/ZL3.root ZL ZL 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY4.root outputs_nominal/ZL4.root ZL  ZL 0
 hadd -f outputs_nominal/ZL.root outputs_nominal/ZL0.root outputs_nominal/ZL1.root outputs_nominal/ZL2.root outputs_nominal/ZL3.root outputs_nominal/ZL4.root
 ./tt_analyzer.exe myntuples/Sep03_v2/DY.root outputs_nominal/ZJ0.root ZJ ZJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY1.root outputs_nominal/ZJ1.root ZJ ZJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY2.root outputs_nominal/ZJ2.root ZJ ZJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY3.root outputs_nominal/ZJ3.root ZJ ZJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/DY4.root outputs_nominal/ZJ4.root ZJ ZJ 0
 hadd -f outputs_nominal/ZJ.root outputs_nominal/ZJ0.root outputs_nominal/ZJ1.root outputs_nominal/ZJ2.root outputs_nominal/ZJ3.root outputs_nominal/ZJ4.root
 # 4. EWKZ
 ./tt_analyzer.exe myntuples/Sep03_v2/EWKZ2l.root outputs_nominal/EWKZ2l.root EWKZLL EWKZ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/EWKZ2nu.root outputs_nominal/EWKZ2nu.root EWKZNuNu EWKZ 0
 hadd -f outputs_nominal/EWKZ.root outputs_nominal/EWKZ2l.root outputs_nominal/EWKZ2nu.root
 # 5. TT
 ./tt_analyzer.exe myntuples/Sep03_v2/TT.root outputs_nominal/TTT.root TTT TTT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/TT.root outputs_nominal/TTJ.root TTJ TTJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/W.root outputs_nominal/W0.root W W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/W1.root outputs_nominal/W1.root W W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/W2.root outputs_nominal/W2.root W W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/W3.root outputs_nominal/W3.root W W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/W4.root outputs_nominal/W4.root W W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/EWKWMinus.root outputs_nominal/EWKWMinus.root EWKWminus W 0
 ./tt_analyzer.exe myntuples/Sep03_v2/EWKWPlus.root outputs_nominal/EWKWPlus.root EWKWplus W 0
 hadd -f outputs_nominal/WJets.root outputs_nominal/W0.root outputs_nominal/W1.root outputs_nominal/W2.root outputs_nominal/W3.root outputs_nominal/W4.root outputs_nominal/EWKWMinus.root outputs_nominal/EWKWPlus.root 
 # 6. VV
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ1l1nu2q.root outputs_nominal/WZ1l1nu2q_T.root WZ1L1Nu2Q VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ1l3nu.root outputs_nominal/WZ1l3nu_T.root WZ1L3Nu VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ3l1nu.root outputs_nominal/WZ3l1nu_T.root WZLLLNu VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ2l2q.root outputs_nominal/WZ2l2q_T.root WZ2L2Q VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WW1l1nu2q.root outputs_nominal/WW1l1nu2q_T.root WW1L1Nu2Q VVT 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/ZZ4l.root outputs_nominal/ZZ4l_T.root ZZ4L VVT 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/ZZ2l2q.root outputs_nominal/ZZ2l2q_T.root ZZ2L2Q VVT 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/VV2l2nu.root outputs_nominal/VV2l2nu_T.root VV2L2Nu VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/Tbar-tW.root outputs_nominal/Tbar-tW_T.root ST_tW_antitop VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/T-tW.root outputs_nominal/T-tW_T.root ST_tW_top VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/Tbar-tchan.root outputs_nominal/Tbar-tchan_T.root ST_t_antitop VVT 0
 ./tt_analyzer.exe myntuples/Sep03_v2/T-tchan.root outputs_nominal/T-tchan_T.root ST_t_top VVT 0
 hadd -f outputs_nominal/VVT.root outputs_nominal/WZ1l1nu2q_T.root outputs_nominal/WZ1l3nu_T.root outputs_nominal/WZ1l1nu2q_T.root outputs_nominal/WZ3l1nu_T.root outputs_nominal/WZ2l2q_T.root outputs_nominal/WW1l1nu2q_T.root outputs_nominal/ZZ4l_T.root outputs_nominal/ZZ2l2q_T.root outputs_nominal/VV2l2nu_T.root outputs_nominal/Tbar-tW_T.root outputs_nominal/T-tW_T.root outputs_nominal/Tbar-tchan_T.root outputs_nominal/T-tchan_T.root 
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ1l1nu2q.root outputs_nominal/WZ1l1nu2q_J.root WZ1L1Nu2Q VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ1l3nu.root outputs_nominal/WZ1l3nu_J.root WZ1L3Nu VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ3l1nu.root outputs_nominal/WZ3l1nu_J.root WZLLLNu VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WZ2l2q.root outputs_nominal/WZ2l2q_J.root WZ2L2Q VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/WW1l1nu2q.root outputs_nominal/WW1l1nu2q_J.root WW1L1Nu2Q VVJ 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/ZZ4l.root outputs_nominal/ZZ4l_J.root ZZ4L VVJ 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/ZZ2l2q.root outputs_nominal/ZZ2l2q_J.root ZZ2L2Q VVJ 0 
 ./tt_analyzer.exe myntuples/Sep03_v2/VV2l2nu.root outputs_nominal/VV2l2nu_J.root VV2L2Nu VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/Tbar-tW.root outputs_nominal/Tbar-tW_J.root ST_tW_antitop VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/T-tW.root outputs_nominal/T-tW_J.root ST_tW_top VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/Tbar-tchan.root outputs_nominal/Tbar-tchan_J.root ST_t_antitop VVJ 0
 ./tt_analyzer.exe myntuples/Sep03_v2/T-tchan.root outputs_nominal/T-tchan_J.root ST_t_top VVJ 0
 hadd -f outputs_nominal/VVJ.root outputs_nominal/WZ1l1nu2q_J.root outputs_nominal/WZ1l3nu_J.root outputs_nominal/WZ1l1nu2q_J.root outputs_nominal/WZ3l1nu_J.root outputs_nominal/WZ2l2q_J.root outputs_nominal/WW1l1nu2q_J.root outputs_nominal/ZZ4l_J.root outputs_nominal/ZZ2l2q_J.root outputs_nominal/VV2l2nu_J.root outputs_nominal/Tbar-tW_J.root outputs_nominal/T-tW_J.root outputs_nominal/Tbar-tchan_J.root outputs_nominal/T-tchan_J.root 

 #python ../python/Creat_sig.py
 python ../python/Creat_QCD.py

 # hadd all outputs
 hadd -f final_nominal.root outputs_nominal/data.root outputs_nominal/ZTT.root outputs_nominal/ZJ.root outputs_nominal/ZL.root outputs_nominal/TTT.root outputs_nominal/TTJ.root outputs_nominal/VTT.root outputs_nominal/VVJ.root outputs_nominal/W.root outputs_nominal/EWKZ.root outputs_nominal/VBF125.root outputs_nominal/ggH125.root outputs_nominal/WH125.root outputs_nominal/ZH125.root outputs_nominal/QCD.root 

