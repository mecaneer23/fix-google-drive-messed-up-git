#!/bin/bash

fix() {
    mv $1\ \(1\)/* $1/ && rmdir $1\ \(1\)/;
}

ls | grep \(1\) | while read -r item; do
    echo "Working on $item";
    fix $item;
done