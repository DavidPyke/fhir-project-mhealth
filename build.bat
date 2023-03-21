rmdir /s/q temp output build
REM Build the source
call mvn compile package
REM Run it over the data
java -cp target\mhealth-ade.jar;target\lib\* org.hl7.mhealth.ade.Convert 10_functional_requirements 2>errs.log

REM Build the IG
REM "%JAVA_HOME%\bin\java" -Xmx2G -jar ../publisher.jar -ig ig.ini %TX% %*
_genonce.bat