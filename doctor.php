<?php

    $con = mysql_connect("localhost","Riya",'1234');
   # error_reporting(E_ALL ^ E_NOTICE);
 if (!$con)
  {
    die('Could not connect: ' . mysql_error());
  }

 #mysql_select_db("PRACTO", $con) or die("Could not Select DB");

  $conn= mysql_select_db("PRACTO", $con);
  
 
  $method=$_GET["method"];

  $users_name = $_GET['name'];
  $users_address= $_GET['address'];
  $users_experience = $_GET['experience'];
  $users_speciality = $_GET['speciality'];
  $users_rating = $_GET['rating'];
  $users_fees = $_GET['fees'];
  $users_contact =$_GET['contact'];
  $users_city=$_GET['city'];
  $users_state =$_GET['state'];

switch($method)
{
   case "POST" :{
  

      $query = "INSERT INTO `Doctor`(`Name`, `speciality`, `address`, `experience`, `fees`, `rating`,`contact`,`city`,`state`) VALUES ('$users_name','$users_speciality','$users_address','$users_experience','$users_fees','$users_rating','$users_contact','$users_city','$users_state')";
       $sql=mysql_query($query);
			 echo $query;
       #echo mysql_insert_id ();
						break;}

	  case "PUT" :{

          $user_id=$_GET['id'];
    
         $query="UPDATE `Doctor` SET  name like '%".$users_name."%' and address like '%".$users_address."%'and experience like '%".$users_experience."%'and speciality like '%".$users_speciality."%' and rating like '%".$users_rating."%'and city like '%".$users_city."%'and state like '%".$users_state."%'and fees like '%".$users_fees."%' and contact like '%".$users_contact."%'  WHERE id ='".$user_id."' ";

           $sql=mysql_query($query);
						break;}

    case "GET":{
            
            $users_id=$_GET['id'];


            $query="SELECT * FROM `Doctor` where id like '%".$users_id."%' and name like '%".$users_name."%' and address like '%".$users_address."%'and experience like '%".$users_experience."%'and speciality like '%".$users_speciality."%' and rating like '%".$users_rating."%'and city like '%".$users_city."%'and state like '%".$users_state."%'and fees like '%".$users_fees."%' and contact like '%".$users_contact."%' ";

            $sql=mysql_query($query);
            #echo $query;
             if (mysql_num_rows($sql) > 0) {
               // output data of each row
              while($row = mysql_fetch_assoc($sql)) {

                    echo (json_encode($row));
              }
             } else {
                echo "0 results";
             }
          
            # echo "<br>";
            # echo (json_encode($row));
      break;
    }

    case "DELETE": {
      $user_id=$_GET['id'];
      $query="DELETE FROM`Doctor` where id='$user_id'";
      $sql=mysql_query($query);
      #echo "<br>";
      break;

    }

      

  }


?>