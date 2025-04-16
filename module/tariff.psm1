function Invoke-PwshTariff {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [ScriptBlock]$Command,

        [Parameter()]
        [double]$Tariff = 0.2, # 20% by default

        [switch]$VerboseOutput
    )

    if ($Tariff -lt 0 -or $Tariff -gt 2) {
        throw "Tariff must be between 0 (no delay) and 2 (200% delay)"
    }

    if ($Tariff -gt 1 -and $VerboseOutput) {
        Write-Host "Activation of China Tariff Mode!" -ForegroundColor Red
    }

    $start = Get-Date
    $result = & $Command
    $end = Get-Date

    $duration = ($end - $start).TotalSeconds
    $delay = [math]::Round($duration * $Tariff, 3)

    if ($VerboseOutput) {
        Write-Host "⌛ Base execution: $([math]::Round($duration, 3))s"
        $tariffPercent = [math]::Round($Tariff * 100, 1)
        Write-Host "💸 Tariff delay:   ${delay}s (${tariffPercent}%)"
    }

    if ($delay -gt 0) {
        Start-Sleep -Seconds $delay
    }

    return $result
}
