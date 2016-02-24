alias run_snmpit='echo "running snmpit ..."; cd /export/home/prokowski/acorn/vbox_snmpit_server; python server.py --vbox-dir="/usr/lib/virtualbox/" --no-version-check; cd ~;'

alias install_acorn='echo "installing Acorn for VBox";cd /export/home/prokowski/acorn/acorn_install; python prepare.py --ops=192.168.69.163 --boss=192.168.69.162 --install=both --config=install-acorn-vb.cfg; echo "finished"'
