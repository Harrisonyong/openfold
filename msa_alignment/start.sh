#! /bin/bash
p="wzhdnormal" #队列名称
node=2 #分配节点数
cpus_per_node=32 #每个节点cpu数量
job_name="08_01_msa" #job名称
log_out="log/output/08_01_%j.out" #log地址
log_err="log/error/08_01_%j.err" #error地址
input_dir="input_dir/input_08/" #输入
output_dir="output_alignment_dir/output_08/" #输出
cpus=32 #脚本cpu分配数
no_tasks=2 #脚本线程数

python pre_msa_filter.py --output_dir $output_dir

sbatch -J $job_name -p $p -N $node -c $cpus_per_node -o $log_out -e $log_err start_slurm.sh $input_dir $output_dir $cpus $no_tasks



