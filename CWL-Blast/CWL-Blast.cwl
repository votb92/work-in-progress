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
  script1: File
outputs:
  Blastn_file:
    type: File
    outputSource: step1/blastn_result
  Headers_txt:
    type: File
    outputSource: step2/Headers
steps:
  step1:
    run: blast.cwl
    in:
      fasta_file: fasta_file
      db_dir: blastn_db
    out:
      [blastn_result]
  step2:
    run: extract_headers.cwl
    in:
      script1: script1
      blastn_result: step1/blastn_result
    out:
      [Headers]
