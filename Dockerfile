# 1. Een recente NVIDIA NGC Container (Eind 2024). 
# Bevat PyTorch 2.5+ en de drivers voor de RTX 50-serie (sm_120).
FROM nvcr.io/nvidia/pytorch:24.11-py3

ENV DEBIAN_FRONTEND=noninteractive

# 2. We installeren de tools, maar we PINNEN PyTorch Geometric op 2.5.3.
# Dit voorkomt de AttributeError die je zojuist kreeg met de 2.6+ versie.
RUN pip install --no-cache-dir \
    torch_geometric==2.5.3 \
    rdkit \
    pandas \
    matplotlib \
    scikit-learn \
    tqdm

WORKDIR /app

# 3. Start Jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
