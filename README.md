# Invoke-PwshTariff 💸🐢

> **"Make PowerShell Slow Again."**

Welcome, patriot. Are your scripts executing *too quickly*?
Are they not paying their fair share?
Is your terminal experience suspiciously **efficient**?

Do you yearn for the good ol' days when commands *took their sweet time* or even a time when technology or automation took all those low-paying jobs?

Then **Invoke-PwshTariff** is the module for you.

## 🧾 What is it?

`Invoke-PwshTariff` is a PowerShell module that introduces a **tariff** — yes, a good old-fashioned *freedom fee* — on your commands. Based on how long your script takes to run, it tacks on an artificial delay because, let’s face it, progress is suspicious. No one script should be better than the script you write, right?!

> **"If it runs in milliseconds, how do you know it’s not woke?"** – A concerned sysadmin

## 💰 How it Works

You wrap your command in `Invoke-PwshTariff`, and it:

1. Measures how long the command takes.
2. Calculates a delay based on your chosen **tariff percentage**.
3. Sleeps the thread to "protect domestic runtime interests".

Because *why execute in 1.2 seconds when you can take 1.44?*

Our default tariff is 0.1, that's 10%. No different from that certain country doing silly things right now...

## 🧠 Usage

```powershell
Invoke-PwshTariff -Command { Get-Process | Out-Null } -Tariff 0.2 -VerboseOutput

Outputs >
⌛ Base execution: 0.512s
💸 Tariff delay:   0.102s (20%)

```

## Inspiration

- [Python Tariff](https://github.com/hxu296/tariff)
