['cloudflare-logpush']
| where ['@cloudflare.Dataset'] == "dns_logs"
| summarize Requests = count() by ['@cloudflare.Dataset'],SourceASNName,ColoName,ClientProto,Timestamp,OriginIP,OriginProto,Status,OriginPort,OriginTlsMode,Application,ClientMatchedIpFirewall,OriginBytes,bin_auto(_time)