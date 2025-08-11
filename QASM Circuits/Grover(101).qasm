OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[3];

// Initialize superposition
h q[0];
h q[1];
h q[2];

// --- Grover iteration 1 ---
// Oracle for |101>
x q[1];
ccx q[0], q[1], q[2];
x q[1];

// Diffuser
h q[0];
h q[1];
h q[2];
x q[0];
x q[1];
x q[2];
ccx q[0], q[1], q[2];
x q[0];
x q[1];
x q[2];
h q[0];
h q[1];
h q[2];

// --- Grover iteration 2 ---
// Oracle for |101>
x q[1];
ccx q[0], q[1], q[2];
x q[1];

// Diffuser
h q[0];
h q[1];
h q[2];
x q[0];
x q[1];
x q[2];
ccx q[0], q[1], q[2];
x q[0];
x q[1];
x q[2];
h q[0];
h q[1];
h q[2];

// Measurement
measure q -> c;
