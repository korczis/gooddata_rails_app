# gooddata_rails_app

GoodData as Rails Application

## Prerequisites

Following environment variables must be set 

* GD_GEM_USER
* GD_GEM_PASSWORD

## Initial setup

```
bundle install
```

## Launch

```
./bin/rails server

# or

GD_GEM_USER="some.user@gooddata.com" && GD_GEM_PASSWORD='s0m3.p4ssw0rth' && ./bin/rails server
```
