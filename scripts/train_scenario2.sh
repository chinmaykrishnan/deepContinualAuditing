python main_continual.py --strategy "Naive" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new_anomalies.csv \
      --no_epochs 100 --params_path "./params/params_10exp_scenario2.yml" --wandb_proj "ContinualAnomaly_Scenario2" \
      --bottleneck "tanh"

python main_continual.py --strategy "Replay" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new_anomalies.csv \
      --no_epochs 100 --params_path "./params/params_10exp_scenario2.yml"  --wandb_proj "ContinualAnomaly_Scenario2" \
      --bottleneck "tanh" --replay_mem_size 500

python main_continual.py --strategy "EWC" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new_anomalies.csv \
      --no_epochs 100 --params_path "./params/params_10exp_scenario2.yml" --wandb_proj "ContinualAnomaly_Scenario2" \
      --bottleneck "tanh" --ewc_lambda 50000.0

python main_continual.py --strategy "LwF" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new_anomalies.csv \
      --no_epochs 100 --params_path "./params/params_10exp_scenario2.yml" --wandb_proj "ContinualAnomaly_Scenario2" \
      --bottleneck "tanh" --lwf_alpha 1.0 --lwf_temperature 1.0

python main_continual.py --strategy "SynapticIntelligence" \
      --data_dir /netscratch/mschreyer/deepNadim/100_datasets/philadelphia/original_data/city_payments_fy2017_encoded_all_new_anomalies.csv \
      --no_epochs 100 --params_path "./params/params_10exp_scenario2.yml" --wandb_proj "ContinualAnomaly_Scenario2" \
      --bottleneck "tanh" --si_lambda 1.0 --si_eps 0.01
