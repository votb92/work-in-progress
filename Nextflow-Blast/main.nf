#!/usr/bin/env nextflow
params.outdir = "$baseDir/results"
params.DB = "$baseDir/db/SampleDB"
params.query = "$baseDir/data/sample.fa"


process Blastn{
      publishDir params.outdir, mode: 'copy'
      input:
      path DB from params.DB
      path query from params.query

      output:
      path 'Blastn.out' into blastn_ch

      "blastn -db ${DB} -query ${query} -outfmt 6 -out Blastn.out"
}
