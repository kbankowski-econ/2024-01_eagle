```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: #tbyValue#"]
 demand["demand = (ntc+nti+g)+(htc+hti)+(imc+imi): #demandyValue#"]
 qc["qc: #cyValue#"]
 g["g: #gyValue#"]:::nontradable
 qi["qi: #iyValue#"]
 y[y]
 ttc[ttc: #ttcyValue#]
 tti[tti: #ttiyValue#]
 nt[nt: #ntyValue#]:::nontradable
 ntc[ntc: #ntcyValue#]:::nontradable
 nti[nti: #ntiyValue#]:::nontradable
 ht[ht: #htyValue#]:::hometradable
 htc[htc: #htcyValue#]:::hometradable
 hti[hti: #htiyValue#]:::hometradable
 sh\*ht[sh\*ht: #htyValue#]:::hometradable
 im[im: #imyValue#]:::imported
 imc[imc: #imcyValue#]:::imported
 imi[imi: #imiyValue#]:::imported
 ysn["ysn=snt\*nt: #yntyValue#"]:::nontradable
 sx\*ex["sx\*ex: #exyValue#"]:::exportable

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
 qc --> |nuc: #nucValue#| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: #nutcValue#| htc
 ttc --> |1-nutc| imc
 qi --> |nui: #nuiValue#| nti
 qi --> |1-nui| tti
 tti --> |nuti: #nutiValue#| hti
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