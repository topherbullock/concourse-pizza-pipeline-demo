#!/bin/bash

composite -gravity center \
 ./pepperoni/pepperoni.png \
 ./cheese/sauce.png \
 ./step1.png

composite -gravity center \
 ./step1.png \
 ./green-pepper/green_pepper.png \
 ./ingredients/ingredients.png
