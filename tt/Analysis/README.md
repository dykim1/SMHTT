# SMHTT/tt
===========================
### Preparing datacards
```
mkdir -p myntuples/Jun27/
cp /hdfs/store/user/ymaravin/2016/tt/DatacardReady/* myntuples/Jun27/
python onerun_SCRIPT.py
source OneRun.txt
```
The last step takes ~2 hours (?) One can speed things up by not adding
systematic runs by commenting things in OneRun.txt.
The output root file has to go to HTTSM2017 area like so:
```
cp htt_tt.inputs-sm-13TeV-2D.root $CMSSW_BASE/src/CombineHarvester/HTTSM2017/shapes/USCMS
```
As of 05.Jul.2018, this datacard is stored in 
```
/hdfs/store/user/ymaravin/2016/tt/DatacardReady/
```
so you can just fish it out from myntuples/Jun27
The next step is to run the limits: see $CMSSW_BASE/src/CombineHarvester/HTTSM2017/README.md for
instructions on how to do this.
