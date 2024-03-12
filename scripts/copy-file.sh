#!/bin/bash
#sudo cp -r ./non-prod/dedicated/extraVars/v1.2.0#networkConfigs.json ./prod/dedicated/extraVars/


for i in `ls -l ./non-prod/dedicated/extraVars/*.json | grep -v total | awk '{print $ ( ? )}'`
do
   cd ./non-prod/dedicated/extraVars/
   cp $i ./prod/dedicated/extraVars/$i.
done