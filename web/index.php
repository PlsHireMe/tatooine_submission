<?php
$file_handle = fopen("commands.txt", "r");
while (!feof($file_handle)) {
   $line = fgets($file_handle);
   //echo shell_exec($line);//why why why WHY would we ever do this..... We're voluntarily executing user controlled data...
   echo $line;
   echo "</br>";
}
fclose($file_handle);

?>
