;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns1.tsc.example.com. admin.tsc.example.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

; name servers - NS records
    IN      NS      ns1.tsc.example.com.
    IN      NS      ns2.tsc.example.com.
    
; name servers - A records
ns1.tsc.example.com.          IN      A       192.168.2.200
ns2.tsc.example.com.          IN      A       192.168.2.199

; 192.168.2.0/24 - A records
mtm.tsc.example.com.          IN      A       192.168.2.11