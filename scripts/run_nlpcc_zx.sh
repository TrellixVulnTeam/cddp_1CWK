cd /share03/xzli/btask
# python scripts/merge_tri_training.py ./data/NLPCC/Train/BC-Train.conll ./result/zx.pred ./data/NLPCC/Unlabeled/ZX-Unlabeled-merge.conll
# CUDA_VISIBLE_DEVICES=`/share03/securityL2/PBStools/idle-gpus.pl -n 8` /share03/xzli/miniconda3/envs/pytorch/bin/python ./examples/run_nlpcc_dp.py --train_file ./data/NLPCC/Train/BC-Train.conll --val_file ./data/NLPCC/Dev/ZX-Dev.conll --bert_model ./pretrain/baidubaike/ --output_dir outputs/NLPCC_BC_ZX3/ --max_seq_length 300 --do_train --do_eval --train_batch_size 320 --eval_batch_size 160 --learning_rate 5e-5 --num_train_epochs 30 --label_vocab ./data/NLPCC/Train/labels.vocab --log_file ./logs/nlpcc_bc_zx3.log
CUDA_VISIBLE_DEVICES=`/share03/securityL2/PBStools/idle-gpus.pl -n 8` /share03/xzli/miniconda3/envs/pytorch/bin/python ./examples/run_nlpcc_dp.py --train_file ./data/NLPCC/Unlabeled/ZX-Unlabeled-merge6.conll --val_file ./data/NLPCC/Dev/ZX-Dev.conll --bert_model ./outputs/NLPCC_BC_ZX6/ --output_dir outputs/NLPCC_BC_ZX7/ --max_seq_length 300 --do_train --do_eval --train_batch_size 320 --eval_batch_size 160 --learning_rate 5e-5 --num_train_epochs 3 --label_vocab ./data/NLPCC/Train/labels.vocab --log_file ./logs/nlpcc_bc_zx7.log