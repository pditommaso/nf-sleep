#!/usr/bin/env nextflow 
params.timeout = 60 

process foo {
  /
  echo "Hello (timeout $params.timeout)"
  sleep $params.timeout
  /
}
