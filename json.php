<?php

for ($i=1; $i <= 104; $i++) {
  $a['date'] = date('Y-M-d h:i:s',time() + $i);
  $a['label'] = chr((($i - 1)%26) + 65);
  $a['text'] = "This is the text for $i";
  $json[] = $a;
}

die(json_encode($json));


?>