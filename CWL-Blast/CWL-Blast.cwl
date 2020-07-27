#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
  InlineJavascriptRequirement: {}
  ShellCommandRequirement: {}
hints:
  DockerRequirement:
    dockerPull: ncbi/blast:latest
inputs:
  fasta_file: File
  blastn_db: Directory
outputs:
  Blastn_file:
    type: File
    outputSource: step1/blastn_result

steps:
  step1:
    run: blast.cwl
    in:
      fasta_file: fasta_file
      db_dir: blastn_db
    out:
      [blastn_result]
