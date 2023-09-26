# Use an official JBoss Web Server image with Tomcat 11 as the base image.
FROM registry.redhat.io/jboss-webserver-5/jws56-openjdk11-openshift-rhel8:latest

# Switch User
USER jboss
# Create logs directory
VOLUME /home/manager/ssoRegisterGuestLogs/

# Create a directory to copy your application WAR file
#RUN mkdir /deployments/GuestUser

# Copy your Ant-built WAR file into the deployment directory
COPY dist/GuestUser.war /deployments/

# Expose the default HTTP and HTTPS ports
EXPOSE 8080
EXPOSE 8443


