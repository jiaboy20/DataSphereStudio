### deploy user
deployUser=root

## max memory for services
SERVER_HEAP_SIZE="512M"

### The install home path of DSS，Must provided
DSS_INSTALL_HOME=/opt/dss

DSS_VERSION=1.1.1

DSS_FILE_NAME="dss-$DSS_VERSION"

###  Linkis EUREKA  information.  # Microservices Service Registration Discovery Center
EUREKA_INSTALL_IP=bigd-sit-linkis-mgr1
EUREKA_PORT=8761
### If EUREKA  has safety verification, please fill in username and password
#EUREKA_USERNAME=
#EUREKA_PASSWORD=

### Linkis Gateway  information
GATEWAY_INSTALL_IP=bigd-sit-linkis-mgr1
GATEWAY_PORT=9111

################### The install Configuration of all Micro-Services #####################
#
#    NOTICE:
#       1. If you just wanna try, the following micro-service configuration can be set without any settings.
#            These services will be installed by default on this machine.
#       2. In order to get the most complete enterprise-level features, we strongly recommend that you install
#          the following microservice parameters
#

### DSS_SERVER
### This service is used to provide dss-server capability.

### project-server
DSS_FRAMEWORK_PROJECT_SERVER_INSTALL_IP=127.0.0.1
DSS_FRAMEWORK_PROJECT_SERVER_PORT=9002
### orchestrator-server
DSS_FRAMEWORK_ORCHESTRATOR_SERVER_INSTALL_IP=127.0.0.1
DSS_FRAMEWORK_ORCHESTRATOR_SERVER_PORT=9003
### apiservice-server
DSS_APISERVICE_SERVER_INSTALL_IP=127.0.0.1
DSS_APISERVICE_SERVER_PORT=9004
### dss-workflow-server
DSS_WORKFLOW_SERVER_INSTALL_IP=127.0.0.1
DSS_WORKFLOW_SERVER_PORT=9005
### dss-flow-execution-server
DSS_FLOW_EXECUTION_SERVER_INSTALL_IP=127.0.0.1
DSS_FLOW_EXECUTION_SERVER_PORT=9006
###dss-scriptis-server
DSS_SCRIPTIS_SERVER_INSTALL_IP=127.0.0.1
DSS_SCRIPTIS_SERVER_PORT=9008

###dss-data-api-server
DSS_DATA_API_SERVER_INSTALL_IP=127.0.0.1
DSS_DATA_API_SERVER_PORT=9009
###dss-data-governance-server
DSS_DATA_GOVERNANCE_SERVER_INSTALL_IP=127.0.0.1
DSS_DATA_GOVERNANCE_SERVER_PORT=9010
###dss-guide-server
DSS_GUIDE_SERVER_INSTALL_IP=127.0.0.1
DSS_GUIDE_SERVER_PORT=9011

############## ############## dss_appconn_instance configuration   start   ############## ##############
####eventchecker表的地址，一般就是dss数据库
EVENTCHECKER_JDBC_URL="jdbc:mysql://10.110.7.18:32660/dssdb?characterEncoding=UTF-8"
EVENTCHECKER_JDBC_USERNAME=dss
EVENTCHECKER_JDBC_PASSWORD=dss@1234

#### hive地址
DATACHECKER_JOB_JDBC_URL="jdbc:mysql://192.168.56.181:3306/metastore?useUnicode=true"
DATACHECKER_JOB_JDBC_USERNAME=hive
DATACHECKER_JOB_JDBC_PASSWORD=hive
#### 元数据库，可配置成和DATACHECKER_JOB的一致
DATACHECKER_BDP_JDBC_URL="jdbc:mysql://192.168.56.181:3306/metastore?useUnicode=true"
DATACHECKER_BDP_JDBC_USERNAME=hive
DATACHECKER_BDP_JDBC_PASSWORD=hive

EMAIL_HOST=192.168.16.198
EMAIL_PORT=25
EMAIL_USERNAME=daishuyun@focuschina.com
EMAIL_PASSWORD=Daishuyun2020
EMAIL_PROTOCOL=smtp
############## ############## dss_appconn_instance configuration   end   ############## ##############

############## ############## pinpoint configuration   start   ############## ##############
export PINPOINT_AGENT_PATH=/opt/pinpoint-agent/pinpoint-bootstrap.jar
export PP_APPLICATION_NAME=apache-linkis
############## ############## pinpoint configuration   end   ############## ##############