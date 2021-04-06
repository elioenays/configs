Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt ~\.oh-my-posh.omp.json

Set-Variable www '~\www\'

Import-Module PSReadLine

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompleteion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

#Set the color for Prediction (auto-suggestion)
# Set-PSReadlineOption -Colors @{Prediction = '#686868' }