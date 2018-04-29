# travis
- touch .travis.yml

```
language: rust

install:
  - curl -L https://github.com/yihui/ubuntu-bin/releases/download/latest/pandoc.tar.gz | tar zx

script:
  - echo 'hello woody'
  - pwd
  - make check
  - make generate-ci

after_success:
  - test $TRAVIS_PULL_REQUEST == "false" && test $TRAVIS_BRANCH == "master" && bash deploy.sh
  
```

- gem install travis
- travis encrypt -r username/reponame GH_TOKEN=[git token] --add