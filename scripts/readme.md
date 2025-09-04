Whole template is for dnf but change to ubuntu's apt is trivial.

* Option 1. rename scripts apt_* to dnf_*

* Option 2. keep the name but change script name in zabbix_agent2.d/plugins.d/dnf.conf from:
```
UserParameter=dnf.updates.count,/etc/zabbix/scripts/dnf_updates_count.sh
UserParameter=dnf.updates.security.count,/etc/zabbix/scripts/dnf_updates_security_count.sh
```
to:
```
UserParameter=dnf.updates.count,/etc/zabbix/scripts/apt_updates_count.sh
UserParameter=dnf.updates.security.count,/etc/zabbix/scripts/apt_updates_security_count.sh
```

* Option 3. hardest way, change in dnf.conf also UserParameter=dnf.updates... to UserParameter=apt.updates... but it requires adapting also templates so too much work...
