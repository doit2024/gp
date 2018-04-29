- touch .travis.yml

```
language: python
script: true
```

- gem install travis
- travis encrypt -r username/reponame GH_TOKEN=[the token you created before] --add