--- 
sidebar_label: 'Scenario benchmarks' 
sidebar_position: 5 
--- 

# Scenario benchmark results 

This page collects results from the scenario matrix: every combination  of cluster size, UTxO shape, and incremental-ops mode is exercised by  CI from the latest `master` code and reported below.

:::caution

Numbers are approximate. They come from cloud VMs rather than  controlled hardware, so the useful signal is the relative change  between cells and between commits, not the absolute throughput.

:::

_Generated at_  2026-10-09 09:14:38.847745275 UTC


## Summary across cells

TPS columns are rates (transactions per second); _Wall clock (s)_ is the measured elapsed time from the first tx submission to the last confirmation. Times are rounded to one decimal.

| Scenario | Txs | Wall clock (s) | End-to-end TPS (tx/s) | Sustained TPS (tx/s) | Avg conf (ms) | P95 conf (ms) |
| -- | -- | -- | -- | -- | -- | -- |
| Nodes=1, Constant, fire and forget | 30 | 0.0 | 1477.14 | n/a | 19.8 | 20.1 |
| Nodes=1, Constant, wait for tx valid | 30 | 0.1 | 254.52 | 254.24 | 3.9 | 4.3 |
| Nodes=1, Growing, fire and forget | 30 | 0.0 | 1494.44 | n/a | 19.5 | 19.9 |
| Nodes=1, Growing, wait for tx valid | 30 | 0.1 | 220.34 | 218.37 | 4.5 | 5.3 |
| Nodes=1, Mixed, fire and forget | 30 | 0.0 | 625.46 | n/a | 47.3 | 47.8 |
| Nodes=1, Mixed, wait for tx valid | 30 | 0.1 | 241.14 | 248.38 | 4.1 | 5.3 |
| Nodes=2, Constant, fire and forget | 60 | 0.0 | 1480.33 | n/a | 39.4 | 39.9 |
| Nodes=2, Constant, wait for tx valid | 60 | 0.3 | 190.05 | 185.68 | 10.4 | 14.4 |
| Nodes=2, Growing, fire and forget | 60 | 0.0 | 1236.11 | n/a | 47.6 | 48.0 |
| Nodes=2, Growing, wait for tx valid | 60 | 0.4 | 141.36 | 139.55 | 13.9 | 19.8 |
| Nodes=2, Mixed, fire and forget | 60 | 0.0 | 1256.12 | n/a | 46.9 | 47.6 |
| Nodes=2, Mixed, wait for tx valid | 60 | 0.4 | 135.30 | 133.34 | 14.7 | 18.8 |
| Nodes=3, Constant, fire and forget | 90 | 0.1 | 629.82 | n/a | 141.2 | 142.3 |
| Nodes=3, Constant, wait for tx valid | 90 | 0.7 | 131.45 | 126.66 | 22.5 | 29.0 |
| Nodes=3, Growing, fire and forget | 90 | 0.1 | 885.78 | n/a | 100.2 | 101.3 |
| Nodes=3, Growing, wait for tx valid | 90 | 0.7 | 120.32 | 120.26 | 24.5 | 31.0 |
| Nodes=3, Mixed, fire and forget | 90 | 0.1 | 697.63 | n/a | 127.6 | 128.8 |
| Nodes=3, Mixed, wait for tx valid | 90 | 0.9 | 104.47 | 102.73 | 28.4 | 37.6 |


## Nodes=1, Constant, fire and forget



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 19.8 |
| _P99_ | 20.1ms |
| _P95_ | 20.1ms |
| _P50_ | 19.9ms |
| _Tx validation time p50 (ms)_ | 9.1 |
| _End-to-end TPS_ | 1477.14 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 98.48 /s |
| _Avg txs per snapshot_ | 15.0 |
| _Peak node RSS (MB)_ | 129.8 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1 |
      

## Nodes=1, Constant, wait for tx valid



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 3.9 |
| _P99_ | 7.9ms |
| _P95_ | 4.3ms |
| _P50_ | 3.6ms |
| _Tx validation time p50 (ms)_ | 1.3 |
| _End-to-end TPS_ | 254.52 tx/s |
| _Sustained TPS_ | 254.24 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 30 |
| _Snapshots per second_ | 254.52 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 128.3 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1 |
      

