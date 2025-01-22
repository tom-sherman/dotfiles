if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Android
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx PATH $ANDROID_SDK_ROOT/emulator $PATH
set -gx PATH $ANDROID_SDK_ROOT/platform-tools $PATH

# LLVM
set -gx PATH /opt/homebrew/opt/llvm/bin $PATH

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# Deno
set -gx PATH $HOME/.deno/bin $PATH

set -gx PATH /Users/tom.sherman/bin $PATH

status --is-interactive; and rbenv init - fish | source

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

source /Users/tom.sherman/.config/fish/completions/granted_completer_fish.fish
alias assume="source /opt/homebrew/bin/assume.fish"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/tom.sherman/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

set -gx WASMTIME_HOME "$HOME/.wasmtime"

string match -r ".wasmtime" "$PATH" > /dev/null; or set -gx PATH "$WASMTIME_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "/Users/tom.sherman/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Look for ~/ZTNA.pem and if it exists set it so that node.js can use it
if test -f ~/ZTNA.pem
  set -gx NODE_EXTRA_CA_CERTS ~/ZTNA.pem
end
