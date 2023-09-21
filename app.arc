@app
remix-grunge-stack-3ce8

@aws
runtime nodejs16.x
# concurrency 1
# memory 1152
profile certor
# region us-west-1
# timeout 30

@http
/*
  method any
  src server

@plugins
plugin-remix
  src plugin-remix.js

@static

@tables
user
  pk *String

password
  pk *String # userId

note
  pk *String  # userId
  sk **String # noteId
