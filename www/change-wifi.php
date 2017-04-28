<?php

$wifi_orig_name=$_POST["wifi_orig_name"];
$wifi_name=$_POST["wifi_name"];
exec("sed -i -e 's|option ssid $wifi_orig_name|option ssid $wifi_name|g' /etc/config/wireless");

$wifi_orig_encr=$_POST["wifi_orig_encr"];
$wifi_encr_select=$_POST["wifi_encr_select"];
exec("sed -i -e 's|option encryption $wifi_orig_encr|option encryption $wifi_encr_select|g' /etc/config/wireless");

$wifi_orig_pass=$_POST["wifi_orig_pass"];
$wifi_pass=$_POST["wifi_pass"];
exec("sed -i -e 's|option key $wifi_orig_pass|option key $wifi_pass|g' /etc/config/wireless");

exec("ifdown wwan && ifup wwan");
?>

<html><title>Airplay.mini</title><body>
<h1>Wireles configuration changed.</h1>
<button onclick="goBack()">Go Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>
</body></html>
