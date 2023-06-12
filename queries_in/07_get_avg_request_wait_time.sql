SELECT AVG(EXTRACT(EPOCH FROM (started_at - created_at))) AS average_start_time
FROM assistance_requests;
