# Init mock sometimes

When mocking a class, remember to init it in tests when trying to method return value.
```py
    @patch('jira_analyse.fetch.jira.JIRA', autospec=True)
    def test_success(self, mock_jira: JIRA):
        mock_jira().search_issues.return_value = get_sample(Registry.RAW_JIRA)
```

# Use autospec when possible

It protects you from implicit change of mocked method or class. Because mock always just works. 
```py
    @patch('jira_analyse.fetch.jira.JIRA', autospec=True)
```

# How applied several @mock.patch to one function

You should put mock in reverse order from top down decorators.

```py
    @patch('tests.test_my.Path.open'autospec=True)
    @patch('tests.test_my.json.dump', autospec=True)
    def test(self,mock_dump: NonCallableMock, mock_open: NonCallableMock, ):
        pass
```