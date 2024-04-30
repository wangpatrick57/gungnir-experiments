-- DB Version: 16
-- OS Type: linux
-- DB Type: dw
-- Total Memory (RAM): 60 GB
-- CPUs num: 32
-- Data Storage: ssd

ALTER SYSTEM SET
 max_connections = '40';
ALTER SYSTEM SET
 shared_buffers = '15GB';
ALTER SYSTEM SET
 effective_cache_size = '45GB';
ALTER SYSTEM SET
 maintenance_work_mem = '2GB';
ALTER SYSTEM SET
 checkpoint_completion_target = '0.9';
ALTER SYSTEM SET
 wal_buffers = '16MB';
ALTER SYSTEM SET
 default_statistics_target = '500';
ALTER SYSTEM SET
 random_page_cost = '1.1';
ALTER SYSTEM SET
 effective_io_concurrency = '200';
ALTER SYSTEM SET
 work_mem = '12MB';
ALTER SYSTEM SET
 huge_pages = 'try';
ALTER SYSTEM SET
 min_wal_size = '4GB';
ALTER SYSTEM SET
 max_wal_size = '16GB';
ALTER SYSTEM SET
 max_worker_processes = '32';
ALTER SYSTEM SET
 max_parallel_workers_per_gather = '16';
ALTER SYSTEM SET
 max_parallel_workers = '32';
ALTER SYSTEM SET
 max_parallel_maintenance_workers = '4';
