<?php


###verbindung zur Datenbank

$conn = mysqli_connect('localhost', 'root', '', 'rezepte');




### ermittle eine random nummer um ein Rezept aus der Datenbank zu erhalten. 
$select_recepie = rand(1,20);
#echo("<br>" . $select_recepie);

#liste mit random nummern nicht gedoppelt die in der SQL abfrage durchgelaufen werden


#### abrufen des datensatzes der mit der ID und dem select_recepie übereinstimmt

$sql = "SELECT ID_gerichte, Name_gerichte FROM gerichte WHERE ID_gerichte = '" . $select_recepie . "'";
$result = mysqli_query($conn, $sql) or die( mysqli_error($conn));

while($row = mysqli_fetch_assoc($result)) {
    echo "" . $row["Name_gerichte"] . "";
  }
?>
