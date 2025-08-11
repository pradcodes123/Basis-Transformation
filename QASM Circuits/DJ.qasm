OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[2];

// Initialize ancilla
x q[2];
h q[2];

// Hadamard on input qubits
h q[0];
h q[1];

// Oracle (balanced example)
cx q[0], q[2];
cx q[1], q[2];

// Hadamard again on input qubits
h q[0];
h q[1];

// Measurement
measure q[0] -> c[0];
measure q[1] -> c[1];