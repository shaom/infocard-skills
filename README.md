# infocard-skills

Open-source skills for turning source material into editorial-style information-card assets.

This repository collects reusable skills, prompts, scripts, and templates for information-card workflows. The current focus is HTML info cards that can be rendered to fixed-ratio PNGs.

## What is in this repo

### `editorial-card-screenshot`

Path: `skills/editorial-card-screenshot`

This skill is for generating dense editorial HTML info cards and capturing them as screenshots in supported aspect ratios.

It includes:

- a reusable skill definition in [`skills/editorial-card-screenshot/SKILL.md`](./skills/editorial-card-screenshot/SKILL.md)
- a screenshot script in [`skills/editorial-card-screenshot/scripts/capture_card.sh`](./skills/editorial-card-screenshot/scripts/capture_card.sh)
- a minimal starter template in [`skills/editorial-card-screenshot/assets/card-template.html`](./skills/editorial-card-screenshot/assets/card-template.html)
- ratio presets in [`skills/editorial-card-screenshot/references/ratios.md`](./skills/editorial-card-screenshot/references/ratios.md)
- an OpenAI agent descriptor in [`skills/editorial-card-screenshot/agents/openai.yaml`](./skills/editorial-card-screenshot/agents/openai.yaml)

## Design direction

The current card skill is built around:

- editorial and magazine-style composition
- Swiss-international layout discipline
- strong information hierarchy
- screenshot-first outputs for fixed visual ratios
- practical reuse through prompts, templates, and scripts

The canonical prompt spec for the current card style lives in [`docs/editorial-card-prompt.md`](./docs/editorial-card-prompt.md).

## Repository structure

```text
.
├── docs/
├── skills/
│   └── editorial-card-screenshot/
├── index.html
├── script.js
└── styles.css
```

## Quick start

From the repository root:

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

Supported ratio presets are documented in [`skills/editorial-card-screenshot/references/ratios.md`](./skills/editorial-card-screenshot/references/ratios.md).

## Requirements

The screenshot workflow currently expects local Google Chrome at:

```text
/Applications/Google Chrome.app/Contents/MacOS/Google Chrome
```

## Roadmap

Planned additions for this repository:

- more information-card skills and variants
- shared prompts and templates for card workflows
- better examples and sample outputs

## Contributing

Contributions are welcome if they keep the repository practical and reusable.

Good contributions include:

- new skills with clear scope and documentation
- improvements to prompts, templates, and capture scripts
- better examples for card workflows
- fixes that improve portability or output quality

## License

This repository is licensed under the [MIT License](./LICENSE).
