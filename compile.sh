cd /cygdrive/c/Users/user/git/EmployeeDB
mvn clean && mvn compile && mvn package
cd /cygdrive/e/software/apache-tomcat-9.0.1/webapps
rm EmployeeDB.war
cd /cygdrive/e/software/apache-tomcat-9.0.1/webapps
rm -r EmployeeDB
cd /cygdrive/c/Users/user/git/EmployeeDB/target
cp EmployeeDB.war /cygdrive/e/software/apache-tomcat-9.0.1/webapps
cd /cygdrive/e/software/apache-tomcat-9.0.1/bin
bash startup.sh
