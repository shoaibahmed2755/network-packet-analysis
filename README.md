# network-packet-analysis
Aim:
Implement a three-node point-to-point network with duplex links between them. Set the queue size, vary the bandwidth, and find the number of packets dropped.
This code consists of an AWK file (labl.awk) and instructions for using it with a TCL script (labl.tcl) and a simulation program (ns). The AWK script processes the output of the simulation, counting the number of dropped packets.


# Network Packet Analysis (or Your Project Title)

## Description

A brief, clear explanation of what your project does. For example:

This project uses a combination of Tcl and AWK to simulate network traffic and analyze packet drops.  The Tcl script (lab1.tcl) generates the simulated data, and the AWK script (labl.awk) processes the output to calculate and display the number of packets dropped.

## Usage

1. **Installation:** Are there any dependencies or specific software versions required to run your code?
2. **Running the Code:** Provide clear, step-by-step instructions on how to execute your scripts.
   ```bash
   [root@localhost ~]# vi lab1.tcl 
   # Save (ESC followed by :wq)
   [root@localhost ~]# vi labl.awk
   # Save (ESC followed by :wq)
   [root@localhost~]# ns labl.tcl
   [root@localhost~]# awk -f labl.awk labl.tr
