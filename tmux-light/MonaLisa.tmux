
# MonaLisa -- Light
set -g status-style bg='#120b0d',fg='#f7d66a'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#f7d66a'
set -g window-status-current-style bg=colour15,fg='#f7d66a',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
