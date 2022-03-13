#!/bin/bash

apt update
apt dist-upgrade -y
apt install python3
apt install git
apt install python
apt install python3-pip
git clone https://github.com/jpartemis/cwarp.git
cd cwarp/
pip install -r requirements.txt
pip install streamlit
streamlit run cwarp_app.py