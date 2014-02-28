# ElasticSearch
A barebones installaton of ElasticSearch 1.0.0, built as an experiment.  Forked from [arcus.io]'s image.

[arcus.io]: http://arcus.io

## Why?
This is designed to be coupled with a matching [logstash][2] [Dockerfile][3].  The idea is that this provides the database.  I wrote it before I realised that logstash ships with an embedded elasticsearch...

[2]: http://logstash.net/
[3]: http://github.com/frio/docker-logstash/
