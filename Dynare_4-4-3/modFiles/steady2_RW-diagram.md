```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: -0.0049"]
 demand["demand = (ntc+nti+g)+(htc+hti)+(imc+imi): 1.0049"]
 qc["qc: 0.6449"]
 g["g: 0.1600"]:::nontradable
 qi["qi: 0.2000"]
 y[y]
 ttc[ttc: 0.2245]
 tti[tti: 0.1496]
 nt[nt: 0.6308]:::nontradable
 ntc[ntc: 0.4205]:::nontradable
 nti[nti: 0.0504]:::nontradable
 ht[ht: 0.2251]:::hometradable
 htc[htc: 0.1385]:::hometradable
 hti[hti: 0.0866]:::hometradable
 sh\*ht[sh\*ht: 0.2251]:::hometradable
 im[im: 0.1490]:::imported
 imc[imc: 0.0860]:::imported
 imi[imi: 0.0630]:::imported
 ysn["ysn=snt\*nt: 0.6308"]:::nontradable
 sx\*ex["sx\*ex: 0.1441"]:::exportable

 subgraph subTotals
    nt
    ht
    im
 end

 tby --> demand
 tby --> y
 demand --> qc
 demand --> qi
 demand --> g
 qc --> |nuc: 0.3500| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: 0.5759| htc
 ttc --> |1-nutc| imc
 qi --> |nui: 0.7500| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.5426| hti
 tti --> |1-nuti| imi
 g --> nt
 y --> yst
 y --> ysn
 yst --> sh\*ht
 yst --> sx\*ex
 imc --> im
 imi --> im
 htc --> ht
 hti --> ht
 ntc --> nt
 nti --> nt
 ```