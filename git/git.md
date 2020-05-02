# settings

## Global

```bash
git config --global user.name "Sergey Chernyak"
# enable gpg
git config --global commit.gpgsign true
# aliases
## resetup alias for get current fresh upstream
git config --global alias.resetup '!git fetch && git reset --hard "origin/`git rev-parse --abbrev-ref HEAD`"'git config --global alias.resetup '!git fetch && git reset --hard "origin/`git rev-parse --abbrev-ref HEAD`"'
```

## work env
```bash
git config --global user.email sergey.ch@it.adcombo.com
git config --global user.signingkey C283315CF683AE9551B1F05A55F9BCD70EAA7708
git config --global alias.personal '!git config user.email chernyaksergey@gmail.com && git config --replace-all user.signingkey A0A5815FCD679705EE068A4E74554AA14FB9ED33'
```

## personal env
```bash
git config --global user.email sergey.ch@it.adcombo.com
git config --global user.signingkey A0A5815FCD679705EE068A4E74554AA14FB9ED33
git config --global alias.adc '!git config user.email sergey.ch@it.adcombo.com && git config --replace-all user.signingkey C283315CF683AE9551B1F05A55F9BCD70EAA7708'
```

## Windows
```bash
git config --global gpg.program "C:\Program Files (x86)\GnuPG\bin\gpg.exe"
```
