#Location of the input skimmed svfitted root files
InputDirectory='myntuples/Jun27/'


import os

SampleList=[

    ['Data','data_B.root','data_B.root','data_obs','data_obs'],
    ['Data','data_C.root','data_C.root','data_obs','data_obs'],
    ['Data','data_D.root','data_D.root','data_obs','data_obs'],
    ['Data','data_E.root','data_E.root','data_obs','data_obs'],
    ['Data','data_F.root','data_F.root','data_obs','data_obs'],
    ['Data','data_G.root','data_G.root','data_obs','data_obs'],
    ['Data','data_H.root','data_H.root','data_obs','data_obs'],
     
    ['Signal','VBF125.root','VBF125.root','VBF125 ','VBF125'],
    ['Signal','ggH125.root','ggH125.root','ggH125','ggH125'],
    ['Signal','WplusH125.root','WplusH125.root','WplusH125','WplusH125'],
    ['Signal','WminusH125.root','WminusH125.root','WminusH125','WminusH125'],
    ['Signal','ZH125.root','ZH125.root','ZH125 ','ZH125'],

    ['DY','DY.root','ZTT0.root','ZTT','ZTT'],
    ['DY','DY1.root','ZTT1.root','ZTT','ZTT'],
    ['DY','DY2.root','ZTT2.root','ZTT','ZTT'],
    ['DY','DY3.root','ZTT3.root','ZTT','ZTT'],
    ['DY','DY4.root','ZTT4.root','ZTT','ZTT'],

    ['DY','DY.root','ZL0.root','ZL','ZL'],
    ['DY','DY1.root','ZL1.root','ZL','ZL'],
    ['DY','DY2.root','ZL2.root','ZL','ZL'],
    ['DY','DY3.root','ZL3.root','ZL','ZL'],
    ['DY','DY4.root','ZL4.root','ZL ','ZL'],

    ['DY','DY.root','ZJ0.root','ZJ','ZJ'],
    ['DY','DY1.root','ZJ1.root','ZJ','ZJ'],
    ['DY','DY2.root','ZJ2.root','ZJ','ZJ'],
    ['DY','DY3.root','ZJ3.root','ZJ','ZJ'],
    ['DY','DY4.root','ZJ4.root','ZJ','ZJ'],

    ['TT','TT.root','TT.root','TT','TT'],

    ['VV','VV.root','VV.root','VV2L2Nu','VV'],

    ['W','W.root','W0.root','W','W'],
    ['W','W1.root','W1.root','W','W'],
    ['W','W2.root','W2.root','W','W'],
    ['W','W3.root','W3.root','W','W'],
    ['W','W4.root','W4.root','W','W'],

]


outF=open('OneRun.txt','w')

outF.write("\n ./Make.sh FinalSelection2D_relaxedFR.cc \n")



####################################################
# Run nominal
####################################################
#Location of the output nominal root files
OutDir='files_nominal/'

for proc in SampleList:

    # Run on all processes
    outF.write("\n ./FinalSelection2D_relaxedFR.exe %s/%s %s/%s %s %s %d"%(InputDirectory,proc[1],OutDir,proc[2],proc[3],proc[4],0))


# hadd data samples
outF.write("\n\n hadd -f %s/data.root %s/data_*.root"%(OutDir,OutDir))

# hadd ZTT
outF.write("\n\n hadd -f %s/ZTT.root %s/ZTT?.root"%(OutDir,OutDir))

# hadd ZL
outF.write("\n\n hadd -f %s/ZL.root %s/ZL?.root"%(OutDir,OutDir))

# hadd ZJ
outF.write("\n\n hadd -f %s/ZJ.root %s/ZJ?.root"%(OutDir,OutDir))

# hadd W
outF.write("\n\n hadd -f %s/WJets.root %s/W?.root"%(OutDir,OutDir))



outF.write("\n\n python Creat_WH.py")
outF.write("\n\n python Creat_sig.py")
outF.write("\n\n python Creat_QCD.py")

HaddNameNominal='final_nominal.root'
# Final hadd for nominal distributions
outF.write("\n\n hadd -f %s %s/SMH.root %s/ZTT.root %s/ZJ.root %s/ZL.root %s/TT.root %s/VV.root %s/data.root %s/WJets.root %s/QCD.root %s/VBF125.root %s/ggH125.root %s/WH125.root %s/ZH125.root"%(HaddNameNominal,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir,OutDir))

# Making plots for each category
outF.write("\n\n python plot_tt_category.py \n\n\n\n")


####################################################
# Run Z shape Uncertainty Up
####################################################
#Location of the output Z Shape Up
OutDir='ZShapeUp'

for proc in SampleList:
    
    # Run on all processes
    if proc[0]=='DY':
        outF.write("\n ./FinalSelection2D_relaxedFR.exe %s/%s %s/%s %s %s %d"%(InputDirectory,proc[1],OutDir,proc[2],proc[3],proc[4],10))

# hadd ZTT
outF.write("\n\n hadd -f %s/ZTT.root %s/ZTT?.root"%(OutDir,OutDir))

# hadd ZL
outF.write("\n\n hadd -f %s/ZL.root %s/ZL?.root"%(OutDir,OutDir))

# hadd ZJ
outF.write("\n\n hadd -f %s/ZJ.root %s/ZJ?.root"%(OutDir,OutDir))

# Final hadd for ZShapeUp distributions
HaddNameZShapeUp='final_ZShapeUp.root'
outF.write("\n\n hadd -f  %s %s/ZTT.root %s/ZJ.root %s/ZL.root \n\n\n\n"%(HaddNameZShapeUp,OutDir,OutDir,OutDir))



####################################################
# Run Z shape Uncertainty Down
####################################################
#Location of the output Z Shape Down
OutDir='ZShapeDown'

for proc in SampleList:
    
    # Run on all processes
    if proc[0]=='DY':
        outF.write("\n ./FinalSelection2D_relaxedFR.exe %s/%s %s/%s %s %s %d"%(InputDirectory,proc[1],OutDir,proc[2],proc[3],proc[4],-10))

# hadd ZTT
outF.write("\n\n hadd -f %s/ZTT.root %s/ZTT?.root"%(OutDir,OutDir))

# hadd ZL
outF.write("\n\n hadd -f %s/ZL.root %s/ZL?.root"%(OutDir,OutDir))

# hadd ZJ
outF.write("\n\n hadd -f %s/ZJ.root %s/ZJ?.root"%(OutDir,OutDir))


# Final hadd for ZShapeDown distributions
HaddNameZShapeDown='final_ZShapeDown.root'
outF.write("\n\n hadd -f  %s %s/ZTT.root %s/ZJ.root %s/ZL.root \n\n\n\n"%(HaddNameZShapeDown,OutDir,OutDir,OutDir))


####################################################
####################################################
####################################################
# Grand Hadd
####################################################
####################################################
####################################################
FinallHaddName='htt_tt.inputs-sm-13TeV-2D.root'

outF.write("\n\n hadd -f %s    %s %s %s \n\n\n\n"%(FinallHaddName,HaddNameNominal,HaddNameZShapeUp,HaddNameZShapeDown))
 
