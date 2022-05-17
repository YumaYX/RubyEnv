#!/bin/bash

if [ ! -d RubyBox ]; then
  git clone https://github.com/YumaYX/RubyBox.git
fi
cd RubyBox && git pull && cd ..


# docker-compose down
# docker-compose stop

docker-compose up -d
docker-compose exec rubybox /bin/bash

