#!/bin/bash
source .env

cd applications/$1
$ENGINE build -t lvp-build:latest .