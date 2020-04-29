# get script directory for script

```bash
cd "$(dirname "$0")"
```

# debug all lines in script

```bash
set -x
```

# Stop script when al least one line failed

```bash
set -x
```

# set parameter

set options can be combined

```bash
set -xe
```

# always continue

Don't stop at some error.

 ```bash
some_command || true 
```
