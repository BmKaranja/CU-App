---
name: Modern Spiritual Community
colors:
  surface: '#10141a'
  surface-dim: '#10141a'
  surface-bright: '#353940'
  surface-container-lowest: '#0a0e14'
  surface-container-low: '#181c22'
  surface-container: '#1c2026'
  surface-container-high: '#262a31'
  surface-container-highest: '#31353c'
  on-surface: '#dfe2eb'
  on-surface-variant: '#d0c5af'
  inverse-surface: '#dfe2eb'
  inverse-on-surface: '#2d3137'
  outline: '#99907c'
  outline-variant: '#4d4635'
  surface-tint: '#e9c349'
  primary: '#f2ca50'
  on-primary: '#3c2f00'
  primary-container: '#d4af37'
  on-primary-container: '#554300'
  inverse-primary: '#735c00'
  secondary: '#89d0ed'
  on-secondary: '#003544'
  secondary-container: '#00627b'
  on-secondary-container: '#94dbf8'
  tertiary: '#c3ceea'
  on-tertiary: '#263046'
  tertiary-container: '#a8b3ce'
  on-tertiary-container: '#3a455c'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffe088'
  primary-fixed-dim: '#e9c349'
  on-primary-fixed: '#241a00'
  on-primary-fixed-variant: '#574500'
  secondary-fixed: '#baeaff'
  secondary-fixed-dim: '#89d0ed'
  on-secondary-fixed: '#001f29'
  on-secondary-fixed-variant: '#004d62'
  tertiary-fixed: '#d7e2ff'
  tertiary-fixed-dim: '#bbc6e2'
  on-tertiary-fixed: '#101b30'
  on-tertiary-fixed-variant: '#3c475d'
  background: '#10141a'
  on-background: '#dfe2eb'
  surface-variant: '#31353c'
typography:
  h1:
    fontFamily: Noto Serif
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.2'
  h2:
    fontFamily: Noto Serif
    fontSize: 36px
    fontWeight: '600'
    lineHeight: '1.3'
  h3:
    fontFamily: Noto Serif
    fontSize: 28px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: 0.05em
  label-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1.2'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 24px
  margin: 32px
---

## Brand & Style

The design system is crafted to bridge the gap between academic rigor and spiritual warmth. It targets a university demographic that seeks both structure and belonging. The aesthetic direction is a fusion of **Minimalism** and **Glassmorphism**, creating a digital environment that feels sacred, modern, and intentional. 

By utilizing deep, receding backgrounds contrasted with luminous accents, the UI evokes a "light in the darkness" metaphor. The interface remains highly structured to reflect the organized nature of a university body, while soft translucency and radiant glows ensure the community feels accessible and welcoming rather than institutional or rigid.

## Colors

This design system utilizes a sophisticated dark-mode palette designed for long-form reading and evening reflection. 

- **Primary (Gold):** Represents spiritual value and excellence. Used for primary actions, active states, and high-importance highlights.
- **Secondary (Light Blue):** Evokes peace and community. Used for informational accents, secondary buttons, and decorative elements.
- **Neutral (Deep Navy & Charcoal):** The foundation. `#0D1117` serves as the base canvas, while `#1B263B` is used for containers and elevated surfaces to create a sense of organized depth.
- **Accents:** High-vibrancy tints of the primary and secondary colors are used sparingly for success states or "spiritual highlights" within the glass effect layers.

## Typography

The typography strategy balances authority with approachability. 

**Noto Serif** is reserved for headlines to provide a traditional, authoritative, and literary feel, grounding the community in its scriptural and academic roots. 

**Plus Jakarta Sans** handles all functional and body text. Its soft, rounded terminals counteract the seriousness of the serif, making the content feel friendly and optimistic. Use `label-md` with uppercase styling for category headers and navigation items to maintain a structured, organized hierarchy.

## Layout & Spacing

The design system employs a **Fixed Grid** model for desktop (1200px max-width) and a **Fluid Grid** for mobile devices. The rhythm is based on an 8px square grid to ensure consistent alignment.

Layouts should prioritize generous white space (or "dark space") to allow content to breathe, facilitating a meditative user experience. Margins are intentionally wide (32px+) on larger screens to center the user’s focus. Elements should be grouped into clear, logical sections using the `lg` (48px) spacing unit to separate distinct content blocks like "Upcoming Services" and "Ministry Updates."

## Elevation & Depth

Depth in this design system is achieved through **Tonal Layering** combined with subtle **Glassmorphism**. 

Instead of traditional heavy shadows, use background color shifts to indicate elevation. The base level is the darkest Navy. Surfaces that sit above the base (like cards or modals) use the Charcoal tint with a 1px border of low-opacity Light Blue to define edges. 

For high-priority community elements, use a "Frosted Glass" effect: 
- Background blur: 12px to 20px.
- Fill: A semi-transparent mix of Navy and Secondary Blue (e.g., 40% opacity).
- Shadow: A very soft, diffused Gold or Blue outer glow (5% opacity) to simulate a spiritual radiance rather than a physical shadow.

## Shapes

The shape language is defined by **Rounded** corners, specifically the `2` setting (0.5rem base). This choice avoids the clinical feel of sharp corners and the overly casual nature of pill shapes. 

Larger containers like Cards should use `rounded-xl` (1.5rem) to feel like "enveloping" community spaces. Small interactive elements like checkboxes or input fields should stick to the base `0.5rem` for a crisp, organized appearance. This consistency in rounding helps the UI feel "welcoming and structured."

## Components

- **Buttons:** Primary buttons use a solid Gold fill with dark Navy text for maximum contrast. Secondary buttons use a Light Blue outline with high-transparency fills.
- **Cards:** Use Charcoal backgrounds with `rounded-xl` corners. Include a subtle 1px top-border in Gold for "Featured" content like Sunday sermons.
- **Chips:** For ministry tags (e.g., "Worship," "Intercession"), use the Secondary Blue with 10% opacity and a solid border.
- **Input Fields:** Maintain a Charcoal background with a 1px Navy border. On focus, the border transitions to Gold with a very soft outer glow.
- **Lists:** Use clean dividers with 10% opacity Light Blue. Use Serif typography for list headers and Sans-serif for supporting details.
- **Community Progress Bars:** For fundraising or event sign-ups, use a gradient from Secondary Blue to Gold to symbolize growth and completion.