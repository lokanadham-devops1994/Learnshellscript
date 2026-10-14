#!/bin/bash
START_TIME=$(date +%s)
echo "Script started at: $START_TIME"
sleep 20
END_TIME=$(date +%s)
echo "Script ended at: $END_TIME"
ELAPSED_TIME=$((END_TIME - START_TIME))
echo "Elapsed time: $ELAPSED_TIME seconds"