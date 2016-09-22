#!/bin/bash

mv ./pizza/pizza.png ./boxed-pizza

pushd boxed-pizza
  touch Staticfile

  echo "applications:
  - name: gimme-pizza
    memory: 512M" > manifest.yml

  echo "<!DOCTYPE html>
<html>
  <body>
    <h1> PIZZA!!! <h1>
    <img src=\"./pizza.png\" />
  </body>
</html>
" > index.html

popd
