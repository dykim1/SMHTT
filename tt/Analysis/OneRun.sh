
 ./Make.sh FinalSelection2D_relaxedFR.cc 

 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_B.root files_nominal//data_B.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_C.root files_nominal//data_C.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_D.root files_nominal//data_D.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_E.root files_nominal//data_E.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_F.root files_nominal//data_F.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_G.root files_nominal//data_G.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//data_H.root files_nominal//data_H.root data_obs data_obs 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//VBF125.root files_nominal//VBF125.root VBF125  VBF125 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//ggH125.root files_nominal//ggH125.root ggH125 ggH125 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//WplusH125.root files_nominal//WplusH125.root WplusH125 WplusH125 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//WminusH125.root files_nominal//WminusH125.root WminusH125 WminusH125 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//ZH125.root files_nominal//ZH125.root ZH125  ZH125 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root files_nominal//ZTT0.root ZTT ZTT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root files_nominal//ZTT1.root ZTT ZTT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root files_nominal//ZTT2.root ZTT ZTT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root files_nominal//ZTT3.root ZTT ZTT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root files_nominal//ZTT4.root ZTT ZTT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root files_nominal//ZL0.root ZL ZL 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root files_nominal//ZL1.root ZL ZL 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root files_nominal//ZL2.root ZL ZL 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root files_nominal//ZL3.root ZL ZL 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root files_nominal//ZL4.root ZL  ZL 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root files_nominal//ZJ0.root ZJ ZJ 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root files_nominal//ZJ1.root ZJ ZJ 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root files_nominal//ZJ2.root ZJ ZJ 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root files_nominal//ZJ3.root ZJ ZJ 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root files_nominal//ZJ4.root ZJ ZJ 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//TT.root files_nominal//TT.root TT TT 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//VV.root files_nominal//VV.root VV2L2Nu VV 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//W.root files_nominal//W0.root W W 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//W1.root files_nominal//W1.root W W 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//W2.root files_nominal//W2.root W W 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//W3.root files_nominal//W3.root W W 0
 ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//W4.root files_nominal//W4.root W W 0

 python Overflow.py


 hadd -f files_nominal//data.root files_nominal//data_*.root

 hadd -f files_nominal//ZTT.root files_nominal//ZTT?.root

 hadd -f files_nominal//ZL.root files_nominal//ZL?.root

 hadd -f files_nominal//ZJ.root files_nominal//ZJ?.root

 hadd -f files_nominal//WJets.root files_nominal//W?.root

 python Creat_WH.py

 python Creat_sig.py

 python Creat_QCD.py

 hadd -f final_nominal.root files_nominal//SMH.root files_nominal//ZTT.root files_nominal//ZJ.root files_nominal//ZL.root files_nominal//TT.root files_nominal//VV.root files_nominal//data.root files_nominal//WJets.root files_nominal//QCD.root files_nominal//VBF125.root files_nominal//ggH125.root files_nominal//WH125.root files_nominal//ZH125.root

 python plot_tt_category.py 




# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeUp/ZTT0.root ZTT ZTT 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeUp/ZTT1.root ZTT ZTT 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeUp/ZTT2.root ZTT ZTT 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeUp/ZTT3.root ZTT ZTT 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeUp/ZTT4.root ZTT ZTT 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeUp/ZL0.root ZL ZL 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeUp/ZL1.root ZL ZL 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeUp/ZL2.root ZL ZL 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeUp/ZL3.root ZL ZL 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeUp/ZL4.root ZL  ZL 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeUp/ZJ0.root ZJ ZJ 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeUp/ZJ1.root ZJ ZJ 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeUp/ZJ2.root ZJ ZJ 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeUp/ZJ3.root ZJ ZJ 10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeUp/ZJ4.root ZJ ZJ 10

# hadd -f ZShapeUp/ZTT.root ZShapeUp/ZTT?.root

# hadd -f ZShapeUp/ZL.root ZShapeUp/ZL?.root

# hadd -f ZShapeUp/ZJ.root ZShapeUp/ZJ?.root

# hadd -f  final_ZShapeUp.root ZShapeUp/ZTT.root ZShapeUp/ZJ.root ZShapeUp/ZL.root 




# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeDown/ZTT0.root ZTT ZTT -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeDown/ZTT1.root ZTT ZTT -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeDown/ZTT2.root ZTT ZTT -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeDown/ZTT3.root ZTT ZTT -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeDown/ZTT4.root ZTT ZTT -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeDown/ZL0.root ZL ZL -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeDown/ZL1.root ZL ZL -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeDown/ZL2.root ZL ZL -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeDown/ZL3.root ZL ZL -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeDown/ZL4.root ZL  ZL -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY.root ZShapeDown/ZJ0.root ZJ ZJ -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY1.root ZShapeDown/ZJ1.root ZJ ZJ -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY2.root ZShapeDown/ZJ2.root ZJ ZJ -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY3.root ZShapeDown/ZJ3.root ZJ ZJ -10
# ./FinalSelection2D_relaxedFR.exe myntuples/Jun27//DY4.root ZShapeDown/ZJ4.root ZJ ZJ -10

# hadd -f ZShapeDown/ZTT.root ZShapeDown/ZTT?.root

# hadd -f ZShapeDown/ZL.root ZShapeDown/ZL?.root

# hadd -f ZShapeDown/ZJ.root ZShapeDown/ZJ?.root

# hadd -f  final_ZShapeDown.root ZShapeDown/ZTT.root ZShapeDown/ZJ.root ZShapeDown/ZL.root 


# hadd -f htt_tt.inputs-sm-13TeV-2D.root    final_nominal.root final_ZShapeUp.root final_ZShapeDown.root 



