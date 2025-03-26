#! /bin/bash

# shell script to export svg images out of pdf from Miro

if [ -f ~/Downloads/Separation\ of\ Compute\ and\ Storage.pdf ]; then
    echo "Moving PDF to current directory"
    mv ~/Downloads/Separation\ of\ Compute\ and\ Storage.pdf .
else
    echo "PDF does not exist"
fi

if [ -f Separation\ of\ Compute\ and\ Storage.pdf ]; then
    pdf2svg "Separation of Compute and Storage.pdf" simple-separated-compute-storage-architecture.svg 1
    pdf2svg "Separation of Compute and Storage.pdf" kafka-single-broker.svg 2
    pdf2svg "Separation of Compute and Storage.pdf" kafka-broker-crash.svg 3
    pdf2svg "Separation of Compute and Storage.pdf" kafka-replication-across-az.svg 4
    pdf2svg "Separation of Compute and Storage.pdf" kafka-replication-costs.svg 5
    pdf2svg "Separation of Compute and Storage.pdf" kafka-high-traffic.svg 6
    pdf2svg "Separation of Compute and Storage.pdf" kafka-low-traffic.svg 7
    pdf2svg "Separation of Compute and Storage.pdf" kafka-noisy-neighbor.svg 8
    pdf2svg "Separation of Compute and Storage.pdf" kafka-noisy-neighbor-new-replica.svg 9
    pdf2svg "Separation of Compute and Storage.pdf" shared-nothing-architecture.svg 10
    pdf2svg "Separation of Compute and Storage.pdf" shared-metadata-architecture.svg 11
    pdf2svg "Separation of Compute and Storage.pdf" catalog-architecture.svg 12
    pdf2svg "Separation of Compute and Storage.pdf" storage-architectures.svg 13
else 
    echo "PDF does not exist"
fi