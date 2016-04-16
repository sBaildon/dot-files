function fish_prompt
  if [ $status = 1 ]
  	set_color $fish_color_error
  else
	  set_color $fish_color_cwd
  end
  echo -n (prompt_pwd)
  set_color normal
  echo -n ' $ '
end
