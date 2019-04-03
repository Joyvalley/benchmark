#!/bin/bash

# first test for the input files
if [ ! -e forward.fq ]
then
    echo "Missing forward reads. Please add a file called forward.fq"
    exit 1;
fi

if [ ! -e reverse.fq ]
then
    echo "Missing reverse reads. Please add a file called reverse.fq"
    exit 1;
fi

# Run the correct assembler based on the environment variable
if [ -n "$CHLOROEXTRACTORVERSION" ]
then
    echo "Running chloroExtractor"
fi

if [ -n "$GETORGANELLEVERSION" ]
then
    echo "Running GetOrgranelle"
fi

if [ -n "$IOGAVERSION" ]
then
    echo "Running IOGA"
fi

if [ -n "$NOVOPLASTYVERSION" ]
then
    echo "Running NOVOPlasty"
fi

if [ -n "$CHLOROPLASTASSEMBLYPROTOCOL" ]
then
    echo "Running chloroplast-assembly-protocol"
fi

if [ -n "$FASTPLASTVERSION" ]
then
    echo "Running fast-plast"
fi

if [ -n "$ORGASMVERSION" ]
then
    echo "Running ORG-asm"
fi