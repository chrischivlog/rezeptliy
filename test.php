<?php
$bereits_generierte_zahlen = array();
$zahl = rand(1, 10);

while (count($bereits_generierte_zahlen) < 10) {
   if (!in_array($zahl, $bereits_generierte_zahlen)) {
       array_push($bereits_generierte_zahlen, $zahl);
       echo $zahl . "<br>";
   }

   $zahl = rand(1, 10);
}
?>