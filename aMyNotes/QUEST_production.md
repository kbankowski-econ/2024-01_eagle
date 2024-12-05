```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  A["Production, <b>O<sup>J</sup></b>, for J = {T, NT}"]:::floatStyle

  B[Value-added, <b>Y<sup>J</sup></b>]:::floatStyle
  C[Intermediate inputs, <b>INT<sup>J</sup></b> ]:::floatStyle

  D["Capital, <b>K<sup>J</sup></b>"]:::floatStyle
  E["Labour, <b>L<sup>J</sup></b>"]:::floatStyle

  F[Tradable intermediates, <b>INT<sup>T,J</sup></b>]:::floatStyle
  G[Non-tradable intermediates, <b>INT<sup>NT,J</sup></b>]:::floatStyle

  H[Domestic tradable intermediates, <b>INT<sup>T,D,J</sup></b>]:::floatStyle
  I[Imported tradable intermediates, <b>M<sup>T,J</sup></b>]:::floatStyle


  A -->|<span style="font-size:28px;">1-s<sup>J</sup><sub>in</sub></span>| B
  A -->|<span style="font-size:28px;">s<sup>J</sup><sub>in</sub></span>|C

  B -->|<span style="font-size:28px;">1-&alpha;</span>|D
  B -->|<span style="font-size:28px;">&alpha;</span>|E

  C --> |<span style="font-size:28px;">s<sup>J</sup><sub>int</sub></span>| F
  C --> |<span style="font-size:28px;">1-s;<sup>J</sup><sub>int</sub></span>| G

  F --> |<span style="font-size:28px;">1-s<sub>m</sub></span>| H
  F --> |<span style="font-size:28px;">s<sub>m</sub></span>| I
