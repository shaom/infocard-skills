# infocard-skills

Open-source agent skills for editorial-style information cards.

`infocard-skills` is a focused repository for reusable agent skills that turn source material into structured HTML cards and fixed-ratio card assets.

## Project Summary

This project is for people who want information cards to feel designed, not auto-generated. The repository packages prompts, skill definitions, templates, references, and rendering helpers so agents can handle card-generation tasks through natural-language requests.

Current emphasis:

- editorial and magazine-style layout
- strong hierarchy for dense content
- screenshot-first outputs for fixed visual ratios
- reusable assets for agent-driven card generation

## Agent-First Usage

This repository is intended to be used from coding agents such as Codex-style environments and other skill-based agents.

The primary interaction model is:

1. install or load the skill into the agent environment
2. ask for the card in natural language
3. let the agent use the packaged prompt rules, templates, and helper scripts internally

Typical requests:

- "Turn this article into an editorial info card."
- "Make a 3:4 information card from these notes."
- "Use the editorial-card-screenshot skill and give me both HTML and PNG."

The shell script in this repository is an implementation detail used by the skill when image capture is needed. It is not the main product surface.

## Included Today

### `editorial-card-screenshot`

Path: [`skills/editorial-card-screenshot`](./skills/editorial-card-screenshot)

This skill generates compact HTML information cards and captures them as screenshots in supported aspect ratios.

The intended flow is agent-driven:

- the user provides text, notes, or source material in natural language
- the agent applies the skill contract in [`skills/editorial-card-screenshot/SKILL.md`](./skills/editorial-card-screenshot/SKILL.md)
- the agent optionally calls the bundled screenshot helper when PNG output is requested

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

## Skill Contents

Each skill package may include:

- a `SKILL.md` contract for agent behavior
- agent metadata or descriptors
- templates and prompt references
- helper scripts used internally by the agent

For `editorial-card-screenshot`, supported ratio presets are listed in [`skills/editorial-card-screenshot/references/ratios.md`](./skills/editorial-card-screenshot/references/ratios.md).

## Rendering Requirements

When a skill needs screenshot rendering, the current helper expects local Google Chrome at:

```text
/Applications/Google Chrome.app/Contents/MacOS/Google Chrome
```

## Documentation

- project overview and reusable repository copy: [`docs/project-overview.md`](./docs/project-overview.md)
- agent-facing usage notes: [`docs/agent-usage.md`](./docs/agent-usage.md)
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
