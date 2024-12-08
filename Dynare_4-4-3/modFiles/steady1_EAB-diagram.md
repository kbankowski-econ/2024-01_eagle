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
 qc["qc: 0.5937"]
 g["g: 0.2000"]:::nontradable
 qi["qi: 0.2112"]
 y[y]
 ttc[ttc: 0.2554]
 tti[tti: 0.1551]
 nt[nt: 0.5944]:::nontradable
 ntc[ntc: 0.3383]:::nontradable
 nti[nti: 0.0560]:::nontradable
 ht[ht: 0.0901]:::hometradable
 htc[htc: 0.0561]:::hometradable
 hti[hti: 0.0341]:::hometradable
 sh\*ht[sh\*ht: 0.0901]:::hometradable
 im[im: 0.3204]:::imported
 imc[imc: 0.1993]:::imported
 imi[imi: 0.1211]:::imported
 ysn["ysn=snt\*nt: 0.5944"]:::nontradable
 sx\*ex["sx\*ex: 0.3155"]:::exportable

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
 ttc --> |nutc: 0.2000| htc
 ttc --> |1-nutc| imc
 qi --> |nui: 0.7500| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.2000| hti
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