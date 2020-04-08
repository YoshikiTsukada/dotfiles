zplug "eendroroy/alien"

# color scheme
export ALIEN_THEME="bnw"

# prompt
export ALIEN_PROMPT_SYM=$
export ALIEN_PROMPT_FG=6

# vcs_branch
export ALIEN_SECTION_VCS_BRANCH_FG=6

# vcs_dirty
export ALIEN_SECTION_VCS_DIRTY_FG=6
export ALIEN_SECTION_VCS_DIRTY_BG=6

export ALIEN_SECTIONS_LEFT=(
  exit
  user
  path
  vcs_branch:async
  vcs_status:async
  vcs_dirty:async
  newline
  ssh
  venv
  prompt
)

export ALIEN_SECTIONS_RIGHT=(
  battery
  time
)
