#!/usr/bin/env bash

override_git_prompt_colors() {
	GIT_PROMPT_THEME_NAME="Custom"

	# Helper function that truncates $1 depending on window width
	function gp_truncate_string {
		local string=$1
		local tilde="~"
		local newPWD="${string/#${HOME}/${tilde}}"
		local pwdmaxlen=$((${COLUMNS:-80}/4))
		[ ${#newPWD} -gt $pwdmaxlen ] && newPWD="...${newPWD:3-$pwdmaxlen}"
		echo -n "$newPWD"
	}

	#Overrides the prompt_callback function used by bash-git-prompt
	function prompt_callback {
		local repo=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
		local path=${PWD##$repo}
		local truncPath=$(gp_truncate_string $path)
		local finalPrompt="\u@\h: ${repo} ☛ ${truncPath}"

		gp_set_window_title $finalPrompt

		echo -n "${Yellow}${ResetColor}"
	}
}

reload_git_prompt_colors "Custom"
