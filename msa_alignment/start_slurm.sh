#!/bin/bash

srun python MSA_alignments.py $1 $2 \
    --uniref90_database_path /work/home/act53esxup/MSA/data/uniref90/uniref90.fasta \
    --mgnify_database_path /work/home/act53esxup/MSA/data/mgnify/mgy_clusters_2018_12.fa \
    --pdb70_database_path /work/home/act53esxup/MSA/data/pdb70/pdb70 \
    --uniclust30_database_path /work/home/act53esxup/MSA/data/uniclust30/uniclust30_2018_08/uniclust30_2018_08 \
    --bfd_database_path /work/home/act53esxup/MSA/data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt \
    --jackhmmer_binary_path /work/home/act53esxup/MSA/lib/miniconda/envs/openfold_venv/bin/jackhmmer \
    --hhblits_binary_path /work/home/act53esxup/MSA/lib/miniconda/envs/openfold_venv/bin/hhblits \
    --hhsearch_binary_path /work/home/act53esxup/MSA/lib/miniconda/envs/openfold_venv/bin/hhsearch \
    --kalign_binary_path /work/home/act53esxup/MSA/lib/miniconda/envs/openfold_venv/bin/kalign \
    --cpus $3 \
    --no_tasks $4 \