## Nodes=1, Growing, fire and forget



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 19.5 |
| _P99_ | 19.9ms |
| _P95_ | 19.9ms |
| _P50_ | 19.7ms |
| _Tx validation time p50 (ms)_ | 7.0 |
| _End-to-end TPS_ | 1494.44 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 99.63 /s |
| _Avg txs per snapshot_ | 15.0 |
| _Peak node RSS (MB)_ | 132.5 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 31 |
      

## Nodes=1, Growing, wait for tx valid



| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 4.5 |
| _P99_ | 5.9ms |
| _P95_ | 5.3ms |
| _P50_ | 4.4ms |
| _Tx validation time p50 (ms)_ | 1.3 |
| _End-to-end TPS_ | 220.34 tx/s |
| _Sustained TPS_ | 218.37 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 30 |
| _Snapshots per second_ | 220.34 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 130.5 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 31 |
      

## Nodes=1, Mixed, fire and forget

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 47.3 |
| _P99_ | 47.8ms |
| _P95_ | 47.8ms |
| _P50_ | 47.6ms |
| _Tx validation time p50 (ms)_ | 26.9 |
| _End-to-end TPS_ | 625.46 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 41.70 /s |
| _Avg txs per snapshot_ | 15.0 |
| _Peak node RSS (MB)_ | 129.2 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1 |
      

## Nodes=1, Mixed, wait for tx valid

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  1 | 
| -- | -- |
| _Number of txs_ | 30 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 4.1 |
| _P99_ | 7.8ms |
| _P95_ | 5.3ms |
| _P50_ | 3.8ms |
| _Tx validation time p50 (ms)_ | 1.2 |
| _End-to-end TPS_ | 241.14 tx/s |
| _Sustained TPS_ | 248.38 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 30 |
| _Snapshots per second_ | 241.14 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 128.1 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 1 |
      

## Nodes=2, Constant, fire and forget



| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 39.4 |
| _P99_ | 40.2ms |
| _P95_ | 39.9ms |
| _P50_ | 39.5ms |
| _Tx validation time p50 (ms)_ | 16.9 |
| _End-to-end TPS_ | 1480.33 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 49.34 /s |
| _Avg txs per snapshot_ | 30.0 |
| _Peak node RSS (MB)_ | 144.4 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 2 |
      

## Nodes=2, Constant, wait for tx valid



| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 10.4 |
| _P99_ | 18.7ms |
| _P95_ | 14.4ms |
| _P50_ | 9.9ms |
| _Tx validation time p50 (ms)_ | 2.6 |
| _End-to-end TPS_ | 190.05 tx/s |
| _Sustained TPS_ | 185.68 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 60 |
| _Snapshots per second_ | 190.05 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 144.4 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 2 |
      

## Nodes=2, Growing, fire and forget



| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 47.6 |
| _P99_ | 48.2ms |
| _P95_ | 48.0ms |
| _P50_ | 47.8ms |
| _Tx validation time p50 (ms)_ | 21.2 |
| _End-to-end TPS_ | 1236.11 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 41.20 /s |
| _Avg txs per snapshot_ | 30.0 |
| _Peak node RSS (MB)_ | 144.1 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 62 |
      

## Nodes=2, Growing, wait for tx valid



| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 13.9 |
| _P99_ | 21.0ms |
| _P95_ | 19.8ms |
| _P50_ | 13.8ms |
| _Tx validation time p50 (ms)_ | 3.9 |
| _End-to-end TPS_ | 141.36 tx/s |
| _Sustained TPS_ | 139.55 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 60 |
| _Snapshots per second_ | 141.36 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 145.6 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 62 |
      

## Nodes=2, Mixed, fire and forget

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 46.9 |
| _P99_ | 47.7ms |
| _P95_ | 47.6ms |
| _P50_ | 47.1ms |
| _Tx validation time p50 (ms)_ | 15.8 |
| _End-to-end TPS_ | 1256.12 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 41.87 /s |
| _Avg txs per snapshot_ | 30.0 |
| _Peak node RSS (MB)_ | 143.8 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 2 |
      

