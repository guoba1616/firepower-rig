# 重新打包 APK：同步 docs/ → Android 工程 → 编译 → 复制为 火力战车.apk
# （项目路径含中文，gradlew 包装器加载失败，所以直接用本机缓存的 Gradle 8.2.1）
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
npx cap sync android
$g = Get-ChildItem "$env:USERPROFILE\.gradle\wrapper\dists\gradle-8.2.1-all\*\gradle-8.2.1\bin\gradle.bat" -ErrorAction SilentlyContinue | Select-Object -First 1
Set-Location "$PSScriptRoot\android"
if ($g) { & $g.FullName assembleDebug --console=plain } else { .\gradlew.bat assembleDebug --console=plain }
if ($LASTEXITCODE -ne 0) { throw "Gradle 编译失败" }
Copy-Item "$PSScriptRoot\android\app\build\outputs\apk\debug\app-debug.apk" "$PSScriptRoot\火力战车.apk" -Force
Write-Host "完成：$PSScriptRoot\火力战车.apk"
