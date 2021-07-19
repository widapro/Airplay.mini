<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Airplay.mini</title>
<style>
body {background-color: #ffffff; font-size:16px;}
.input {widht:150px; height:17px;}
.button {
    background-color:#ffffff;
    border: solid 1px;
    border-radius: 4px;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
}
.button-submit {background-color: #008CBA;}
div {padding:3px;}
#table-main, tr {height:25px;}
#table-main, td {width: 130px; padding: 3px;}
#wifi_encr_select {height: 17px; width:153px;}
.red { background-color: red; }
.green { background-color: green; }
.sphere {
  height: 10px;
  width: 10px;
  border-radius: 50%;
  text-align: center;
  vertical-align: middle;
  position: relative;
  margin: 5%;
  display: inline-block;
}
</style>
</head>
<body>
<h1>Wireless network preferences:</h1>
<?php
$WIFI_CONNECT=exec("/sbin/ifconfig wlan0 | grep inet\ addr | wc -l");
$WIFI_IP=exec("ifconfig | grep -A 1 wlan0 | tail -n 1 | cut -d: -f2 | awk '{ print $1}'");
$WIFI_NAME=exec('cat /etc/config/wireless | grep "option ssid" | cut -d " " -f3');
$WIFI_ENCR=exec('cat /etc/config/wireless | grep "option encryption" | cut -d " " -f3');
$WIFI_PASS=exec('cat /etc/config/wireless | grep "option key" | cut -d " " -f3');
?>

<form action="change-wifi.php" method="post" name"change-wifi">
<table id="main-table">
<tr>
        <td>
                Wifi status:
        </td>
        <td colspan="2">
                <?php
                        if ( $WIFI_CONNECT == 0 ) {
                                echo "<div class='sphere red'></div> <b>not</b> connected";
                        } else {
                                echo "<div class='sphere green'></div> conected <br>wifi ip: $WIFI_IP";
                        }
                 ?>
        </td>
</tr><tr>
<tr>
        <td>
                Wifi name:
        </td>
        <td>
                <b><?php echo $WIFI_NAME; ?></b>
        </td>
        <td>
                <input type="hidden" name="wifi_name" id="wifi_name" class="input">
                <input type="hidden" name="wifi_orig_name" id="wifi_name" class="input" value="<?php echo $WIFI_NAME; ?>">
        </td>
</tr><tr>
        <td>
                Wifi encryption:
        </td>
        <td >
                <b><?php echo $WIFI_ENCR; ?></b>
        </td>
        <td>
                <select id="wifi_encr_select" name="wifi_encr_select" hidden>
                        <option value="psk">psk</option>
                        <option value="psk2" selected="selected">psk2</option>
                </select>
                <input type="hidden" name="wifi_orig_encr" id="wifi_name" class="input" value="<?php echo $WIFI_ENCR; ?>">
        </td>
</tr><tr>
        <td>
                Wifi password:
        </td>
        <td>
                <b>***</b>
        </td>
        <td>
        <input type="hidden" name="wifi_pass" id="wifi_pass" class="input">
        <input type="hidden" name="wifi_orig_pass" id="wifi_pass" class="input" value="<?php echo $WIFI_PASS;?>">
        </td>
</tr>

</table>
<br>
        <input type="button" class="button" value="edit" onclick="show_inputs()">
        <input type="submit" class="button button-submit" value="Write" >
        </form>
<button class="button" onclick="myFunction()">Reload page</button>
<a href="scan-wifi.php">Scan wifi networks</a>
<script>
function show_inputs() {
var wifi_name_input = document.getElementById("wifi_name")
var wifi_pass_input = document.getElementById("wifi_pass")
var wifi_encr_select = document.getElementById("wifi_encr_select")
if (wifi_name_input.type=="text") {
 wifi_name_input.type = "hidden";
 wifi_pass_input.type = "hidden";
 wifi_encr_select.setAttribute("hidden");
} else {
 wifi_name_input.type = "text";
 wifi_pass_input.type = "text";
 wifi_encr_select.removeAttribute("hidden");
}
}
function myFunction() {
    location.reload();
}

</script>
<div style="font-size:12px; text-align:center; padding:3px;"><br><br>Airplay.mini by widapro@gmail.com<br>v0.1</div>
</body></html>
