# Parametrize

## Use pytest.param()

It's good to use pytest.param() for parametrized values. It allowed to set id and group cases with more information 
https://docs.pytest.org/en/latest/example/parametrize.html#set-marks-or-test-id-for-individual-parametrized-test 

```py
@pytest.mark.parametrize(
        "issue",
        [
            pytest.param(None, id='Without Issue'),
            pytest.param(Issue(), id='With Issue'),
        ],
    )
    def test(issue: Issue):
        pass
```