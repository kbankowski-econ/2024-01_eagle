```mermaid
%%{init: {themeVariables: {primaryColor: 'transparent', edgeLabelBackground: 'white', fontFamily: 'Times New Roman', nodeBorder: 'transparent', background: 'transparent'}}}%%
graph TD
  classDef floatStyle fill:none,stroke:none,color:black,font-size:28px,font-family:'Times New Roman';

  A[Output]:::floatStyle

  B[Final goods]:::floatStyle
  qc[<b>qc</b>]:::floatStyle
  qi[<b>qi</b>]:::floatStyle

  y[y]:::floatStyle

  ttc[<b>ttc</b>]:::floatStyle
  ntc[<b>ntc</b>]:::floatStyle

  tti[<b>tti</b>]:::floatStyle
  nti[<b>nti</b>]:::floatStyle

  htc[<b>htc</b>]:::floatStyle
  imc[<b>imc</b>]:::floatStyle

  hti[<b>hti</b>]:::floatStyle
  imi[<b>imi</b>]:::floatStyle

  yst[<b>yst=sh\*ht+sx\*ex</b>]:::floatStyle
  ysn[<b>ysn=nt+snt</b>]:::floatStyle

  kdt["<b>kdt</b>"]:::floatStyle
  ndt["<b>ndt</b>"]:::floatStyle

  kdn["<b>kdn</b>"]:::floatStyle
  ndn["<b>ndn</b>"]:::floatStyle

  A --> B
  A --> y
  B --> qc
  B --> qi
  qc --> |<span style="font-size:28px;">&nu;<sub>qc</sub></span>| ttc
  qc --> |<span style="font-size:28px;">1-&nu;<sub>qc</sub></span>| ntc
  qi --> |<span style="font-size:28px;">&nu;<sub>I</sub></span>| nti
  qi --> |<span style="font-size:28px;">1-&nu;<sub>I</sub></span>| tti
  ttc --> |<span style="font-size:28px;">&nu;<sub>TC</sub></span>| htc
  ttc --> |<span style="font-size:28px;">1-&nu;<sub>TC</sub></span>| imc
  nti --> |<span style="font-size:28px;">&nu;<sub>TI</sub></span>| hti
  nti --> |<span style="font-size:28px;">1-&nu;<sub>TI</sub></span>| imi
  y --> yst
  y --> ysn
  yst --> |<span style="font-size:28px;">&alpha;<sub>T</sub></span>| kdt 
  yst --> |<span style="font-size:28px;">1-&alpha;<sub>T</sub></span>| ndt
  ysn --> |<span style="font-size:28px;">&alpha;<sub>N</sub></span>| kdn
  ysn --> |<span style="font-size:28px;">1-&alpha;<sub>N</sub></span>| ndn