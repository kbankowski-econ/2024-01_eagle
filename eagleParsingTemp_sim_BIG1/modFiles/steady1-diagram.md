```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px' }}}%%
graph TD
 classDef default fill:none,stroke:none,color:black,font-size:20px;
 classDef nontradable fill:#e6ffe6,stroke:none,color:black,font-size:20px;
 tby["tby: -0.0049"]
 demand["demand = (ntc+nti+ntcg+ntig)+(htc+hti+htcg+htig)+(imc+imi+imcg+imig): 1.0049"]
 qc["qc: 0.5481"]
 qcg["qcg: 0.2000"]
 qi["qi: 0.2167"]
 qig["qig: 0.0400"]
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
 ysn["ysn=snt\*nt: 0.4310"]:::nontradable
 yst["yst=sh\*ht+sx\*ex: 0.5690"]
 kdt[kdt]
 ndt[ndt]
 kdn[kdn]
 ndn[ndn]
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
 yst --> |alphat| kdt
 yst --> |1-alphat| ndt
 ysn --> |alphan| kdn
 ysn --> |1-alphan| ndn