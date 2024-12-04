```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  B[Final goods]:::floatStyle
  C[Final consumption goods, <b>Q<sup>c</sup></b>]:::floatStyle
  D[Final investment goods, <b>Q<sup>i</sup></b>]:::floatStyle

  F[Tradable intermediate consumption goods, <b>TT<sup>c</sup></b>]:::floatStyle
  G[Non-tradable intermediate consumption goods, <b>NT<sup>c</sup></b>]:::floatStyle

  H[Tradable intermediate investment goods, <b>TT<sup>i</sup></b>]:::floatStyle
  I[Non-tradable intermediate investment goods, <b>NT<sup>i</sup></b>]:::floatStyle

  J[Domestic tradable intermediate consumption goods, <b>HT<sup>c</sup></b>]:::floatStyle
  K[Imported tradable intermediate consumption goods, <b>IM<sup>c</sup></b>]:::floatStyle

  L[Domestic tradable intermediate investment goods, <b>HT<sup>i</sup></b>]:::floatStyle
  M[Imported tradable intermediate investment goods, <b>IM<sup>i</sup></b>]:::floatStyle

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
