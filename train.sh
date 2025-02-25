CUDA_VISIBLE_DEVICES=1 python ./run_mlm_pc.py \
	--model_name_or_path bert-base-uncased \
	--learning_rate 5e-5 \
	--node_config_name ./bert_base_1layer \
	--train_file ./epoch_0.json \
	--do_train \
	--per_device_train_batch_size 2 \
	--num_train_epochs 1 \
	--dataloader_num_workers 8 \
	--save_steps 10000 \
	--output_dir ./experiment \
	--dataset_script_dir .CLEAR/data_scripts \
	--dataset_cache_dir ./cache \
	--limit 50000000 \
	--overwrite_output_dir \
	--tokenizer_name ./bert_base_uncased
