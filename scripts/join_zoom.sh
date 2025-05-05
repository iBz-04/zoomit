#!/usr/bin/env bash
source "$(dirname "$0")/../config/meeting.env"

URI="zoommtg://zoom.us/join?action=join&confno=${MEETING_ID}&pwd=${PASSCODE}"

case "$(uname)" in
  Darwin*)  open "$URI"      ;;   # macOS
  Linux*)   xdg-open "$URI"  ;;   # Linux distros
  *)        echo "Unsupported OS" ;;
esac