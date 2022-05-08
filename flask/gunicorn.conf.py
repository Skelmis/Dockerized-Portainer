import multiprocessing

capture_output = True
loglevel = "info"

accesslog = "/var/log/gunicorn.access.log"
errorlog = "/var/log/gunicorn.error.log"

proc_name = "name here"

worker_tmp_dir = "/dev/shm"

bind = "[::]:8000"
workers = multiprocessing.cpu_count() * 2 + 1
