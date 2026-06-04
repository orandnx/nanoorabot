cd /home/oracle
. nanobot-webui/bin/activate
cd /u01/app/nanoorabot-main/nanobot-webui-main2.0
export NANOBOT_VECTOR_API_BASE_QWEN="http://192.168.56.27:19000"
export NANOBOT_VECTOR_API_BASE_BGE="http://192.168.56.27:19001"
export NANOBOT_VECTOR_API_BASE_MINI="http://192.168.56.27:19002"
nohup python -m webui \
    --host 0.0.0.0 \
    --port 18780 \
    --workspace /u01/app/nanoorabot-main/nanobot-runtime/workspace/dba1 \
    --config /u01/app/nanoorabot-main/nanobot-runtime/config.json \
    --oracle-config /u01/app/nanoorabot-main/oracle_config.json \
    --webui-only \
    --log-level INFO > webui.log 2>&1 &
