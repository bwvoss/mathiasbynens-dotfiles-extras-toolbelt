Following conventions from: http://keepachangelog.com/

# Change Log
All notable changes to this project will be documented in this file.

## [0.0.2] - 2015-04-06
### Added
- Moved Vim config to a bootstrap script so it doesn't get run everytime.  Only really want it run on new setups.
- Added reload and reload_extra functions for fast feedback on future changes to dotfiles or extras

## [0.0.1] - 2015-04-06
### Added
- This CHANGELOG and a README.
- vim packages and vimrc customizations (NOTE: this doesn't cleanup, so multiple runs will continue to append the lines to the vimrc. I plan to fix in an upcoming version.)
- Added git config (but has my creds in it!)
- Added functions to aid in preparing a commit and releasing work that uses tags as release versioning
- `cl` to clear terminal

