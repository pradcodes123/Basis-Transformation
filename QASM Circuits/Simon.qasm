OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];   // 2 input qubits + 2 output qubits
creg c[2];   // measurement on input qubits

// Initialize input register to superposition
h q[0];
h q[1];

// Oracle for secret string s=10
// f(x) = f(x ⊕ s), implemented as:
// Output qubits encode function value with XOR pattern
cx q[0], q[2];
cx q[1], q[3];
cx q[1], q[2];

// Apply Hadamard on input qubits again
h q[0];
h q[1];

// Measure input qubits
measure q[0] -> c[0];
measure q[1] -> c[1];
