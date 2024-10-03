# Create a simulator object
set ns [new Simulator]

# Open the NAM trace file
set nf [open lab1.nam w]
$ns namtrace-all $nf

# Open the trace file
set tf [open lab1.tr w]
$ns trace-all $tf

# Define a finish procedure
proc finish {} {
    global ns nf tf
    $ns flush-trace
    close $nf
    close $tf
    exec nam lab1.nam &
    exit 0
}

# Create four nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

# Set colors for the nodes
$ns color 1 "red"
$ns color 2 "blue"

# Label the nodes
$n0 label "Source/udp0"
$n1 label "Source/udp1"
$n2 label "Router"
$n3 label "Destination/Null"

# Create duplex links between the nodes
$ns duplex-link $n0 $n2 200Mb 10ms DropTail
$ns duplex-link $n1 $n2 100Mb 5ms DropTail
$ns duplex-link $n2 $n3 1Mb 1000ms DropTail

# Set queue limits for the links
$ns queue-limit $n0 $n2 10
$ns queue-limit $n1 $n2 10

# Vary the queue size here:
$ns queue-limit $n0 $n2 20  ;# Try different values (e.g., 10, 50, 100)
$ns queue-limit $n1 $n2 20  ;# Try different values (e.g., 10, 50, 100)

# You can also vary the bandwidth by modifying these lines:
# $ns duplex-link $n0 $n2 200Mb 10ms DropTail
# $ns duplex-link $n1 $n2 100Mb 5ms DropTail
# $ns duplex-link $n2 $n3 1Mb 1000ms DropTail

# Example:
# $ns duplex-link $n0 $n2 100Mb 10ms DropTail
# $ns duplex-link $n1 $n2 50Mb 5ms DropTail

# Run the simulation
$ns run

# After the simulation, analyze the nam trace file (lab1.nam)
# and the trace file (lab1.tr) to observe the number of
# packets dropped under different queue sizes and bandwidths.
