#!/bin/bash

if [ ! -f /home/node/.openclaw/openclaw.json ];
then
        cp -a /tmp/openclaw/openclaw.json /home/node/.openclaw
fi