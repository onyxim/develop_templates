# pretty print for dumps

Pretty print dump for json

```py
import json
from pathlib import Path

path = Path('path_to_file')

with path.open(mode='w') as file:
    json.dump(dict_data, file, indent=4, sort_keys=True)
```
