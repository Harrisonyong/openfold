#!/usr/bin/env python
# -*- encoding: utf-8 -*-
'''
@Filename :filter_uncomplete_file.py
@Description :Filter out directory with less than 4 files
@Datatime :2022/09/01 13:55:30
@Author :yangqinglin
@email :yangqinglin@zhejianglab.com
'''

import os
import argparse


def main(args):
    all_rm_list = []
    all_rm_set = set()
    output_dirs = os.listdir(args.output_dir)
    for out in output_dirs:
        out_dir = os.path.join(args.output_dir, out)
        if len(os.listdir(out_dir)) < 4:
            all_rm_list.append(out)
            all_rm_set.add(out.split("_")[0])
    print(f"not complete files {len(all_rm_list)}: {all_rm_list}")
    for rm in all_rm_set:
        print(f"delete is progressing: {rm}")
        d = os.system(f'find {args.output_dir} -name {rm}_* | xargs   rm -r')
        print(d)


if __name__ == '__main__':
    parse = argparse.ArgumentParser()
    parse.add_argument("--output_dir", type=str,
                       help="the output directory which content the uncomplete cif file")
    args = parse.parse_args()
    main(args)
