# Sauve Jiri - Tree Aid App
## Introduction

To help farmers in Mali, we have developed a prototype of an application which helps local farmers sustaining the trees in their area. This is done via multiple functionalities. The main programmed functionalities are the sharing of knowledge about certain tree types, and the reporting of illegal cut trees. After these reports, the team can take necessary action. 

## The Application

The Save Trees app consists of multiple projects. The main ones are:
* A voice application
* A web app (front-end)
* Back-end

These are all in seperate folders. The main voice application runs through the main folder, in this case the text.vxml file. However, all php files are necessary to process the information provided.

The web app is a prototype which currently runs on HTML5 with a little PHP to process. This can be found in the */webapp/* folder.

The back-end is accessible through the */admin/* folder. *Note that the starting page is at /login.php*. The back-end runs on HTML, while the server side is provided by PHP and MYSQL implementations. The code is not in a final state, but we have tried to make it as secure as needed.

## Security

All processing has been made secure to avoid dataleaks or databreaches. PHP 7.4 provides an up to date library, which makes the use of MYSQLi very easy. Every communication with the database is stripped to protect itself from SQL injection. 

User passwords are stored in salted bCrypt hashes, which are not reversable and secure enough for our application.

## Installation

 It is easy to install the Sauve Jiri app to any webspace. It runs completely on VoiceXML, PHP and MYSQL. Installation is as easy as changing a few configurations (Your database information) and running an import of the database. 

 First, you need to change the database configuration in the config.php file. Afterwards, run the db.sql from the db_install folder in your database management program. In case of phpmyadmin, this can be done from the top menu. Go to import, and upload and run the file.

 Finally, go to admin/register.php to register a new admin users. Permissions are not yet implemented and are therefore not present.
