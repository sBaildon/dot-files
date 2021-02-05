if not uname | grep Darwin > /dev/null
  exit 0
end

set -x HOSTNAME (hostname -s)
#networksetup -getcomputername
