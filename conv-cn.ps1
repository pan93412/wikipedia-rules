# 若無法執行請先 Set-ExecutionPolicy RemoteSigned

$cnFn = 'wikipedia-zh-game-rules-cn.html'

Write-Host ' -> 正在產生...'

# 將 <html lang='zh_TW'> 改成 <html lang='zh_CN'>
(Get-Content $cnFn) -replace "lang='zh_TW'", "lang='zh_CN'" | Out-File 'tmp-cn.html' 'UTF-8' 

# 刪除舊版
Remove-Item $cnFn

# 最後將新版取成舊版名稱
Move-Item 'tmp-cn.html' $cnFn

Write-Host ' #> 完成。'