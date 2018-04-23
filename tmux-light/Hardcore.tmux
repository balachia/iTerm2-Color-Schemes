
# Hardcore -- Light
set -g status-style bg='#121212',fg='#a0a0a0'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#a0a0a0'
set -g window-status-current-style bg=colour15,fg='#a0a0a0',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
