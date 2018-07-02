# mariadb-alpine

## MariaDB on Alpine Linux 3.7
This is a fork of `santec`'s [original container](https://hub.docker.com/r/santec/mariadb-alpine), which unfortunately is no longer being maintained.
- Upgraded alpine from `3.3` to `3.7`
- More upgrades and improvements to come

## Supported Versions
- MariaDB: `10.1`

## Features:
- Includes `mysql` client
- TERM is set to "xterm" by default
- Exposes MariaDB port.
- Unreasonable settings brought to reasonable minimums.
- Query cache disable by default.
- Galera cluster-wide and node-specific settings are in separated files.
- Volumes:
  -- /var/lib/mysql
  -- /var/log/mysql
  -- /var/backups/mysql
- CONNECT, SEQUENCE, BLACKHOLE, Archive enabled by default.
- query_response_time, metadata_lock_info, locales enabled by default.

## Limitations:
- Cannot start container with existing database in place (to-do).
- Galera is missing.
- TokuDB is missing.
- OQGRAPH is missing.

## #TODO
- Try to include Galera, compiled on Alpine.
- Try to include OQGRAPH.

## Usage
```
docker run -d --name mariadb-alpine ohheyitsbrian/mariadb-alpine:latest
```

## Support
If you find a bug, you can [report it on GitHub](https://github.com/brianirish/mariadb-alpine/issues). I'll do my best to fix it when I have the time, otherwise pull requests are always welcome. ;)
