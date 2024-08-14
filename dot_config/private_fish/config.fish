if status is-interactive
  atuin init fish | source
end
set -gx EDITOR nvim 
fish_add_path ~/.local/bin/
fish_add_path ~/.cargo/bin/
starship init fish | source
zoxide init fish | source
function yy
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

