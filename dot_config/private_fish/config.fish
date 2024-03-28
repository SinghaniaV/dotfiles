if status is-interactive
	# starship config
	if test $TERM = 'xterm-kitty' -o $TERM = 'xterm-256color'
		starship init fish | source
		enable_transience
	end
	
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
	alias pacs='yay -Ss' # search availabe package
	alias pacc='yay -Sc' # remove unused cache
	alias pacro='yay -Qdtq | yay -Rn -' # remove unused dependencies

	# Always mkdir a path
	abbr mkdir 'mkdir -p'
end