## Nodes=2, Mixed, wait for tx valid

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  2 | 
| -- | -- |
| _Number of txs_ | 60 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 14.7 |
| _P99_ | 19.4ms |
| _P95_ | 18.8ms |
| _P50_ | 14.8ms |
| _Tx validation time p50 (ms)_ | 4.9 |
| _End-to-end TPS_ | 135.30 tx/s |
| _Sustained TPS_ | 133.34 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 60 |
| _Snapshots per second_ | 135.30 /s |
| _Avg txs per snapshot_ | 1.0 |
| _Peak node RSS (MB)_ | 145.8 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 2 |
      

## Nodes=3, Constant, fire and forget



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 141.2 |
| _P99_ | 142.5ms |
| _P95_ | 142.3ms |
| _P50_ | 141.3ms |
| _Tx validation time p50 (ms)_ | 56.9 |
| _End-to-end TPS_ | 629.82 tx/s |
| _Backlog drain time (s)_ | 0.1 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 14.00 /s |
| _Avg txs per snapshot_ | 45.0 |
| _Peak node RSS (MB)_ | 145.4 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 3 |
      

## Nodes=3, Constant, wait for tx valid



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 22.5 |
| _P99_ | 60.2ms |
| _P95_ | 29.0ms |
| _P50_ | 21.3ms |
| _Tx validation time p50 (ms)_ | 5.1 |
| _End-to-end TPS_ | 131.45 tx/s |
| _Sustained TPS_ | 126.66 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 61 |
| _Snapshots per second_ | 89.10 /s |
| _Avg txs per snapshot_ | 1.5 |
| _Peak node RSS (MB)_ | 145.5 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 3 |
      

## Nodes=3, Growing, fire and forget



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 100.2 |
| _P99_ | 101.3ms |
| _P95_ | 101.3ms |
| _P50_ | 100.7ms |
| _Tx validation time p50 (ms)_ | 33.1 |
| _End-to-end TPS_ | 885.78 tx/s |
| _Backlog drain time (s)_ | 0.1 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 19.68 /s |
| _Avg txs per snapshot_ | 45.0 |
| _Peak node RSS (MB)_ | 146.8 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 0 |
      

## Nodes=3, Growing, wait for tx valid



| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 24.5 |
| _P99_ | 33.2ms |
| _P95_ | 31.0ms |
| _P50_ | 24.5ms |
| _Tx validation time p50 (ms)_ | 6.4 |
| _End-to-end TPS_ | 120.32 tx/s |
| _Sustained TPS_ | 120.26 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 61 |
| _Snapshots per second_ | 81.55 /s |
| _Avg txs per snapshot_ | 1.5 |
| _Peak node RSS (MB)_ | 146.6 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 0 |
      

## Nodes=3, Mixed, fire and forget

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | open-loop |
| _Avg. Confirmation Time (ms)_ | 127.6 |
| _P99_ | 128.9ms |
| _P95_ | 128.8ms |
| _P50_ | 127.6ms |
| _Tx validation time p50 (ms)_ | 68.4 |
| _End-to-end TPS_ | 697.63 tx/s |
| _Backlog drain time (s)_ | 0.1 |
| _Snapshots observed_ | 2 |
| _Snapshots per second_ | 15.50 /s |
| _Avg txs per snapshot_ | 45.0 |
| _Peak node RSS (MB)_ | 144.4 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 3 |
      

## Nodes=3, Mixed, wait for tx valid

Each client first grows its UTxO set (1-in to 2-out) for half of its tx budget, then contracts it back (2-in to 1-out) for the remainder.

| Number of nodes |  3 | 
| -- | -- |
| _Number of txs_ | 90 |
| _Load mode_ | closed-loop |
| _Avg. Confirmation Time (ms)_ | 28.4 |
| _P99_ | 42.9ms |
| _P95_ | 37.6ms |
| _P50_ | 28.3ms |
| _Tx validation time p50 (ms)_ | 7.5 |
| _End-to-end TPS_ | 104.47 tx/s |
| _Sustained TPS_ | 102.73 tx/s |
| _Backlog drain time (s)_ | 0.0 |
| _Snapshots observed_ | 61 |
| _Snapshots per second_ | 70.81 /s |
| _Avg txs per snapshot_ | 1.5 |
| _Peak node RSS (MB)_ | 146.1 |
| _Number of Invalid txs_ | 0 |
| _Refused submissions_ | 0 |
| _Fanout outputs_        | 3 |
      
