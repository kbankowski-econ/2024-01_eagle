```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: -0.0049"]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): 1.0049"]
 qc["qc: 0.5481"]
 qcg["qcg: 0.2000"]
 qi["qi: 0.2167"]
 qig["qig: 0.0400"]
 y[y]
 ttc[ttc: 0.2350]
 ttcg[ttcg: 0.1568]
 tti[tti: 0.1590]
 ttig[ttig: 0.0231]
 nt[nt: 0.4310]:::nontradable
 ntc[ntc: 0.3132]:::nontradable
 nti[nti: 0.0578]:::nontradable
 ntcg[ntcg: 0.0432]:::nontradable
 ntig[ntig: 0.0169]:::nontradable
 ht[ht: 0.1792]:::hometradable
 htc[htc: 0.0507]:::hometradable
 htcg[htcg: 0.0821]:::hometradable
 hti[hti: 0.0343]:::hometradable
 htig[htig: 0.0121]:::hometradable
 sh\*ht[sh\*ht: 0.1792]:::hometradable
 im[im: 0.3947]:::imported
 imc[imc: 0.1843]:::imported
 imcg[imcg: 0.0747]:::imported
 imi[imi: 0.1247]:::imported
 imig[imig: 0.0110]:::imported
 imig[imig: 0.0110]:::imported
 ysn["ysn=snt\*nt: 0.4310"]:::nontradable
 sx\*ex["sx\*ex: 0.3898"]:::exportable

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
 ttc --> |nutc: 0.2000| htc
 ttc --> |1-nutc| imc
 qcg --> |nucg: 0.8000| ttcg
 qcg --> |1-nucg| ntcg
 ttcg --> |nutcg: 0.5000| htcg
 ttcg --> |1-nutcg| imcg
 qi --> |nui: 0.7500| nti
 qi --> |1-nui| tti
 tti --> |nuti: 0.2000| hti
 tti --> |1-nuti| imi
 qig --> |nuig: 0.6000| ntig
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