['cloudflare-logpush']
| where ['@cloudflare.Dataset'] == "spectrum_events" 
| summarize total_requests = count(), total_client_bytes = sum(ClientBytes), total_origin_bytes = sum(OriginBytes) by bin(_time, 1h)
| order by _time desc
| limit 50