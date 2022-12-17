#!/bin/sh
set -e

# 自分のアプリに合わせて必要なコマンドを修正してください
bin/rails db:migrate:reset
bin/rails db:seed_fu

rm -f tmp/pids/server.pid && bin/rails s
