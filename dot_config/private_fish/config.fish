if status is-interactive

	# starship config
	starship init fish | source
	enable_transience
	
	# >>> conda initialize >>>
	# !! Contents within this block are managed by 'conda init' !!
	if test -f /opt/miniconda3/bin/conda
		eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
	else
		if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
		    . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
		else
		    set -x PATH "/opt/miniconda3/bin" $PATH
		end
	end
	# <<< conda initialize <<<

	# zoxide source
	zoxide init --cmd cd fish | source

	# lsd
	alias ls="lsd"
	alias lsl="lsd --long"
	alias lsa="lsd --all"
	alias lsla="lsd --long --all"
	alias lst="lsd --tree"
	
	# rebos
	alias rgc="rebos gen commit"
	alias rgl="rebos gen list"
	alias rgb="rebos gen current build"
	
	# yay
	alias pacre='yay -Rns' # uninstall a package
	alias pacin='yay -S --needed' # install a package
	alias pacup='yay -Syu' # update system
	alias pacls='yay -Qs' # search installed package
	alias paclsf='yay -Qm' # search AUR installed package
	alias paclso='yay -Qdtq' # search orphaned dependencies
	alias pacs='yay -Ss' # search available package
	alias pacc='yay -Sc' # remove unused cache
	alias pacro='yay -Qdtq | yay -Rn -' # remove orphaned dependencies

end

