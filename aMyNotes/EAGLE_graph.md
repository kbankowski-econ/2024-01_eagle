```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontSize': '20px' }}}%%
graph TD
    classDef default fill:none,stroke:none,color:black,font-size:20px;
    
    A[Output]
    B[Final goods]
    qc[qc]
    qi[qi]
    y[y]
    ttc[ttc]
    ntc[ntc]
    tti[tti]
    nti[nti]
    htc[htc]
    imc[imc]
    hti[hti]
    imi[imi]
    yst[yst=sh\*ht+sx\*ex]
    ysn[ysn=nt+snt]
    kdt[kdt]
    ndt[ndt]
    kdn[kdn]
    ndn[ndn]
    
    A --> B
    A --> y
    B --> qc
    B --> qi
    qc --> |nuc| ttc
    qc --> |1-nuc| ntc
    ttc --> |nutc| htc
    ttc --> |1-nutc| imc
    qi --> |nui| nti
    qi --> |1-nui| tti
    tti --> |nuti| hti
    tti --> |1-nuti| imi
    y --> yst
    y --> ysn
    yst --> |αT| kdt
    yst --> |1-αT| ndt
    ysn --> |αN| kdn
    ysn --> |1-αN| ndn