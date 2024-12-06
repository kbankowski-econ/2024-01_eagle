
```mermaid
    %%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
    graph TD
        classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';
        subgraph some-id[ ]
            A["Production, <b>O<sup>J</sup></b>, for J = {T, NT}"]:::floatStyle
            B[Value-added, <b>Y<sup>J</sup></b>]:::floatStyle
            C[Intermediate inputs, <b>INT<sup>J</sup></b> ]:::floatStyle
            D[Capital, <b>K<sup>J</sup></b>]:::floatStyle
            E[Labour, <b>L<sup>J</sup></b>]:::floatStyle
            F[Tradable intermediates, <b>INT<sup>T,J</sup></b>]:::floatStyle
            G[Non-tradable intermediates, <b>INT<sup>NT,J</sup></b>]:::floatStyle
            H[Domestic tradable intermediates, <b>INT<sup>T,D,J</sup></b>]:::floatStyle
            I[Imported tradable intermediates, <b>INT<sup>T,M,J</sup></b>]:::floatStyle
            
            A -->|<span style=font-size:28px;>1-s<sup>J</sup><sub>in</sub></span>| B
            A -->|<span style=font-size:28px;>s<sup>J</sup><sub>in</sub></span>| C
            B -->|<span style=font-size:28px;>1-&alpha;</span>| D
            B -->|<span style=font-size:28px;>&alpha;</span>| E
            C -->|<span style=font-size:28px;>s<sup>J</sup><sub>int</sub></span>| F
            C -->|<span style=font-size:28px;>1-s<sup>J</sup><sub>int</sub></span>| G
            F -->|<span style=font-size:28px;>1-s<sub>m</sub></span>| H
            F -->|<span style=font-size:28px;>s<sub>m</sub></span>| I
        end

        subgraph some-id[ ]
        direction TB
            J[Demand, <b>Z = C + G + IG</b>]:::floatStyle
            K[Tradable goods, <b>Z<sup>T</sup></b>]:::floatStyle
            L[Non-tradable goods, <b>Z<sup>NT</sup></b> ]:::floatStyle
            M[Domestically produced tradable goods, <b>Z<sup>T,D</sup></b>]:::floatStyle
            N[Imported tradable goods, <b>Z<sup>T, M</sup></b>]:::floatStyle
            
            J -->|<span style=font-size:28px;>s<sup>T</sup></span>| K
            J -->|<span style=font-size:28px;>1-s<sup>T</sup></span>| L
            K -->|<span style=font-size:28px;>1-s<sub>m</sub></span>| M
            K -->|<span style=font-size:28px;>s<sub>m</sub></span>| N
        end
        O["Total Imports, <b>M<sup>H</sup> = {Z<sup>T,M</sup>, I<sup>J,M</sup>, INT<sup>T,J,M</sup>}"]:::floatStyle
        N --> O 
        I --> O


