$ErrorActionPreference = "Stop"

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
  throw "Docker is not installed or is not on PATH. Install Docker Desktop, then run this script again."
}

try {
  docker info *> $null
} catch {
  throw "Docker Desktop is not running. Start Docker Desktop, wait until it is ready, then run this script again."
}

docker compose up site
