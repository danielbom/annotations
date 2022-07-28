$Dir = (Get-Location).Path
Write-Output $Dir

docker run `
  --rm `
  --tty `
  --interactive `
  --workdir "/home/root/workspace" `
  --volume "${Dir}:/home/root/workspace" `
  --name ubuntu-20 `
  ubuntu-local:20

