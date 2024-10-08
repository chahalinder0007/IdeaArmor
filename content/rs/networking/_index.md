---
Title: Manage networks
linktitle: Networking
description: Networking features and considerations designing your Redis Enteprise Software deployment.
weight: 39
alwaysopen: false
categories: ["RS"]
aliases: [
    /rs/administering/designing-production/networking/,
    /rs/administering/designing-production/networking/_index.md,
    /rs/networking/_index.md,
    /rs/networking/,
]
---
When designing a Redis Enterprise Software solution, there are some
specific networking features that are worth your time to understand and
implement.

## [Configure cluster DNS]({{< relref "/rs/networking/cluster-dns" >}})

Configure DNS to communicate between cluster nodes.

- [AWS Route53 DNS management]({{< relref "/rs/networking/configuring-aws-route53-dns-redis-enterprise" >}})
- [Client prerequisites for mDNS]({{< relref "/rs/networking/mdns" >}}) for development and test environments

## [Cluster load balancer setup]({{< relref "/rs/networking/cluster-lba-setup" >}})

Set up a load balancer to direct traffic to cluster nodes when DNS is not available.

## [Multi-IP and IPv6]({{< relref "/rs/networking/multi-ip-ipv6" >}})

Requirements for using multiple IP addresses or IPv6 addresses with Redis Enterprise Software.

## [Network port configurations]({{< relref "/rs/networking/port-configurations" >}})

Describes the port ranges that Redis Enterprise Software uses.

## [Public and private endpoints]({{< relref "/rs/networking/private-public-endpoints" >}})

Enable public and private endpoints for your databases.