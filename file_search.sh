#!/bin/bash
find /var -type f -size +100M -exec mv {} /backup \;


#File Search: Find Files Larger Than 100MB in /var