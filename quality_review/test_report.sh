#!/bin/bash

echo 'Number of line on Unit tests:'
find ~/Workspace/ongarium-rails/spec/controllers/* -name '*_spec.rb' | xargs wc -l

echo 'Number of line on Functional tests:'
find ~/Workspace/ongarium-rails/spec/features/ -name '*_spec.rb' | xargs wc -l
find ~/Workspace/ongarium-rails/spec/smoke/ -name '*_spec.rb' | xargs wc -l

