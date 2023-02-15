#!/bin/sh
set -e

bin/rails db:migrate
bin/rails db:seed_fu

rm -f tmp/pids/server.pid && bin/rails s
