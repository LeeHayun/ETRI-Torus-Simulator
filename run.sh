#!/bin/bash

mpicc -o proto proto.c -lROSS -lm -lcodes
./proto --sync=1 torus.conf
