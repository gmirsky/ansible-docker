



# Ansible Container



## Running the container

```bash
docker run -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro ansible-docker:latest ansible-playbook my_playbook.yml
```

If not using Ansible roles you can omit that volume

```bash
docker run -v "${PWD}":/work:ro -v ~/.ssh:/root/.ssh:ro ansible-dockerlatest ansible-playbook my_playbook.yml
```

## Volume Mappings

| Purpose                                                      | Host Path        | Container Path       |
| ------------------------------------------------------------ | ---------------- | -------------------- |
| Allow the playbook on the host machine to be readable inside the container | $pwd             | /work                |
| To access the role installed in Ansible Galaxy inside the contianer | ~/.ansible/roles | /root/.ansible/roles |
| Share the SSH credentials and/or keys of the host and target machines with the container | ~/.ssh           | /root/.ssh           |

Due to the variations of Ansible on different distributions, if you install a role from Ansible Galaxy, the role may be saved in one of the following directories.

    ~/.ansible/roles
    /usr/share/ansible/roles
    /etc/ansible/roles



