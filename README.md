# REST-APIS-PRACTO.COM

There are two modules:
1. doctor
2. clinic

to fetch all the doctors data:
 method : GET
 
 example: hostname/dbname/doctor.php?method=GET
 output: json file containing all the data of doctors
 
 example:  hostname/dbname/doctor.php?method=GET&name=alice
 it will output the whole list of doctors with name alice.similarly the sorting based upon city state locality etc can be done.
 
 primary key :ID 
 
 to insert similary: add method=POST
 to delete : method=DELETE
 to update : method=put
 
 similarly it can be done for clinic data as well.
  example: hostname/dbname/clinic.php?method=GET
 output: json file containing all the data of clinics
 
 
  primary key=id
