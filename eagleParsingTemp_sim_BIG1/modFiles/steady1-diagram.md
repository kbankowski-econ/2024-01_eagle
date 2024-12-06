```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px' }}}%%
graph TD
 classDef default fill:none,stroke:none,color:black,font-size:20px;
 classDef nontradable fill:#e6ffe6,stroke:none,color:black,font-size:20px;
 A[Trade balance]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): 1.00"]
 qc["qc: 0.55"]
 qcg["qcg: 0.20"]
 qi["qi: 0.22"]
 qig["qig: 0.04"]
 y[y]
 ttc[ttc]
 ntc[ntc]:::nontradable
 tti[tti]
 nti[nti]:::nontradable
 ntcg[ntcg]:::nontradable
 ntig[ntig]:::nontradable
 htc[htc]
 imc[imc]
 hti[hti]
 imi[imi]
 ysn["ysn=nt+snt: 0.43"]:::nontradable
 yst["yst=sh\*ht+sx\*ex: 0.57"]
 kdt[kdt]
 ndt[ndt]
 kdn[kdn]
 ndn[ndn]
 A --> demand
 A --> y
 demand --> qc
 demand --> qcg
 demand --> qi
 demand --> qig
 qc --> |nuc| ttc
 qc --> |1-nuc| ntc
 ttc --> |nutc| htc
 ttc --> |1-nutc| imc
 qcg --> |nucg| ttcg
 qcg --> |1-nucg| ntcg
 ttcg --> |nutc| htcg
 ttcg --> |1-nutc| imcg
 qi --> |nui| nti
 qi --> |1-nui| tti
 tti --> |nuti| hti
 tti --> |1-nuti| imi
 qig --> |nui| ntig
 qig --> |1-nui| ttig
 ttig --> |nuti| htig
 ttig --> |1-nuti| imig
 y --> yst
 y --> ysn
 yst --> |alphat| kdt
 yst --> |1-alphat| ndt
 ysn --> |alphan| kdn
 ysn --> |1-alphan| ndn