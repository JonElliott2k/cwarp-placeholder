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
pip install markupsafe==2.0.1
pip3 install Jinja2==3.0
grep -v "caching.clear_cache()" cwarp_app.py > tmpfile && mv tmpfile cwarp_app.py
streamlit run cwarp_app.py
