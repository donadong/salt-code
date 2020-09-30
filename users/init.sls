users_salttest:
  user.present:
    - name: salttest
    - home: /home/salttest
    - shell: /bin/bash
    - groups:
      - sudo
      - adm