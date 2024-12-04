```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  E[Intermediate goods]:::floatStyle

  N[Tradable intermediate goods, <b>Y<sub>T</sub></b>]:::floatStyle
  O[Non-tradable intermediate goods, <b>Y<sub>N</sub></b>]:::floatStyle

  P["Capital, <b>K(h)</b>"]:::floatStyle
  Q["Labour, <b>N(h)</b>"]:::floatStyle

  R["Capital, <b>K(n)</b>"]:::floatStyle
  S["Labour, <b>N(n)</b>"]:::floatStyle

  E --> N
  E --> O
  N --> |<span style="font-size:28px;">&alpha;<sub>T</sub></span>| P 
  N --> |<span style="font-size:28px;">1-&alpha;<sub>T</sub></span>| Q
  O --> |<span style="font-size:28px;">&alpha;<sub>N</sub></span>| R
  O --> |<span style="font-size:28px;">1-&alpha;<sub>N</sub></span>| S