#!/bin/bash

#$ -cwd
#$ -S /bin/bash
#$ -N blastnCleanUp
#$ -o blastnCleanUp.out.$JOB_ID
#$ -e blastnCleanUp.error.$JOB_ID

python uniqTest.py SPADES.Blastn.out Smicro-hit.txt
python test.py /gpfs_fs/home/boydlab/TOOLS/ASSEMBLERS/SPAdes-3.14.0-Linux/Neohaematopinus_assembled/contigs.fasta Smicro-hit.txt >Scount.txt
python test2.py /gpfs_fs/home/boydlab/TOOLS/ASSEMBLERS/SPAdes-3.14.0-Linux/Neohaematopinus_assembled/contigs.fasta Smicro-hit.txt Sextracted.txt
