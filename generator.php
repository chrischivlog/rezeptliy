<?php

$conn = mysqli_connect('localhost', 'root', '', 'rezepte');



#### counter für die menge an einträgen aus der SQL Datenbank zur übergabe an den Random Generator

$sql_anzahl_gerichte = "SELECT count(ID_gerichte) AS anzahl_gerichte FROM gerichte";
$result = mysqli_query($conn, $sql_anzahl_gerichte);
$row = mysqli_fetch_assoc($result);
$max_gerichte = $row["anzahl_gerichte"];


#### Wochentage

### zahlen Generator für die nummern


$bereits_generierte_zahlen = array();
$zahl = rand(1, $max_gerichte);

while (count($bereits_generierte_zahlen) < 7) {
  if (!in_array($zahl, $bereits_generierte_zahlen)) {
    array_push($bereits_generierte_zahlen, $zahl);

    $sql = "SELECT ID_gerichte, Name_gerichte FROM gerichte WHERE ID_gerichte = '" . $zahl . "'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

    while ($row = mysqli_fetch_assoc($result)) {
      ?>

    <div class="box">
      <h4>Montag</h4>
      <text class="box_text">
        <?php echo "" . $row["Name_gerichte"] . ""; ?>
      </text>
    </div>

<?php
    }



  }

  $zahl = rand(1, $max_gerichte);
}



#### abrufen des datensatzes der mit der ID und dem select_recepie übereinstimmt


?>