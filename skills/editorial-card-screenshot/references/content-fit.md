# Content Fit and Layout Selection

Use this reference before choosing a skeleton and again after rendering the PNG.

## 1. Inventory the Content

Count semantic units instead of only counting characters:

- `headline`: main title
- `deck`: subtitle or summary
- `anchor`: one key number, phrase, or judgment
- `primary point`: a point that needs a heading plus explanation
- `support point`: a short takeaway, example, warning, or source note

Treat one primary point as roughly two support points.

## 2. Estimate Density

Use the following as a starting estimate:

- **Low**: headline + deck + up to 2 primary-point equivalents
- **Medium**: headline + deck + 3 to 5 primary-point equivalents
- **High**: headline + deck + 6 to 8 primary-point equivalents
- **Over capacity**: more than 8 primary-point equivalents, or any section that requires body text below the minimum readable size

Ratio changes capacity:

| Ratio family | Comfortable capacity | Preferred structure |
| --- | --- | --- |
| `3:1`, `5:2`, `2.35:1` | 1 to 3 primary-point equivalents | headline-led cover with one support cluster |
| `16:9` | 2 to 5 | horizontal hero plus one structured support area |
| `4:3`, `1:1` | 4 to 7 | asymmetric analytical grid |
| `3:4`, `9:16` | 4 to 8 | staged vertical reading path with mixed module sizes |

If content exceeds comfortable capacity, first group related points and turn repetition into one structured module. Only then shorten copy or recommend a second card.

## 3. Choose the Skeleton

Select using both density and ratio:

| Density | Landscape / square | Portrait | Wide cover |
| --- | --- | --- | --- |
| Low | large headline or anchor occupying the main area; one compact support block | cover-style title zone; one anchor; one lower support block | headline-led cover; one short support line |
| Medium | hero plus one heavy module and one supporting stack | hero plus one heavy module and two smaller supports | split hero plus compact support cluster |
| High | one heavy analytical module plus a narrow structured stack | staged vertical modules with one dominant section and grouped supports | do not force all content into one card; summarize or split |

Do not choose a skeleton because it is already present in the template. Choose it from this table, then adapt the template.

## 4. Allocate Space Before Styling

Write a short allocation plan before final HTML:

```text
Ratio: 4:3
Density: high
Hero: 24% height
Primary module: 48% of body area
Support stack: 52% of body area
Footer: 7% height
```

Use these checks:

- The hero should normally use `18%` to `35%` of card height.
- The primary module should receive more area and more content than any support module.
- A module that uses more than `25%` of the body area needs internal structure, not one short paragraph.
- Avoid reserving a row with `1fr` unless its content is expected to fill that row.
- Do not stretch a tinted or dark panel merely to reach the footer. Large colored panels make unused space look like an unfinished empty box.
- If a module must occupy a large area, support it with meaningful content, a deliberate visual anchor, or an internal composition that uses the lower area.

## 5. Render and Inspect

Always inspect the rendered PNG, not only the HTML source.

Reject and revise when any check fails:

- Content or decorative elements overflow or are cropped.
- The bottom-most meaningful content ends above `80%` of canvas height, unless the empty area is an intentional part of a low-density cover.
- A single empty region occupies roughly more than `20%` of the canvas without a clear visual purpose.
- On a high-density card, even plain paper whitespace becomes a problem when it leaves the final meaningful module far above the footer. Regroup content or add a distinct conclusion band instead of calling it breathing room.
- More than two body modules feel equally weighted.
- A large module contains fewer than two meaningful internal elements.
- A tinted or dark module contains a visibly empty lower half without an intentional visual anchor.
- Body copy must be reduced below the documented minimum size to fit.
- The title occupies more than about `40%` of the card height on a medium- or high-density card.

Revise in this order:

1. Change the skeleton or module spans.
2. Group or redistribute content.
3. Adjust spacing and type scale within the allowed ranges.
4. Shorten copy.
5. Split into multiple cards when one card cannot remain readable.

For high-density cards, prefer several content-driven modules over one or two stretched modules. A separate concluding band is often a better use of the final strip than leaving a large blank area or extending a panel background.
