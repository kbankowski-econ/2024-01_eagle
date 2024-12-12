```mermaid
%%{init: {'theme': 'White', 'themeVariables': { 'fontSize': '20px', 'edgeLabelBackground': '#e6e6e6' }}}%%
graph LR
 classDef default fill:none,stroke:none,color:black,font-size:20px;
classDef nontradable fill:#ccffcc,stroke:none,color:black,font-size:20px;  %% A slightly darker green
classDef imported fill:#fff2cc,stroke:none,color:black,font-size:20px;    %% A warm, slightly deeper yellow
classDef hometradable fill:#cce6ff,stroke:none,color:black,font-size:20px; %% A more vibrant blue
classDef exportable fill:#ffd6cc,stroke:none,color:black,font-size:20px;  %% A soft coral orange
 tby["Trade Balance"]
 demand["Demand"]
 qc[Private Consumption]
 qcg[Government Consumption]
 y[Production]
 nt[Total Nontradables]:::nontradable
 ntc[Private Consumption of Nontradables]:::nontradable
 ntcg[Government Consumption of Nontradables]:::nontradable
 ht[Total Domestic Tradables]:::hometradable
 htc[Private Consumption of Domestic Tradables]:::hometradable
 htcg[Government Consumption of Domestic Tradables]:::hometradable
 sh\*ht[sh\*ht: #htyValue#]:::hometradable
 im[Total Imported Tradables]:::imported
 imc[Private Consumption of Imported Tradables]:::imported
 imcg[Governmnet Consumption of Imported Tradables]:::imported
 ysn[Production of Nontradables]:::nontradable
 yst[Production of Tradables]
 sx\*ex["Exported Tradables"]:::exportable
 sh\*ht["Domestically Consumed Tradables"]

 subgraph " "
    nt
    ht
    im
 end

 tby --> demand
 tby --> y
 demand --> qc
 demand --> qcg
 qc --> htc
 qc --> imc
 qc -->  ntc
 qcg -->  imcg
 qcg --> htcg
 qcg --> ntcg
 y --> yst
 y --> ysn
 yst --> sh\*ht
 yst --> sx\*ex
 imc --> im
 imcg --> im
 htc --> ht
 htcg --> ht
 ntc --> nt
 ntcg --> nt
 ```