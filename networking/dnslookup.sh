#!/bin/bash

read -p "Enter domain name : " domain

nslookup "$domain"
