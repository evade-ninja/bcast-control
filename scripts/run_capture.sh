#!/bin/bash
sleep 60
while true; do
	/opt/bcast-control/python/obs-capture.py 1
	sleep 3
done