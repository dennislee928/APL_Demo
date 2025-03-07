['cloudflare-logpush']
| where ['@cloudflare.Dataset'] == "nel_reports"
| summarize count() by ClientAsn,ClientIP,Timestamp,ClientIPClass
| limit 10