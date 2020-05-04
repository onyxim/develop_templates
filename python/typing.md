# How to avoid cyclics imports with type checking

```pydocstring
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from jira_analyse.config import Config


class FactoryAbstract:
    def __init__(self, c):
        # type: (Config) -> None
        self.c = c
```