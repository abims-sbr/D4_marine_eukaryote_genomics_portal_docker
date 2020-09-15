FROM bgruening/galaxy-stable:20.05

MAINTAINER ABiMS platform, support.abims@sb-roscoff.fr

ENV GALAXY_CONFIG_BRAND EOSC-Life_D4

# Install the tools
ADD tool_list.yml $GALAXY_ROOT/tool_list.yml
RUN install-tools $GALAXY_ROOT/tool_list.yml

# Install the workflow
ADD galaxy-workflow.ga $GALAXY_ROOT/galaxy-workflow.ga
RUN startup_lite && \
    galaxy-wait && \
    workflow-install --workflow_path $GALAXY_ROOT/galaxy-workflow.ga -g http://localhost:8080 -u $GALAXY_DEFAULT_ADMIN_USER -p $GALAXY_DEFAULT_ADMIN_PASSWORD

# Container Style
ADD welcome.html $GALAXY_CONFIG_DIR/web/welcome.html

# Mark folders as imported from the host.
VOLUME ["/export/", "/data/", "/var/lib/docker"]

# Expose port 80 (webserver), 21 (FTP server), 8800 (Proxy)
EXPOSE :80
EXPOSE :21
EXPOSE :8800

# Autostart script that is invoked during container start
CMD ["/usr/bin/startup"]