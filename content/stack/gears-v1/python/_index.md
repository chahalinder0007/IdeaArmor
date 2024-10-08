---
Title: RedisGears Python plugin
linkTitle: Run with Python
description: The RedisGears Python plugin allows you to run RedisGears functions with Python.
weight: 71
alwaysopen: false
categories: ["Modules"]
aliases: /modules/redisgears/python/
---

With the RedisGears Python plugin, you can write RedisGears functions in [Python](https://www.python.org/) and run them on a [Redis Enterprise]({{<relref "/rs/">}}) cluster.

The Python plugin allows both batch processing and event-driven processing.

Before you can run RedisGears with Python, you will need to [install the RedisGears module and the Python plugin]({{<relref "/stack/gears-v1/installing-redisgears#install-redisgears">}}) on your Redis Enterprise cluster and [enable them for your database]({{<relref "/stack/gears-v1/python/install">}}).

Once you have written your code, upload it to a node on your Redis Enterprise cluster. Use the `RG.PYEXECUTE` command with the `redis-cli` command-line tool to run your code.

## More info

- [RedisGears Python quick start]({{<relref "/stack/gears-v1/python/quickstart">}})
- [RedisGears Python operations](http://oss.redis.com/redisgears/operations.html)
- [RedisGears recipes]({{<relref "/stack/gears-v1/python/recipes">}})