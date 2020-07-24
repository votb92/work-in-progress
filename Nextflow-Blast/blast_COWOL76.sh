#!/bin/bash

#$ -cwd
#$ -S /bin/bash
#$ -N SPIKE
#$ -o SPIKE.out.$JOB_ID
#$ -e SPIKE.error.$JOB_ID

#/gpfs_fs/home/boydlab/TOOLS/NCBIblast/bin/blastn -db LOUSBACTGENOME2 -query /gpfs_fs/home/boydlab/TOOLS/ASSEMBLERS/SPAdes-3.14.0-Linux/COWOL76_assembled_2/COWOL76contigs.fasta -outfmt 6 -out /gpfs_fs/home/boydlab/TOOLS/NCBIblast/BLASTla/COWOL76_blast/COWOL76_blastn.out
#/gpfs_fs/home/boydlab/TOOLS/NCBIblast/bin/blastn -db SPIKEDB -query /gpfs_fs/home/boydlab/TOOLS/NCBIblast/BNFO420/testoutput.fasta -outfmt 6 -out /gpfs_fs/home/boydlab/TOOLS/NCBIblast/BNFO420/SPIKE2_blastn.out -max_target_seqs 1
/gpfs_fs/home/boydlab/TOOLS/NCBIblast/bin/blastn -db WUMATRIXDB -query /gpfs_fs/home/boydlab/TOOLS/NCBIblast/BNFO420/fixedWuhan.fasta -outfmt 6 -out /gpfs_fs/home/boydlab/TOOLS/NCBIblast/BNFO420/wuhanMatrix_blastn.out -max_target_seqs 1
