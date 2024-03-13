#!/bin/bash
cd /usr/local/jenkins-service
# Just in case we would have upgraded the controller, we need to make sure that the agent is using the latest version of the agent.jar
curl -sO http://127.0.0.1/jnlpJars/agent.jar
java -jar agent.jar -url http://127.0.0.1/ -secret c33fed8b03717a2f7e1a5f3f190db5be2e960e63a249ffa87ec4b59f0c38b8e9 -name "jenkin node" -workDir "/home/jenkins"
exit 0