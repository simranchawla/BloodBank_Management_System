<?php 
$link = mysql_connect("localhost", "root", "");
mysql_select_db("bloodbank", $link);
echo "<h3>Stock details</h3>";
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='1';", $link);
//echo "A+ :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
         echo "<br>A+    : $n </br>";
       
    }
} else {
    echo "0";
}
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='2';", $link);
//echo "A- :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
        //echo $n;
           echo "<br>A-    : $n </br>";
       
    }
} else {
    echo "0";
}

$result = mysql_query("SELECT stock FROM blood_grp where blood_id='3';", $link);
//echo "<br>AB+ :  </br>";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
       // echo $n;
       echo "<br>AB+   : $n </br>";
    }
} else {
    echo "0";
}
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='4';", $link);
//echo "AB- :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
           echo "<br>AB-    : $n </br>";
       
    }
} else {
    echo "0";
}
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='5';", $link);
//echo "B+ :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
  //      echo $n;
       echo "<br>B+    : $n </br>";   
    }
} else {
    echo "0";
}
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='6';", $link);
//echo "\nB- :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
  //      echo $n;
       echo "<br>B-    : $n </br>";   
    }
} else {
    echo "0";
}
//echo "$num_rows Rows\n";
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='7';", $link);
//echo "\nB- :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
  //      echo $n;
       echo "<br>O+    : $n </br>";   
    }
} else {
    echo "0";
}
$result = mysql_query("SELECT stock FROM blood_grp where blood_id='8';", $link);
//echo "\nB- :  ";
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
    // output data of each row
    while($row = mysql_fetch_assoc($result))
     {
        $n=$row["stock"];
  //      echo $n;
       echo "<br>O-    : $n </br>";   
    }
} else {
    echo "0";
}
?>
