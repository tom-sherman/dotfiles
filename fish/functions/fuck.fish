function fuck --description 'Run last command as root'
  echo "> sudo $history[1]"
  eval sudo $history[1]
end
