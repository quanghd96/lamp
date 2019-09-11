#!/bin/bash
while ! mysqladmin ping --silent; do
    sleep 0.1
done