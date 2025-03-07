['cloudflare-logpush']
| where (['@cloudflare.ZoneID'] =~ "your_zone_id") and  ['@cloudflare.Dataset'] == "spectrum_events" 
| summarize count() by bin_auto(_time)