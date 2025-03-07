['cloudflare-logpush']
| where ['@cloudflare.Dataset'] == "dns_logs" 
| summarize total_origin_bytes = sum(OriginBytes) by bin(_time, 1h)
| order by _time desc