#!/bin/bash

find ~/Downloads/media/cleaned -type f -exec rm -- '~/Downloads/media/{}' ';'
find ~/Downloads -maxdepth 1 -name "*.mp3" -exec mv "{}" ~/Downloads/media/ \;

