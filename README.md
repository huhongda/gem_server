# gem server

### clone

```
mkdir -p /data/projects/
cd /data/projects
git clone https://github.com/huhongda/gem_server.git
```

### generate gem data directory

```
mkdir -p /data/gem/mirror

```

### how to start server
```
RACK_ENV=production bundle exec puma -q -C /data/projects/gem_server/config/puma.rb
```

### how to upload a new gem

1. http://ruby.example.com/upload  upload a new gem
2. manual upload

```
 # login gem server 
 cd /data/gem/mirror/gems

 # scp or upload a new gem into this directory then excute blew commands
 gem generate_index --directory /data/gem/mirror/
```

### how to use for your project
```
# vim Gemfile

source 'http://ruby.example.com'
```

