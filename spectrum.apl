['cloudflare-logpush']
| where (['@cloudflare.ZoneID'] =~ "1e0411815ce057a7963337caf32ae310")
| where ['@cloudflare.Dataset'] == "spectrum_events" 
| where ['@cloudflare.Dataset'] == "spectrum_events" 
| where Application == "dea6cbefaf7b4f66946e8d48d96269dd"
| summarize Requests = count() by ['@cloudflare.Dataset'],SourceASNName,ColoName,ClientProto,Timestamp,OriginIP,OriginProto,Status,OriginPort,OriginTlsMode,Application,ClientMatchedIpFirewall,OriginBytes,bin_auto(_time)