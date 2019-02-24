if ($Args[0] -eq '-h' -or $Args[0] -eq '--help') {
    echo "Usage: set-brightness [-h/--help] BRIGHTNESS (0-100)"
    exit
}

if ($Args.Length -lt 1) {
    # Get brightness
    $moniter = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBrightness
    echo "Current brightness is $($moniter.CurrentBrightness)"
    exit

} else {
    # Set brightness
    $brightness = $Args[0] / 1

    if ($brightness -lt 0) {
        $brightness = 0
    } elseif ($brightness -gt 100) {
        $brightness = 100
    }

    echo "Setting brightness to $brightness"
    $monitor = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBrightnessMethods
    $monitor.wmisetbrightness(0, $brightness)
}
