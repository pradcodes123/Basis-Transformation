OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[3];

// Hadamard on first 3 qubits (superposition for period finding)
h q[0];
h q[1];
h q[2];

// Modular exponentiation (simplified) - just a placeholder unitary
cx q[2], q[4];
cx q[1], q[3];

// Inverse QFT on first 3 qubits
h q[2];
cu1(-pi/2) q[1], q[2];
h q[1];
cu1(-pi/4) q[0], q[2];
cu1(-pi/2) q[0], q[1];
h q[0];

// Measurement
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
