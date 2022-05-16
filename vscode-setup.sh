#!/bin/bash

function check-cmd() {
  local cmd="${1:-"nothing supplied"}"
  if ! command -v $cmd &> /dev/null
  then
      echo "$cmd could not be found"
      exit
  fi
}

check-cmd code

extNames=(
  "aeschli.vscode-css-formatter"
  "andrejunges.Handlebars"
  "andys8.jest-snippets"
  "Angular.ng-template"
  "dbaeumer.vscode-eslint"
  "DotJoshJohnson.xml"
  "eamodio.gitlens"
  "eriklynd.json-tools"
  "esbenp.prettier-vscode"
  "euskadi31.json-pretty-printer"
  "firsttris.vscode-jest-runner"
  "fwcd.kotlin"
  "ionic.ionic"
  "jkjustjoshing.vscode-text-pastry"
  "johnpapa.Angular2"
  "johnpapa.vscode-peacock"
  "Malo.copy-json-path"
  "mohsen1.prettify-json"
  "mongodb.mongodb-vscode"
  "ms-azuretools.vscode-docker"
  "ms-vscode-remote.remote-containers"
  "ms-vscode-remote.remote-ssh-edit"
  "ms-vscode-remote.remote-ssh"
  "ms-vscode-remote.remote-wsl"
  "ms-vscode-remote.vscode-remote-extensionpack"
  "naco-siren.gradle-language"
  "nidu.copy-json-path"
  "nrwl.angular-console"
  "rbbit.typescript-hero"
  "ronnidc.nunjucks"
  "rust-lang.rust"
  "vadimcn.vscode-lldb"
  "VisualStudioExptTeam.vscodeintellicode"
  "vscjava.vscode-java-debug"
  "vscjava.vscode-java-dependency"
  "vscjava.vscode-java-pack"
  "vscjava.vscode-java-test"
  "vscjava.vscode-maven"
  "wmaurer.change-case"
)

function install-extensions() {
  for ext in ${extNames[@]}; do
    echo "Installing $ext"
    code --install-extension "$ext";
  done
}

install-extensions
echo "Done vscode setup"
