```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:24px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:24px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:24px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:24px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:24px;  %% A soft coral orange
 tby["tby: #tbyValue#"]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): #demandyValue#"]
 qc["qc: #cyValue#"]
 qcg["qcg: #cgyValue#"]
 qi["qi: #iyValue#"]
 qig["qig: #igyValue#"]
 y[y]
 ttc[ttc: #ttcyValue#]
 ttcg[ttcg: #ttcgyValue#]
 tti[tti: #ttiyValue#]
 ttig[ttig: #ttigyValue#]
 nt[nt: #ntyValue#]:::nontradable
 ntc[ntc: #ntcyValue#]:::nontradable
 nti[nti: #ntiyValue#]:::nontradable
 ntcg[ntcg: #ntcgyValue#]:::nontradable
 ntig[ntig: #ntigyValue#]:::nontradable
 ht[ht: #htyValue#]:::hometradable
 htc[htc: #htcyValue#]:::hometradable
 htcg[htcg: #htcgyValue#]:::hometradable
 hti[hti: #htiyValue#]:::hometradable
 htig[htig: #htigyValue#]:::hometradable
 sh\*ht[sh\*ht: #htyValue#]:::hometradable
 im[im: #imyValue#]:::imported
 imc[imc: #imcyValue#]:::imported
 imcg[imcg: #imcgyValue#]:::imported
 imi[imi: #imiyValue#]:::imported
 imig[imig: #imigyValue#]:::imported
 imig[imig: #imigyValue#]:::imported
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
 demand --> qcg
 demand --> qi
 demand --> qig
 qc --> |nuc: #nucValue#| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc: #nutcValue#| htc
 ttc --> |1-nutc| imc
 qcg --> |nucg: #nucgValue#| ttcg
 qcg --> |1-nucg| ntcg
 ttcg --> |nutcg: #nutcgValue#| htcg
 ttcg --> |1-nutcg| imcg
 qi --> |nui: #nuiValue#| nti
 qi --> |1-nui| tti
 tti --> |nuti: #nutiValue#| hti
 tti --> |1-nuti| imi
 qig --> |nuig: #nuigValue#| ntig
 qig --> |1-nuig| ttig
 ttig --> |nutig: #nutigValue#| htig
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