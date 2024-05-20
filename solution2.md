1. From the topology and the config on r3 and r4 we can assume that every link on r1 and r2 which is not a backbone link (eth1 r1 <-> r2) will be connected to area 1.
Since ospf requires a backbone (area 0), I have decided to designate 0.0.0.1 as the global configuration, and manually apply area 0 onto eth1 on both router links. This is achieved using these 2 config chagnes:

r1:
    ospf.process: 100
    ospf.area: 0.0.0.1
r2:
    ospf.process: 100
    ospf.area: 0.0.0.1

links:
- r1:
    ospf.area: 0.0.0.0
  r2:
    ospf.area: 0.0.0.0



2. In addition to that, I've also deleted the following snippet of config:
- r1:
  r2:
    ospf.passive: True

This would make it so r1 and r2 eth1 links would be passive - meaning not seding any ospf packets thus not setting up a neighborship. Ideally you would configure this on host-facing or downstream links.

** notes:
- If I were to simply change the ospf area to 0.0.0.1 and not change the backbone link, the challange would have been succesful anyway since all router links are on the same area. However not using area 0 is not reccomended in the event that we wish to segregate the network into several domains. I was not sure if the intent was a single ospf domain, or an attempt to segregate the network into 2. If we wish to have all the routers on the same area, area 0 would be a preferable choice, since its a requirement by ospf anyway. But since im not supposed to edit r3 and r4 adn they are sitting on area 1, I assumed its an attempt to segregate the network.