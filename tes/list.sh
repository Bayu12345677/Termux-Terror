#!/data/data/com.termux/files/usr/bin/bash

source ./lib/app.sh

Namespace: [STD::Log Std::Main]

import.source [inquirer:list.app]
import.source [io:color.app]
import.source [io:color.app]

data=("1. a" "2. b" "3. c")

list.input ["[>]",data,tess]
