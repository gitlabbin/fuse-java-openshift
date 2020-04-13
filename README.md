FUSE app S2I from source code
=============================


- image stream
```
oc create -f fuse7-java-openshift-rhel7.yml
```

- template
```
oc create -f s2i-fuse75-spring-boot-camel-xml.yml
```

- create app from template
```
oc new-app s2i-fuse75-spring-boot-camel-xml
```

- create app from templte locally without create template
```
oc new-app -f s2i-fuse75-spring-boot-camel-xml.yml
```

https://access.redhat.com/documentation/en-us/red_hat_fuse/7.5/html-single/fuse_on_openshift_guide/index#create-project-s2i-source-workflow

https://access.redhat.com/documentation/en-us/red_hat_fuse/7.5/html-single/fuse_on_openshift_guide/index#create-project-s2i-binary-workflow

Maven central: https://repo1.maven.org/maven2
Red Hat GA repository: https://maven.repository.redhat.com/ga
Red Hat EA repository: https://maven.repository.redhat.com/earlyaccess/all

You must add the preceding repositories both to the dependency repositories section as well as the plug-in repositories section of your settings.xml file.

- update template
```
oc apply -f s2i-fuse75-spring-boot-camel-xml.yml --overwrite=true  --force=true
```

