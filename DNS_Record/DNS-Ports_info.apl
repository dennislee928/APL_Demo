['cloudflare-logpush']
| where ['@cloudflare.Dataset'] == "dns_logs"
| summarize request_count = count(), total_MB = sum(ClientBytes/1000000) by bin(_time, 1h),DestinationPort,DestinationASNName