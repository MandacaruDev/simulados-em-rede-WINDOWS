@echo off
cd\
xcopy /E c:\simulados\moodle c:\xampp\htdocs
xcopy /E c:\simulados\moodledata c:\xampp
xcopy /E c:\simulados\moodle.sql c:\xampp\mysql\bin

@echo off
@echo off
 cls
 @echo.
 @echo       ***********************************************************
 @echo       ***                                                     ***
 @echo       ***  J� est� quase no fim, aguarde a instal��o terminar ***
 @echo       ***                                                     ***
 @echo       ***********************************************************
 @echo.
cd\
cd c:\xampp\mysql\bin 
mysql -u root -e "CREATE DATABASE moodle"
mysql -u root moodle < moodle.sql

shutdown -r -t 5

