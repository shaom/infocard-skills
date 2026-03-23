---
name: editorial-card-screenshot
description: "Generate high-density editorial HTML info cards in a modern magazine and Swiss-international style, then capture them as ratio-specific screenshots. Use when the user provides text or core information and wants: (1) a complete responsive HTML info card, (2) the design to follow the stored editorial prompt, (3) output in fixed visual ratios such as 3:4, 4:3, 1:1, 16:9, 9:16, 2.35:1, or 5:2, or (4) both HTML and a rendered PNG cover/card from the same content."
---

# Editorial Card Screenshot

## Overview

Turn source text into a compact, high-contrast HTML information card that follows the user's editorial prompt, then render a screenshot in one of the supported aspect ratios.

Always preserve three output stages unless the user explicitly asks to skip one:
1. Write one sentence judging the information density as high, medium, or low.
2. Output the complete HTML with embedded CSS.
3. Self-check that body text remains readable on mobile.

## Workflow

### 1. Analyze Content Density

Choose layout strategy from the content itself:
- Use "big-character" composition when content is sparse and a single phrase, number, or hook can carry the page.
- Use a two-column or three-column editorial grid when content is dense and needs stronger hierarchy.
- Use oversized numbers, heavy rules, tinted blocks, and pull-quote scale to avoid dead space.
- Do not force dense content into evenly weighted tiles. Build primary blocks, secondary blocks, and lighter supporting blocks.
- Match structure to content type:
  - Ranking / recommendation content: allow asymmetric hero + structured list.
  - Tutorial / analysis / interpretation content: group into overview, core judgment, interpretation, boundary, and conclusion.

### 2. Apply the Stored Editorial Rules

Use these defaults unless the user overrides them:
- Import Google Fonts:
  ```html
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+SC:wght@700;900&family=Noto+Sans+SC:wght@400;500;700&family=Oswald:wght@500;700&family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  ```
- Keep body text at `18px` to `20px` on a 900px-wide composition.
- Keep meta/tag text at `13px` minimum.
- Use compact spacing: container padding `40px` to `50px`, component gaps `30px` to `40px`, line-height `1.5` to `1.6`.
- Add visual weight with `4px` to `6px` accent rules, subtle gray planes, and `4%` noise overlays.
- Favor `#f5f3ed` or similar warm-paper backgrounds unless the user supplies another palette.
- Preserve breathing room. Do not shrink outer margins so much that the card loses composure.
- For title zones, prefer larger line-height and clearer separation from subtitle / summary blocks.
- In dense right-side modules, reduce font weight slightly so the page stays clear without feeling heavy.

### 3. Build HTML for Rendering

When HTML will be screenshotted, design the page as a canvas instead of a scrolling article:
- Make the outer page match the target ratio.
- Remove browser-default margins with `html, body { margin: 0; }`.
- Center the card within the viewport and let it fill most of the frame.
- Avoid interactions, sticky headers, or long scrolling sections.
- Use fixed aspect ratio wrappers when needed:
  ```css
  .frame {
    width: 100vw;
    min-height: 100vh;
    display: grid;
    place-items: center;
    background: #e9e2d4;
  }
  ```

If the user asks only for HTML, still make the layout screenshot-ready.

Use these structural heuristics when composing the card:
- Fill the proportion intentionally. Rebalance layout according to width / height instead of scaling one static template.
- In `4:3` landscape, asymmetric left-right layouts often work best for dense analytical content.
- In `3:4` portrait, compress the number of concurrent columns and let the title / summary stack vertically.
- Keep title, subtitle, and closing summary in a vertical conversation so they do not leave dead space between them.
- If using numbered modules, keep numbers visually weak enough that they never collide with titles.
- If a section becomes visually monotonous, introduce contrast through hierarchy changes rather than decorative clutter.

### 4. Capture the Screenshot

Use the bundled shell script when the user wants a PNG output:
```bash
./skills/editorial-card-screenshot/scripts/capture_card.sh input.html output.png 3:4
```

Supported ratios and render sizes live in [references/ratios.md](references/ratios.md).

The script uses local headless Chrome at `/Applications/Google Chrome.app/Contents/MacOS/Google Chrome`.

Before running the script:
- Save the generated HTML to a local file.
- Ensure the page is self-contained except for fonts.
- Ensure the viewport composition already matches the requested ratio.

### 5. Ratio Policy

Accept only these ratio presets:
- `3:4`
- `4:3`
- `1:1`
- `16:9`
- `9:16`
- `2.35:1`
- `5:2`

If the user gives a ratio outside this set, ask them to map it to the nearest supported preset rather than inventing a new one.

## Output Contract

When responding to a card-generation request:
- Start with exactly one sentence describing information density.
- Then output complete HTML in one code block.
- If the user also requested an image, state the ratio used and the screenshot command after the HTML.
- Keep prose short; the HTML is the deliverable.

## Resources

### `references/ratios.md`
Open this when you need the exact preset names or capture dimensions.

### `references/editorial-card-prompt.md`
Use this as the canonical prompt spec when the user wants the latest validated editorial-card behavior.

### `scripts/capture_card.sh`
Run this to capture a PNG from a local HTML file using a supported ratio preset.

### `assets/card-template.html`
Use this as a starting shell when you want a minimal ratio-ready HTML canvas before filling in real content.
