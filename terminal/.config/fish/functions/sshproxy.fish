function sshproxy --description 'Open SOCKS proxy on 8080'
  ssh -TND 8080 $argv
end
