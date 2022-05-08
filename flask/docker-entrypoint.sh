#!/usr/bin/env bash
exec gunicorn app:app -c gunicorn.conf.py