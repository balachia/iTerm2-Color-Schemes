
# Ciapre -- Light
set -g status-style bg='#191c27',fg='#aea47a'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#aea47a'
set -g window-status-current-style bg=colour15,fg='#aea47a',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
