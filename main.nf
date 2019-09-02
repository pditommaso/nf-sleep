#!/usr/bin/env nextflow 
params.timeout = 60 

process foo {
  /sleep ${params.timeout}/
}
