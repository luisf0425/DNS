$TTL 86400
$ORIGIN abc.com.
@ 	IN 	SOA 	dns1.abc.com 	admin.abc.com. (
 	1 	; 	serial
 	360000 	; 	refresh every 100 hours
 	3600 	; 	retry after 1 hour
 	3600000 ;	expire after 1000 hours
 	3600	;	negative cache is 1 hour
)
@  	NS 	dns1.abc.com.
	MX	5	mail.abc.com.
dns1	A	192.168.130.5
mail	A	192.168.130.10
ftp	A	192.168.130.15
fileserver	IN	CNAME	ftp.abc.com.
www	IN	A	192.168.130.11
dactivo.acb.com	IN	A	192.168.130.12
_ldap._tcp.dactivo.abc.com	IN	SRV	0	0	389	dactivo.abc.com.
_kerberos._tcp.dactivo.abc.com	IN	SRV	0	0	88	dactivo.abc.com.
_ldap._tcp.dc._msdcs.dactivo.abc.com	IN	SRV	0	0	389	dactivo.abc.com.
_kerberos._tcp.dc._msdcs.dactivo.abc.com	IN	SRV	0	0	88	dactivo.abc.com.
PC1	A	192.168.130.16
PC2     A       192.168.130.17
PC3     A       192.168.130.18
PC4     A       192.168.130.19
PC5     A       192.168.130.20
