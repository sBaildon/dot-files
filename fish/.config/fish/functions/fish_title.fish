function fish_title
    if [ $_ = 'fish' ]
        echo (prompt_pwd)
    else
        echo (prompt_pwd) - $_
    end
end
