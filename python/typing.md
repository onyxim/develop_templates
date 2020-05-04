# How to avoid cyclics imports with type checking

## python 3.6
```pydocstring
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from jira_analyse.config import Config


class FactoryAbstract:
    def __init__(self, c):
        # type: (Config) -> None
        self.c = c
```

## python 3.7+

You can write it like this, without comment. More info [here](https://www.python.org/dev/peps/pep-0563/)
```pydocstring
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from jira_analyse.config import Config


class FactoryAbstract:
    def __init__(self, c:Config):
        self.c = c
```