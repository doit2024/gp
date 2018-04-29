- touch .travis.yml

```
language: python
script: true
```

- gem install travis
- travis encrypt -r username/reponame GH_TOKEN=[git token] --add