# nf-publish-offload-benchmark

This repository contains nextflow pipeline to benchmark the offload of workflow output publication. It contains a process that generates data and defines a publishDir to publish the generated data.

The pipeline has the following input parameters

- outdir : Bucket where to publish the generated data
- num_files: Number of files generated
- file_mb : Size of the generated files in MB

There are three configuration and run scripts to execute the pipeline without offloading, using s5cmd or using fusion.

