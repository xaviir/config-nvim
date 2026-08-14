if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_color_param brwhite --bold
    
    set -gx DOTNET_ROOT $HOME/.dotnet
    set -gx PATH $HOME/.dotnet $HOME/.dotnet/tools $PATH
    fish_add_path /usr/bin/cargo
    fish_add_path $HOME/.cargo/bin

    fastfetch

end
