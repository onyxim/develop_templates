# Strategies

1. pipenv for all requirements
1. pipenv-setup for sync with setup.py for libraries.

# Instruments
## pipenv use
https://github.com/pypa/pipenv

### plus

1. manages venv for you
1. lock and resolve all requirements

### minus

1. Looks like abandoned for now
1. slow locking
1. 

### useful

1. `pipenv lock -r` - for generation requirements.txt
1. `pipenv --rm` - delete current venv
1. `pipenv sync --dev` - for syncing local venv with Pipfile.lock

## poetry like pipenv but not same

https://github.com/python-poetry/poetry

Comparing to pipenv:
1. Alive - pipenv now (as text have been written) looks like have been abandoned.
1. Venv - not so good venvs management. Linked with pyenv, but pipenv is better.