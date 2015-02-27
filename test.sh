GROUP_ID=it.test
COMPONENT=testComponent
CLASSNAME=`echo ${COMPONENT:0:1} | tr  '[a-z]' '[A-Z]'`${COMPONENT:1}
DATABASE=testDb

#cd rs-archetype-model
#mvn clean install
#cd ..
rm -rf $COMPONENT-model
mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=it.siletto.ms -DarchetypeArtifactId=ms-model -DarchetypeVersion=1.0.1 -DgroupId=$GROUP_ID -DartifactId=$COMPONENT-model -DprojectPackage=$COMPONENT -DdatabaseName=$DATABASE 
cd $COMPONENT-model
mvn eclipse:eclipse -DdownloadSources=true
mvn install
cd ..


#cd rs-archetype-client
#mvn clean install
#cd ..
rm -rf $COMPONENT-client
mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=it.siletto.ms -DarchetypeArtifactId=ms-client -DarchetypeVersion=1.0.1 -DgroupId=$GROUP_ID -DartifactId=$COMPONENT-client -DprojectPackage=$COMPONENT -DclassName=$CLASSNAME
cd $COMPONENT-client
mvn eclipse:eclipse -DdownloadSources=true
mvn install
cd ..

#cd rs-archetype-service
#mvn clean install
#cd ..
rm -rf $COMPONENT-service
mvn archetype:generate -DinteractiveMode=false -DarchetypeGroupId=it.siletto.ms -DarchetypeArtifactId=ms-service -DarchetypeVersion=1.0.1 -DgroupId=$GROUP_ID -DartifactId=$COMPONENT-service -DprojectPackage=$COMPONENT -DclassName=$CLASSNAME
cd $COMPONENT-service
mvn eclipse:eclipse -DdownloadSources=true
mvn install
cd ..



