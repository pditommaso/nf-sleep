#!/usr/bin/env nextflow 
params.timeout = 60 
params.exit = 0 

process foo {
  /
  echo "Hello (timeout $params.timeout)"
  sleep $params.timeout
  exit $params.exit
  /
}
