```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  A["Demand, <b>Z = C + G + IG</b>"]:::floatStyle

  B[Tradable goods, <b>Z<sup>T</sup></b>]:::floatStyle
  C[Non-tradable goods, <b>Z<sup>NT</sup></b> ]:::floatStyle

  D["Domestically produced tradable goods, <b>Z<sup>T,D</sup></b>"]:::floatStyle
  E["Imported tradable goods, <b>M<sup>T</sup></b>"]:::floatStyle



  A -->|<span style="font-size:28px;">s<sup>T</sup></span>| B
  A -->|<span style="font-size:28px;">1-s<sup>T</sup></span>|C

  B -->|<span style="font-size:28px;">1-s<sub>m</sub></span>|D
  B -->|<span style="font-size:28px;">s<sub>m</sub></span>|E

