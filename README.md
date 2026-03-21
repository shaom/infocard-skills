# infocard-skills

Open-source skills, prompts, and tooling for editorial-style information cards.

`infocard-skills` is a focused repository for reusable information-card workflows: turning source material into structured HTML cards, then rendering those cards into fixed-ratio visual assets.

## Project Summary

This project is for people who want information cards to feel designed, not auto-generated. The repository combines prompt design, skill packaging, capture scripts, ratio presets, and starter templates into a workflow that can be reused across agents and content systems.

Current emphasis:

- editorial and magazine-style layout
- strong hierarchy for dense content
- screenshot-first outputs for fixed visual ratios
- reusable assets for agent-driven card generation

## Included Today

### `editorial-card-screenshot`

Path: [`skills/editorial-card-screenshot`](./skills/editorial-card-screenshot)

This skill generates compact HTML information cards and captures them as screenshots in supported aspect ratios.

Included assets:

- skill definition: [`skills/editorial-card-screenshot/SKILL.md`](./skills/editorial-card-screenshot/SKILL.md)
- screenshot script: [`skills/editorial-card-screenshot/scripts/capture_card.sh`](./skills/editorial-card-screenshot/scripts/capture_card.sh)
- starter template: [`skills/editorial-card-screenshot/assets/card-template.html`](./skills/editorial-card-screenshot/assets/card-template.html)
- ratio presets: [`skills/editorial-card-screenshot/references/ratios.md`](./skills/editorial-card-screenshot/references/ratios.md)
- agent descriptor: [`skills/editorial-card-screenshot/agents/openai.yaml`](./skills/editorial-card-screenshot/agents/openai.yaml)
- canonical prompt spec: [`docs/editorial-card-prompt.md`](./docs/editorial-card-prompt.md)

## Repository Structure

```text
.
├── docs/
│   ├── editorial-card-prompt.md
│   └── project-overview.md
├── examples/
│   └── site-preview/
│       ├── index.html
│       ├── script.js
│       ├── styles.css
│       └── README.md
├── skills/
│   └── editorial-card-screenshot/
│       ├── agents/
│       ├── assets/
│       ├── references/
│       ├── scripts/
│       └── SKILL.md
├── outputs/
└── LICENSE
```

## Quick Start

Render a screenshot from a local HTML card:

```bash
./skills/editorial-card-screenshot/scripts/capture_card.sh input.html output.png 3:4
```

Example:

```bash
./skills/editorial-card-screenshot/scripts/capture_card.sh \
  ./skills/editorial-card-screenshot/assets/card-template.html \
  /tmp/editorial-card.png \
  3:4
```

Supported ratio presets are listed in [`skills/editorial-card-screenshot/references/ratios.md`](./skills/editorial-card-screenshot/references/ratios.md).

## Requirements

The capture workflow currently expects local Google Chrome at:

```text
/Applications/Google Chrome.app/Contents/MacOS/Google Chrome
```

## Documentation

- project overview and reusable repository copy: [`docs/project-overview.md`](./docs/project-overview.md)
- GitHub About, topics, and social copy: [`docs/github-metadata.md`](./docs/github-metadata.md)
- canonical editorial prompt: [`docs/editorial-card-prompt.md`](./docs/editorial-card-prompt.md)

## Roadmap

- add more information-card skills and variants
- expand reusable templates and capture helpers
- include more polished examples and output references
- improve portability across local environments and agent setups

## Contributing

Useful contributions include:

- new card-focused skills with clear scope
- improvements to prompts, templates, and scripts
- better examples and documentation
- fixes that improve reliability or output quality

## License

This repository is licensed under the [MIT License](./LICENSE).
