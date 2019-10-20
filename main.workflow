
workflow "example" {
  on = "push"
  resolves = "example action"
}

action "github official action" {
  uses = "popperized/bin/sh@master"
  args = ["ls"]
}

action "docker action" {
  needs = "github official action"
  uses = "docker://node:8-slim"
  args = ["node", "--version"]
}

action "example action" {
  needs = "docker action"
  uses = "./actions/example"
  args = ["whoami"]
}
