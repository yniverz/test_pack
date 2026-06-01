# test_pack

A minimal, working Minecraft **datapack**.

## Install

Clone this repo directly into a world's `datapacks` folder so that
`pack.mcmeta` sits at the root of the cloned folder:

```bash
cd ".minecraft/saves/<YourWorld>/datapacks"
git clone <this-repo-url> test_pack
```

The path should look like:

```
saves/<YourWorld>/datapacks/test_pack/pack.mcmeta
saves/<YourWorld>/datapacks/test_pack/data/...
```

## Enable

In-game, run:

```
/reload
```

You should see the green message **"[test_pack] loaded successfully!"**.
Every 10 seconds an actionbar message confirms the tick loop is running.

Check it's active with:

```
/datapack list
```

## What it does

- `load` — runs on every reload; sets up a scoreboard and greets players.
- `tick` — runs every tick; counts ticks and calls `announce` every 10s.
- `announce` — shows an actionbar message and resets the timer.

## Compatibility

`pack.mcmeta` declares `pack_format` 61 with `supported_formats` 48–100,
covering Minecraft 1.21+ (uses the singular `function` / `tags/function`
folder layout introduced in 1.21).
