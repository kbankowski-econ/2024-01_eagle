```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  A[Output]:::floatStyle

  B[Final goods]:::floatStyle
  C[<b>Q<sup>c</sup></b>]:::floatStyle
  D[<b>Q<sup>i</sup></b>]:::floatStyle

  E[Intermediate goods]:::floatStyle

  F[<b>TT<sup>c</sup></b>]:::floatStyle
  G[<b>NT<sup>c</sup></b>]:::floatStyle

  H[<b>TT<sup>i</sup></b>]:::floatStyle
  I[<b>NT<sup>i</sup></b>]:::floatStyle

  J[<b>HT<sup>c</sup></b>]:::floatStyle
  K[<b>IM<sup>c</sup></b>]:::floatStyle

  L[<b>HT<sup>i</sup></b>]:::floatStyle
  M[<b>IM<sup>i</sup></b>]:::floatStyle

  N[<b>Y<sub>T</sub></b>]:::floatStyle
  O[<b>Y<sub>N</sub></b>]:::floatStyle

  P["<b>K(h)</b>"]:::floatStyle
  Q["<b>N(h)</b>"]:::floatStyle

  R["<b>K(n)</b>"]:::floatStyle
  S["<b>N(n)</b>"]:::floatStyle

  A --> B
  A --> E
  B --> C
  B --> D
  C --> |<span style="font-size:28px;">&nu;<sub>C</sub></span>| F
  C --> |<span style="font-size:28px;">1-&nu;<sub>C</sub></span>| G
  D --> |<span style="font-size:28px;">&nu;<sub>I</sub></span>| H
  D --> |<span style="font-size:28px;">1-&nu;<sub>I</sub></span>| I
  F --> |<span style="font-size:28px;">&nu;<sub>TC</sub></span>| J
  F --> |<span style="font-size:28px;">1-&nu;<sub>TC</sub></span>| K
  H --> |<span style="font-size:28px;">&nu;<sub>TI</sub></span>| L
  H --> |<span style="font-size:28px;">1-&nu;<sub>TI</sub></span>| M
  E --> N
  E --> O
  N --> |<span style="font-size:28px;">&alpha;<sub>T</sub></span>| P 
  N --> |<span style="font-size:28px;">1-&alpha;<sub>T</sub></span>| Q
  O --> |<span style="font-size:28px;">&alpha;<sub>N</sub></span>| R
  O --> |<span style="font-size:28px;">1-&alpha;<sub>N</sub></span>| S