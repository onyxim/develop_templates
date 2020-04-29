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