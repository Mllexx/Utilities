$source_file = "\directory\filename.csv"
$default_zone = 'mydomain.com'
$dns_srv = x.x.x.x
Import-Csv -Path $source_file -Delimiter "," | ForEach-Object {
    Add-DnsServerResourceRecordA -Name $_.hostname -ZoneName $default_zone -AllowUpdateAny -IPv4Address $_.host_ip -ComputerName $dns_srv
}
