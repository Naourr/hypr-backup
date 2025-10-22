#!/bin/bash

konsole --hold -e zsh -ic 'fastfetch && exec zsh' &

konsole --hold -e htop &
konsole --hold -e peaclock &
