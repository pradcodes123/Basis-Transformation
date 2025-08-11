OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

// Initialize ancilla
x q[3];
h q[3];

// Hadamard on input qubits
h q[0];
h q[1];
h q[2];
h q[3];

// Oracle for secret string 1011 (flip bits where secret=1)
cx q[0], q[3];
cx q[2], q[3];

// Hadamard again on input qubits
h q[0];
h q[1];
h q[2];

// Measurement
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
