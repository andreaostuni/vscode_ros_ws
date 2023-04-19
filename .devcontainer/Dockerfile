FROM althack/ros2:humble-cuda-gazebo-nvidia 

# ** [Optional] Uncomment this section to install additional packages. **
#
# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get update \
#    && apt-get -y install --no-install-recommends <your-package-list-here> \
#    #
#    # Clean up
#    && apt-get autoremove -y \
#    && apt-get clean -y \
#    && rm -rf /var/lib/apt/lists/*
# ENV DEBIAN_FRONTEND=dialog

# add credentials on build
# ARG SSH_PRIVATE_KEY
# RUN 'if [ !-z "${SSH_PRIVATE_KEY}"]; then mkdir /root/.ssh/; echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa; touch /root/.ssh/known_hosts; ssh-keyscan github.com >> /root/.ssh/known_hosts; fi'
# RUN echo "if [ !-z '${SSH_PRIVATE_KEY}']; then echo 'xxx${SSH_PRIVATE_KEY}'; fi"
# Set up auto-source of workspace for ros user
ARG WORKSPACE
RUN echo "export ROS_DOMAIN_ID=17" >> /home/ros/.bashrc
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
RUN echo "if [ -f /usr/share/gazebo-11/setup.bash ]; then source /usr/share/gazebo-11/setup.bash; fi" >> /home/ros/.bashrc
RUN echo "if [ -d ${WORKSPACE}/gazebo/models ]; then export GAZEBO_MODEL_PATH=${WORKSPACE}/gazebo/models:\$GAZEBO_MODEL_PATH; fi" >> /home/ros/.bashrc
RUN echo "if [ -d ${WORKSPACE}/gazebo/ ]; then export GAZEBO_RESOURCE_PATH=${WORKSPACE}/gazebo/:\$GAZEBO_RESOURCE_PATH; fi" >> /home/ros/.bashrc
# CMD [ "${WORKSPACE}/setup.sh" ]