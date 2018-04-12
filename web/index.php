<?php
$file_handle = fopen("commands.txt", "r");
while (!feof($file_handle)) {
   $line = fgets($file_handle);
   echo $line;
   echo "</br>";
}
fclose($file_handle);

?>
