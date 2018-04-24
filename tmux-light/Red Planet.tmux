
# Red Planet -- Light
set -g status-style bg='#222222',fg='#c2b790'
set -g window-status-style bg=colour15,fg=colour8
#set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#c2b790'
set -g window-status-current-style bg=colour7,fg='#222222',bold
set -g window-status-format " #[fg=colour7]#I:#[default]#W#[fg=colour7]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
#set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
