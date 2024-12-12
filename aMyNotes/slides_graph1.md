```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Arial', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph LR
  classDef floatStyle fill:none,stroke:#FFB400,color:black,font-size:20px,font-family:'Arial';
  classDef importStyle fill:#FFB400, stroke:none, color:black,font-size:20px,font-family:'Arial';

  A[Consumption]:::floatStyle

  B[Imported final products]:::importStyle
  C[Domestic final products]:::floatStyle

  F[Tradable intermediates]:::floatStyle
  G[Non-tradable intermediates]:::floatStyle

  H[Domestic tradable intermediates]:::floatStyle
  I[Imported tradable intermediates]:::importStyle


  A --> B
  A --> C

  C --> F
  C --> G

  F --> H
  F --> I
