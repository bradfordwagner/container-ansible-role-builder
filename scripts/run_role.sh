set -e

role=${1}

cat > playbook.yml <<EOF
- name: test playbook
  hosts: localhost
  roles:
    - role: ${role}
EOF

ansible-playbook playbook.yml

