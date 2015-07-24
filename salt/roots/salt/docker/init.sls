docker.io:
    pkg.latest

docker:
    service.running

new-pip:
    cmd.run:
        - name: sudo easy_install -U pip
        - require:
            - service: docker

python-package:
    cmd.run:
        - name: sudo pip install -r /srv/salt/docker/requirements.txt
        - require:
            - cmd: new-pip