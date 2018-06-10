FROM google/cloud-sdk:latest

RUN mkdir -p /google-cloud-sdk/bin/
RUN ln -s $(which gcloud) /google-cloud-sdk/bin/gcloud
#Check
RUN ls -l /google-cloud-sdk/bin/gcloud

ADD drone-gae /bin/
ENTRYPOINT ["/bin/drone-gae"]
