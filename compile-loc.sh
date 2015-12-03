# !/usr/bin

git pull

cp -R  src/main/webapp/static/*  src/main/webapp/

mvn  compile 
mvn war:war


#scp -r  target/appadmin ubuntu@54.223.158.170:/home/ubuntu/jetty/webapps

#ssh ubuntu@54.223.158.170 'cd /home/ubuntu/jetty/webapps/appadmin; mkdir storage ; chmod 777 -R storage/ ;'
#ssh ubuntu@54.223.158.170 'cd /home/ubuntu/jetty/bin; sudo ./jetty.sh restart'





 
 




