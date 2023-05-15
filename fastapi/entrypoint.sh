#!/usr/bin/env bash

uvicorn main:app --proxy-headers --host 0.0.0.0 --port 8000 --log-config=log_conf.yaml
