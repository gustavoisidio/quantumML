OPENQASM 2.0;
include "qelib1.inc";

qreg q1[3];
qreg aux[1];
qreg q2[3];
creg c[3];

h q1;
h aux;
h q2;

cx q1[2],q2[1];
cx q1[1],q2[2];
ccx q1[1],q1[2],q2[0];
ccx q1[1],q1[2],q2[1];
ccx q1[1],q1[2],q2[2];
cx q1[0],q2[1];
ccx q1[0],q1[1],q2[0];
ccx q1[0],q1[1],q2[1];
ccx q1[0],q1[1],q2[2];
ccx q1[0],q1[1],aux[0];
ccx q1[2],aux[0],q2[2];

measure q1 -> c;
measure q2 -> c;


