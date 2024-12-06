```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px' }}}%%
graph TD
 classDef default fill:none,stroke:none,color:black,font-size:20px;
 classDef nontradable fill:#e6ffe6,stroke:none,color:black,font-size:20px;
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
 ntc[ntc: #ntcyValue#]:::nontradable
 nti[nti: #ntiyValue#]:::nontradable
 ntcg[ntcg: #ntcgyValue#]:::nontradable
 ntig[ntig: #ntigyValue#]:::nontradable
 htc[htc: #htcyValue#]
 htcg[htcg: #htcgyValue#]
 hti[hti: #htiyValue#]
 htig[htig: #htigyValue#]
 imc[imc]
 imi[imi]
 ysn["ysn=snt\*nt: #yntyValue#"]:::nontradable
 yst["yst=sh\*ht+sx\*ex: #yhtyValue#"]
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
 yst --> |alphat| kdt
 yst --> |1-alphat| ndt
 ysn --> |alphan| kdn
 ysn --> |1-alphan| ndn