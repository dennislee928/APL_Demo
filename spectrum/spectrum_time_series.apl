['cloudflare-logpush']
| where ['@cloudflare.Dataset'] !~ "http_requests"
| where ['@cloudflare.Dataset'] == "spectrum_events" 
| summarize count() by bin_auto(_time)