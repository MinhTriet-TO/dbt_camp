#! /usr/bin/env bash

# inspired from https://github.com/o0Ignition0o/asdf-orb/blob/main/asdf-install-plugins
if [ ! -f .tool-versions ]; then
  echo ".tool-versions file not found!"
  exit 1
fi

cat .tool-versions | awk '{print $1}' | while read -r plugin; do
  if [ -z "$plugin" ]; then
    continue
  fi
  echo "Installing $plugin"
  asdf plugin-add $plugin
  ex=$?
  if [ $ex -eq 2 ] || [ $ex -eq 0 ]; then
    echo "Successfully installed $plugin"
  else
    echo "Error installing $plugin"
    exit $ex
  fi
done

asdf install

