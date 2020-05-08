#!/bin/bash

read -p "Enter a search term: " searchterm

googler --np -n5 $searchterm
