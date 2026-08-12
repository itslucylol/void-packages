#!/bin/bash
source .env

cd applications/$1
$ENGINE build -t lvp-$1:latest .