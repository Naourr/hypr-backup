#!/bin/bash

konsole --hold -e zsh -ic 'fastfetch && exec zsh' &
konsole --hold -e yazi &
konsole --hold -e htop &

