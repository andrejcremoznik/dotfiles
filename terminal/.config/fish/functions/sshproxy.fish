function sshproxy --description 'Open SOCKS proxy on 8080'
  command ssh -TND 8080 $argv
end
