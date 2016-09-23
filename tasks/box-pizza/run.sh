#!/bin/bash

mv ./pizza/pizza.png ./boxed-pizza

mv ./pizza-pipeline/cf-manifest.yml ./boxed-pizza/manifest.yml

pushd boxed-pizza
  touch Staticfile

  echo "<!DOCTYPE html>
<html>
  <body>
    <h1> PIZZA!!! <h1>
    <img src=\"./pizza.png\" />
  </body>
</html>
" > index.html

popd
