# bash-get - A Package Manager for Bash Scripts

_bash-get_ is a Bash script that installs simple "Bash packages". It has more in
common with other language-centric package systems like _gem_ or _npm_ than
apt-get, but I like the name!

Packages are just git repositories with:

* scripts (in the bin/ directory)
* completions (in the bash_completion.d/ directory)
* config (in the dots/ directory)

When you install a package, it simply links the scripts and completion files
into a place where Bash can see them (`~/.bash-get/bin`,
`~/.bash-get/bash_completion.d`) and copies the config to `$HOME/.$DOTFILE`

## Usage

	# Install a package from github:
	bash-get install github.com/werkshy/radio

	# Update a package
	bash-get update radio

	# List installed packages
	bash-get list

## Installation

    git clone https://github.com/werkshy/bash-get
	cd bash-get
	make install

## Available Packages

All of my own shell script projects are available via bash-get:

* [radio](https://github.com/werkshy/radio) - play internet radio streams in mpd with
	tab completion.
* [passd](https://github.com/werkshy/passd) - use the 'pass' password store
	program on a remote computer via ssh port forwarding.

Coming soon: random-passphrase, block-ip, connect, backup-a-thing, sleeper,
s3share, irc-notifiy, yello, resize, ...
