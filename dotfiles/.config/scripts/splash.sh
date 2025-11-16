#!/bin/bash
konsole --hold -e zsh -ic 'fastfetch && exec zsh' &
konsole --hold -e cava
konsole --hold -e htop &

