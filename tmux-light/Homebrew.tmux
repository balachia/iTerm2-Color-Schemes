
# Homebrew -- Light
set -g status-style bg='#000000',fg='#00ff00'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#00ff00'
set -g window-status-current-style bg=colour15,fg='#00ff00',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "