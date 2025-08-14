On monitored server put scripts and plugins into /etc/zabbix directory and make scripts executable 

```
sudo chmod +x /etc/zabbix/scripts/dnf_updates_*
```

Then restart zabbix agent service

```
sudo systemctl restart zabbix-agent2
```

On zabbix server import templates and assign one of them to monitored server.

Triggers are set to:
* warning if more than 0 updates are ready to install
* error if more than 0 security updates are ready to install
