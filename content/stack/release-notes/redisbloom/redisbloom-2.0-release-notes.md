---
Title: RedisBloom 2.0 release notes
LinkTitle: v2.0 (June 2019)
description: Added more probabilistic data structures, including top-K and count-min sketch.
min-version-db: "4.0.0"
min-version-rs: "5.0.0"
weight: 98
alwaysopen: false
categories: ["Modules"]
aliases: /modules/redisbloom/release-notes/redisbloom-2.0-release-notes/
---
## Requirements

RedisBloom v2.0.3 requires:

- Minimum Redis compatibility version (database): 4.0.0
- Minimum Redis Enterprise Software version (cluster): 5.0.0

## v2.0.3 (July 2019)

- Performance improvements:
    - #[95](https://github.com/RedisBloom/RedisBloom/issues/95) Top-K - Reduce checks on heap, now only checks if item count is larger than minimum in heap.
    - #[95](https://github.com/RedisBloom/RedisBloom/issues/95) Top-K - The power of decay was calculated every time. Changed to use a lookup table.
- Major bug fix:
    - #[88](https://github.com/RedisBloom/RedisBloom/issues/88) Replication available for newly added Top-K and Count-min sketch
- Minor bug fixes:
    - #[89](https://github.com/RedisBloom/RedisBloom/issues/89) Module update broke rdb files
    - #[98](https://github.com/RedisBloom/RedisBloom/issues/98) Compilation for macOS

## v2.0.0 (June 2019)

We are proud to announce that we doubled the number of probabilistic data structures that are generally available in RedisBloom.  Full documentation is available on [redisbloom.io](https://redisbloom.io)

- #[70](https://github.com/RedisBloom/RedisBloom/issues/70) Top-K
    - [Commands](https://oss.redislabs.com/redisbloom/TopK_Commands/)
    - [Algorithm](https://www.usenix.org/conference/atc18/presentation/gong)

- #[65](https://github.com/RedisBloom/RedisBloom/issues/65) Count-min Sketch
    - [Commands](https://oss.redislabs.com/redisbloom/CountMinSketch_Commands/)
    - [Algorithm](https://en.wikipedia.org/wiki/Count%E2%80%93min_sketch)
