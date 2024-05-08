Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression

