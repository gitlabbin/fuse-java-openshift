FROM registry.access.redhat.com/fuse7/fuse-java-openshift:1.5

USER 0

COPY s2i/assemble /usr/local/s2i/assemble
RUN chmod 755 /usr/local/s2i/*

USER 185

LABEL io.k8s.description="Corp applications on JBoss Fuse 6.2.1" \
      io.k8s.display-name="JBoss Fuse 6.2.1 + maven settings" \
      io.openshift.expose-services="8080:http" \
      io.openshift.s2i.scripts-url="image:///usr/local/s2i" \
      io.openshift.tags="builder,jboss-fuse,java,xpaas"