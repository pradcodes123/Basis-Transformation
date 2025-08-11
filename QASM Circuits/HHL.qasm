OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

// Prepare |b> = |1> on q[0] (system qubit)
x q[0];

// Phase estimation (1 qubit, q[1])
h q[1];
// Controlled unitary simulating e^{iAt} with eigenvalue pi/2 on q[0]
cu1(pi/2) q[1], q[0];

// Inverse QFT on q[1] (just Hadamard since 1 qubit)
h q[1];

// Controlled rotation on ancilla q[2], conditioned on q[1]
// Rotation angle ~ arcsin(C / eigenvalue), use pi/4 as demo
crz(pi/4) q[1], q[2];

// Uncompute phase estimation
h q[1];
cu1(-pi/2) q[1], q[0];

// Measure system qubit q[0] (solution)
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
