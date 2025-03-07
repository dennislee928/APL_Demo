['cloudflare-logpush']
| where ['@cloudflare.Dataset'] != "http_requests"
| summarize request_count = count(), total_MB = sum(ClientBytes/1000000) by bin(_time, 1h),DestinationPort,DestinationASNName
| order by request_count desc
| limit 20