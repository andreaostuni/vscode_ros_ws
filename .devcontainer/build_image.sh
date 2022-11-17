if ["x${SSH_PRIVATE_KEY}" = "x"]
        mkdir /root/.ssh/
        echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa
        # make sure your domain is accepted
        touch /root/.ssh/known_hosts
        ssh-keyscan github.com >> /root/.ssh/known_hosts
else