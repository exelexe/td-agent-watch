td-agent-watch Cookbook
=======================
- Watch buffer_queue_length for td-agent: 
  if td-agent's buffer_queue_length is greater than threshold then an alert mail will be sent
- Execution every five minute by cron.

Requirements
---------------
Add following settings to td-agent's config.
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

Mail detail example
---------------
```
subject: [WARN] {hostname}/td-agent

buffer_queue_length 256 over.
  - buffer_path: /var/log/td-agent/buffer/sample
```
