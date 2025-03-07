['cloudflare-logpush']
| where MitigationScope != "" and ['@cloudflare.Dataset'] == "spectrum_events" 
| summarize blocked_requests = count() by bin(_time, 1h), MitigationScope
| order by blocked_requests desc
| limit 50