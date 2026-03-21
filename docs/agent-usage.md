# Agent Usage

## Positioning

This repository is primarily an agent-skill repository, not a generic command-line graphics toolkit.

The main deliverable is reusable skill packaging under `skills/`, so agents can accept natural-language requests such as:

- "Turn this text into an editorial info card."
- "Make this into a 4:3 information card."
- "Use the editorial-card-screenshot skill and output HTML plus a PNG."

## How the Skill Is Meant to Work

For the current `editorial-card-screenshot` skill:

1. the user gives source material in natural language
2. the agent follows the behavior contract in `SKILL.md`
3. the agent applies the stored editorial prompt rules
4. the agent generates the HTML card
5. if image output is requested, the agent uses the bundled screenshot helper internally

## What the Script Is

`skills/editorial-card-screenshot/scripts/capture_card.sh` exists to support rendering, but it is not the primary user interface.

The primary interface is the agent itself.

## Current Scope

Today the repository contains one packaged skill:

- `editorial-card-screenshot`

Over time, more information-card skills can be added under `skills/` using the same structure.
