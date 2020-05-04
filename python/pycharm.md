# suppress comments for pycharm inspector

## ignore unused import line

```py
# noinspection PyUnresolvedReferences
```

## ignore type checking
```py
# noinspection PyTypeChecker
```

# disable formatter for some lines
It's possible to ignore some lines with autoformat (including optimize imports) in pycharm.

## Enable formatter markers in comments
Enable it in pycharm settings. Search for `Formatter control`. More info 
[link](https://www.jetbrains.com/help/idea/reformat-and-rearrange-code.html#exclude_file_from_reformat).

## Wrap code with comments
```pydocstring
# @formatter:off
# @formatter:on
```
