--- 
sidebar_label: 'End-to-end benchmarks' 
sidebar_position: 4 
--- 

# End-to-end benchmark results 

This page is intended to collect the latest end-to-end benchmark  results produced by Hydra's continuous integration (CI) system from  the latest `master` code.

:::caution

Please note that these results are approximate  as they are currently produced from limited cloud VMs and not controlled hardware.  Rather than focusing on the absolute results,   the emphasis should be on relative results,  such as how the timings for a scenario evolve as the code changes.

:::

_Generated at_  2026-10-09 09:00:55.090458397 UTC


## Baseline Scenario



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 300 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 115.9 |
| _P99_ | 117.9ms |
| _P95_ | 117.7ms |
| _P50_ | 116.1ms |
| _Tx validation time p50 (ms)_ | 43.1 |
| _End-to-end TPS_ | 2539.83 tx/s |
| _Backlog drain time (s)_ | 0.1 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 16.93 /s |
| _Avg txs per snapshot_ | 150.0 |
| _Peak node RSS (MB)_ | 132.5 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1 |
      

## Three local nodes



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 900 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 491.7 |
| _P99_ | 514.8ms |
| _P95_ | 514.2ms |
| _P50_ | 492.9ms |
| _Tx validation time p50 (ms)_ | 215.4 |
| _End-to-end TPS_ | 1711.80 tx/s |
| _Backlog drain time (s)_ | 0.5 |
| _Snapshots observed_ | 3 |
| _Snapshots per second_ | 5.71 /s |
| _Avg txs per snapshot_ | 300.0 |
| _Peak node RSS (MB)_ | 146.3 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 3 |
      

## Plateau 1000 UTxO

Each client splits its funds into 1000 outputs (1-in 10-out), then holds that plateau with full-value self-transfers so every snapshot carries the large UTxO set.

| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 600 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 419.8 |
| _P99_ | 435.7ms |
| _P95_ | 435.4ms |
| _P50_ | 419.4ms |
| _Tx validation time p50 (ms)_ | 129.6 |
| _End-to-end TPS_ | 1334.91 tx/s |
| _Backlog drain time (s)_ | 0.4 |
| _Snapshots observed_ | 3 |
| _Snapshots per second_ | 6.67 /s |
| _Avg txs per snapshot_ | 200.0 |
| _Peak node RSS (MB)_ | 147.9 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1000 |
      
