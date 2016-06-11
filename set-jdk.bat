@echo off
echo Begin to set Java environment variable
echo Please wait a moment......
wmic ENVIRONMENT where "name='JAVA_HOME'" delete
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="%~dp0"
wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;%Path%"
wmic ENVIRONMENT where "name='CLASSPATH'" delete
wmic ENVIRONMENT create name="CLASSPATH",username="<system>",VariableValue=".;%%JAVA_HOME%%\lib\tools.jar;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\jre\lib\rt.jar"
echo ---------------------------------------------------------------------
echo Done successfully!
echo You can get what done in your the dirctory of the [set.bat] !
echo ---------------------------------------------------------------------
wmic ENVIRONMENT where "name='JAVA_HOME'">> jdk.txt
wmic ENVIRONMENT where "name='Path'" >> jdk.txt
wmic ENVIRONMENT where "name='CLASSPATH'">>jdk.txt
call sendMessage