#!/bin/bash

if [ $(printf %.0f "$(xbacklight -get)") -ge 20 ];then xbacklight -dec 10; else xbacklight -set 10; fi
