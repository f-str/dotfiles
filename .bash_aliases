# Create VPN Connection to University
alias vpn='sudo openvpn --cd $HOME/.openvpn --config stud-ext.ovpn'

# Create VPN Connection to Uni
alias vpn='sudo openvpn --cd $HOME/.openvpn --config stud-ext.ovpn'

# Change Git Profiles
alias cgu='bash $HOME/.changeGitUser.sh'

# Update all pip packages in an environment
alias pipup='pip freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs -n1 pip install -U'

# Exit a virtual environment
alias exitvenv='deactivate'
