if( -not (Test-Path $profile) ) {
    New-Item $profile -Force
}

Add-Content $profile (Get-Content .\better_ytdlp.ps1)