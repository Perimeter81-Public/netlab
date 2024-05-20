1. On router1 we had a bad static route. changed from eth3 to eth1 for the ibgp session over the direct link.

2. I deleted the black-hole route-map entries on both routers. Usually you would want a blackhole entry to deny /32 (specific host) routes from being adverized for e-bgp peers, but in this topology we have several /32 hosts being advertised. In order to prevent these routes from being blocked - we need to remove these entries.
(This rule had no impact since the config was incomplete, only the route-map entry existed, but not the prefix-list associated with it)

3. Since we have the routes from subnets 172.16.0.0/24 to 172.16.3.0/24, its safe to assume we can permit the entire 172.16.0.0/22 subnet (172.16.0.1 - 172.16.3.254). To accomplish this I edited the MARTIAN prefix list on both routers with the addition of the follwing rule:

ip prefix-list MARTIAN seq 10 deny 172.16.0.0/22 le 32

This prefixlist entry catches the hosts for the entire subnet. Since the route-map denies the entire prefix-map, the combination of 2 deny statements allow traffic to go through, while blocking everything else.

4. The deny statement for ISP-IN on r2 for prefixlist MARTIAN was missing.

5. Cleaned up some route-map entries numbers after removing and adding rules.