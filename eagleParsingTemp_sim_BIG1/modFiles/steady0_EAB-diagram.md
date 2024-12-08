```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: 0.0000"]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): 0.9999"]
 qc["qc: 0.9914"]
 qcg["qcg: 0.0010"]
 qi["qi: 0.0065"]
 qig["qig: 0.0010"]
 y[y]
 ttc[ttc: 0.4958]
 ttcg[ttcg: 0.0005]
 tti[tti: 0.0032]
 ttig[ttig: 0.0005]
 nt[nt: 0.5000]:::nontradable
 ntc[ntc: 0.4958]:::nontradable
 nti[nti: 0.0032]:::nontradable
 ntcg[ntcg: 0.0005]:::nontradable
 ntig[ntig: 0.0005]:::nontradable
 ht[ht: 0.2500]:::hometradable
 htc[htc: 0.2479]:::hometradable
 htcg[htcg: 0.0002]:::hometradable
 hti[hti: 0.0016]:::hometradable
 htig[htig: 0.0002]:::hometradable
 sh\*ht[sh\*ht: 0.2500]:::hometradable
 im[im: 0.2500]:::imported
 imc[imc: 0.2479]:::imported
 imcg[imcg: 0.0002]:::imported
 imi[imi: 0.0016]:::imported
 imig[imig: 0.0002]:::imported
 imig[imig: 0.0002]:::imported
 ysn["ysn=snt\*nt: 0.5000"]:::nontradable
 sx\*ex["sx\*ex: 0.2500"]:::exportable

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
 qc --> |nuc: 0.5000| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: 0.5000| htc
 ttc --> |1-nutc| imc
 qcg --> |nucg: 0.5000| ttcg
 qcg --> |1-nucg| ntcg
 ttcg --> |nutcg: 0.5000| htcg
 ttcg --> |1-nutcg| imcg
 qi --> |nui: 0.5000| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.5000| hti
 tti --> |1-nuti| imi
 qig --> |nuig: 0.5000| ntig
 qig --> |1-nuig| ttig
 ttig --> |nutig: 0.5000| htig
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