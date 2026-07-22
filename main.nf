#!/usr/bin/env nextflow 
params.timeout = 10 
params.exit = 0
params.times = 1


process foo {
  debug true
  input: val(x)
  script:
  def range = params.timeout.toString().tokenize('.')*.toInteger()
  def timeout = range.size() == 1 ? range[0] : range[0] + new Random().nextInt(range[1] - range[0] + 1)
  """
  echo "sleep $timeout"
  sleep $timeout
  exit $params.exit
  """
}

workflow {
  channel.of(1..(params.times as int)) | foo
}
