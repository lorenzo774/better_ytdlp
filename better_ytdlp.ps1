#
# Variables
$global:VideoDir = "C:/Users/$($env:Username)/Videos"
$global:MusicDir = "C:/Users/$($env:Username)/Music"

# Youtube download
function global:YoutubeDLP {
	param(
		[string] $Format,
		[string] $Url
	)
	$Path = If ($Format -eq "mp4") { $global:VideoDir } Else { $global:MusicDir } 
	yt-dlp -f $Format -P $Path $Url
	Start-Process $Path
}

Set-Alias -Name yt -Value global:YoutubeDLP -Scope Global