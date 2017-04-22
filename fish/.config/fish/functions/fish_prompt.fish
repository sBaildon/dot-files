function fish_prompt
  if [ $status != 0 ]
    set_color $fish_color_error
  else
    set_color $fish_color_cwd
  end
  echo -n (prompt_pwd)

  set -l jobs (jobs | wc -l | xargs)
  if [ "$jobs" != "0" ]
    set_color yellow
    echo -n " [$jobs]"
  end

  set_color normal
  echo -n ' $ '
end
