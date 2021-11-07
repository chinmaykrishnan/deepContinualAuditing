python main_joint.py --strategy "JointTraining" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new.csv \
      --no_epochs 200 --params_path "./params/params_10exp_scenario3.yml" --wandb_proj "ContinualAnomaly_JointTraining" \
      --bottleneck "tanh"

python main_joint.py --strategy "JointTraining" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new.csv \
      --no_epochs 2000 --params_path "./params/params_10exp_scenario3.yml" --wandb_proj "ContinualAnomaly_JointTraining" \
      --bottleneck "tanh"
