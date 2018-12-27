td-agent-watch Cookbook
=======================
Watch `buffer_queue_length` of td-agent. Notify to mail if greater than a threshold.
The script is exec the Cron once five minutes.

Requirements
---------------
You need to allow the monitor config.

```
<source>
  type monitor_agent
  bind 0.0.0.0
  port 24220
</source>
```

Attributes of Cookbook
---------------
* `['td_agent_watch']['script_path']` - script path.

Custom JSON example
---------------
```
{
  "td-agent-watch": {
    "threshold": 256
    "mail_notify": true,
    "mail_from": "notify@sample.io",
    "mail_to": "alert@sample.io"
  }
}
```

Mail body example
---------------
```
subject: [WARN] {hostname}/td-agent

buffer_queue_length 256 over.
  - buffer_path: /var/log/td-agent/buffer/sample
```
