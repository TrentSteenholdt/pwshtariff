Import-Module .\module\tariff.psd1 -Force -Verbose

Invoke-PwshTariff -Command { Get-Date } -Tariff 1.24 -VerboseOutput # China Tariff Mode
Invoke-PwshTariff -Command { Get-Date } -Tariff 0.1 -VerboseOutput # Everyone else

