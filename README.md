# nf-sleep

Run using

```
nextflow run pditommaso/nf-sleep [--timeout <secs>|<min>..<max>] [--times <n>] [--exit <code>]
```

## Params

| Param | Default | Description |
|-----------|---------|-------------|
| `--timeout` | `10` | Seconds each task sleeps. Accepts a fixed value (`--timeout 5`) or a range (`--timeout 5..10`) — each task picks a random value in the range. |
| `--times` | `1` | Number of tasks to run. |
| `--exit` | `0` | Exit code returned by each task. |

## Examples

```
# 10 tasks, each sleeping a random 1-5 seconds
nextflow run pditommaso/nf-sleep --times 10 --timeout 1..5

# a task that fails after 3 seconds
nextflow run pditommaso/nf-sleep --timeout 3 --exit 1
```
