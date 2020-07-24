#!/bin/bash

#$ -cwd
#$ -S /bin/bash
#$ -N Neohaematopinus
#$ -o Neohaematopinus.out.$JOB_ID
#$ -e Neohaematopinus.error.$JOB_ID

/gpfs_fs/home/boydlab/TOOLS/NCBIblast/bin/blastn -db LOUSBACTGENOME2 -query /gpfs_fs/home/boydlab/vo/Neohaematopinus/ABYSS/Neohaematopinus-1.fa -outfmt 6 -out /gpfs_fs/home/boydlab/vo/Neohaematopinus/Blastn.out