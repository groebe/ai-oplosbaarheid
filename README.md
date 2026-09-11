# 💧 AI Oplosbaarheidstest (GATv2)

Dit project gebruikt een Graph Attention Network (GATv2) via PyTorch Geometric om de oplosbaarheid (LogS) van moleculen te voorspellen op basis van hun SMILES-structuur.

## Hardware & Stack
* **Hardware:** NVIDIA RTX 5060 Ti
* **Software:** Docker, PyTorch, PyTorch Geometric, RDKit

## Gebruik
Start de GPU-versnelde Jupyter omgeving via Docker:
`docker compose up --build`

Open vervolgens `ethanol-oplosbaarheidstest.ipynb` om razendsnel de oplosbaarheid van nieuwe moleculen te testen met het getrainde model.
