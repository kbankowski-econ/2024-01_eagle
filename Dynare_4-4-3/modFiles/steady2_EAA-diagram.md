```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: 0.0018"]
 demand["demand = (ntc+nti+g)+(htc+hti)+(imc+imi): 0.9981"]
 qc["qc: 0.5981"]
 g["g: 0.2000"]:::nontradable
 qi["qi: 0.2000"]
 y[y]
 ttc[ttc: 0.2444]
 tti[tti: 0.1456]
 nt[nt: 0.6081]:::nontradable
 ntc[ntc: 0.3538]:::nontradable
 nti[nti: 0.0544]:::nontradable
 ht[ht: 0.1524]:::hometradable
 htc[htc: 0.0434]:::hometradable
 hti[hti: 0.1090]:::hometradable
 sh\*ht[sh\*ht: 0.1524]:::hometradable
 im[im: 0.2376]:::imported
 imc[imc: 0.2010]:::imported
 imi[imi: 0.0366]:::imported
 ysn["ysn=snt\*nt: 0.6081"]:::nontradable
 sx\*ex["sx\*ex: 0.2394"]:::exportable

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
 qc --> |nuc: 0.4500| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: 0.2110| htc
 ttc --> |1-nutc| imc
 qi --> |nui: 0.7500| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.7539| hti
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