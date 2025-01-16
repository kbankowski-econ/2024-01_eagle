```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: 0.0018"]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): 0.9981"]
 qc["qc: 0.5581"]
 qcg["qcg: 0.2000"]
 qi["qi: 0.2000"]
 qig["qig: 0.0400"]
 y[y]
 ttc[ttc: 0.2233]
 ttcg[ttcg: 0.1556]
 tti[tti: 0.1436]
 ttig[ttig: 0.0311]
 nt[nt: 0.4446]:::nontradable
 ntc[ntc: 0.3349]:::nontradable
 nti[nti: 0.0564]:::nontradable
 ntcg[ntcg: 0.0444]:::nontradable
 ntig[ntig: 0.0089]:::nontradable
 ht[ht: 0.2255]:::hometradable
 htc[htc: 0.0217]:::hometradable
 htcg[htcg: 0.1209]:::hometradable
 hti[hti: 0.0610]:::hometradable
 htig[htig: 0.0219]:::hometradable
 sh\*ht[sh\*ht: 0.2255]:::hometradable
 im[im: 0.3280]:::imported
 imc[imc: 0.2016]:::imported
 imcg[imcg: 0.0347]:::imported
 imi[imi: 0.0826]:::imported
 imig[imig: 0.0092]:::imported
 imig[imig: 0.0092]:::imported
 ysn["ysn=snt\*nt: 0.4446"]:::nontradable
 sx\*ex["sx\*ex: 0.3298"]:::exportable

 subgraph subTotals
    nt
    ht
    im
 end

 tby --> demand
 tby --> y
 demand --> qc
 demand --> qcg
 demand --> qi
 demand --> qig
 qc --> |nuc: 0.4500| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: 0.1286| htc
 ttc --> |1-nutc| imc
 qcg --> |nucg: 0.8000| ttcg
 qcg --> |1-nucg| ntcg
 ttcg --> |nutcg: 0.8266| htcg
 ttcg --> |1-nutcg| imcg
 qi --> |nui: 0.7500| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.4986| hti
 tti --> |1-nuti| imi
 qig --> |nuig: 0.8000| ntig
 qig --> |1-nuig| ttig
 ttig --> |nutig: 0.7627| htig
 ttig --> |1-nutig| imig
 y --> yst
 y --> ysn
 yst --> sh\*ht
 yst --> sx\*ex
 imc --> im
 imcg --> im
 imi --> im
 imig --> im
 htc --> ht
 htcg --> ht
 hti --> ht
 htig --> ht
 ntc --> nt
 ntcg --> nt
 nti --> nt
 ntig --> nt 
 ```