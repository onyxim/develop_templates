# Timezone

## pytz
In python timezone not so obvious. You should use `pytz` package for a getting one.
```pydocstring
import pytz
pytz.timezone('Europe/Moscow')
```
### Some useful zone
The are `etc` zones:
1. Etc/GMT+3
1. Etc/GMT+0
1. etc

But last time as I used it, looks like it works reversed. For example `Etc/GMT+3` worked like `Etc/GMT-3` somehow. 
Be careful.

## Shift time for timestamp datetime
After the code below timestamp will be shifted for 3 hours.

```pydocstring
import pytz
from datetime import timezone,datetime


my_datetime_utc.astimezone(pytz.timezone('Europe/Moscow')).replace(tzinfo=timezone.utc).timestamp()
```