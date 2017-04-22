function br
  set -l colors blue cyan green magenta red yellow
  set -l choice (random 1 (count $colors))

  set_color $colors[$choice]

  if [ (count $argv) -gt 0 ]
    echo "$argv"
  end

  echo -s (yes = | head -n(tput cols))

  set_color normal
end
