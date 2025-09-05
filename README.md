# Quantum Circuit Basis Obfuscation

This project implements a **quantum circuit obfuscation** technique using random basis transformations (via `U3` gates).  
It takes an input QASM circuit, applies obfuscation, executes both the original and obfuscated circuits,  
and compares their results using semantic accuracy, TVD (Total Variation Distance), and DFC (Degree of Functional Corruption).

## Features
- Parse **QASM 2.0** and **QASM 3.0** circuits.
- Automatically adds measurement registers if missing.
- Applies **random U3 basis transformations** for obfuscation.
- Executes circuits on **Qiskit AerSimulator**.
- Compares results between original and obfuscated circuits.
- Visualizes both circuits and result distributions using `matplotlib`.

## Requirements
Install dependencies from `requirements.txt`:
```bash
pip install -r requirements.txt
