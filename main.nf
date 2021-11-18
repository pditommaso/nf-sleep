#!/usr/bin/env nextflow 
params.timeout = 10 
params.exit = 0
params.cmd = "echo 'Hello (timeout $params.timeout)'"

process foo {
  /
  bash -c "$params.cmd"
  sleep $params.timeout
  exit $params.exit
  /
}
