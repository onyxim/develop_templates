# Use script 
https://github.com/unravelin/tomono

# Prepare in repo
```bash
#make a  mirorr repo for backup
git clone --mirror "REPO_NAME" 
# set for ambiguous checkout
git config checkout.defaultRemote "origin"
# set git author if needed 
git adc
#prepare script

# delete all unused remote for safety
git remote remove "remote_name"
#after script run
git push --all origin

```
