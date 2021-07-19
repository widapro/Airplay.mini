<html><title>Airplay.mini</title><body>
<h1>Scan wireless networks:</h1>
<?php echo nl2br(shell_exec('iwinfo wlan0 scan | grep "ESSID\|Signal"')); ?>
<br>
<button onclick="goBack()" style="font-size:15px;">Go Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>
</body></html>
