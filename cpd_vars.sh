#===============================================================================
# Cloud Pak for Data installation variables
#===============================================================================

# ------------------------------------------------------------------------------
# Cluster
# ------------------------------------------------------------------------------

export OCP_URL=${OCP_URL}
export OPENSHIFT_TYPE=self-managed #roks # #<enter your deployment type>
# export IMAGE_ARCH=amd64 #<enter your cluster architecture>
export OCP_USERNAME=kubeadmin #IAM#akpojotor.shemi@ibm.com #<enter your username>
export OCP_TOKEN=${OCP_TOKEN} #<enter your token>


# ------------------------------------------------------------------------------
# Projects
# ------------------------------------------------------------------------------

export PROJECT_CPFS_OPS=ibm-common-services        
export PROJECT_CPD_OPS=ibm-common-services #<enter your Cloud Pak for Data operator installation project>
export PROJECT_CATSRC=openshift-marketplace
export PROJECT_CPD_INSTANCE=cpd-instance #cp4data-instance #<enter your Cloud Pak for Data installation project>
# export PROJECT_TETHERED=<enter the tethered project>


# ------------------------------------------------------------------------------
# Storage
# ------------------------------------------------------------------------------

export STG_CLASS_BLOCK=gp2-csi  #<RWO-storage-class-name> ocs-storagecluster-ceph-rbd 
export STG_CLASS_FILE=aws-efs #efs-nfs-client  #<RWX-storage-class-name> ocs-storagecluster-cephfs

# ------------------------------------------------------------------------------
# IBM Entitled Registry
# ------------------------------------------------------------------------------

export IBM_ENTITLEMENT_KEY=${IBM_ENTITLEMENT_KEY} 


# ------------------------------------------------------------------------------
# Private container registry
# ------------------------------------------------------------------------------
# Set the following variables if you mirror images to a private container registry.
#
# To export these variables, you must uncomment each command in this section.

# export PRIVATE_REGISTRY_LOCATION=<enter the location of your private container registry>
# export PRIVATE_REGISTRY_PUSH_USER=<enter the username of a user that can push to the registry>
# export PRIVATE_REGISTRY_PUSH_PASSWORD=<enter the password of the user that can push to the registry>
# export PRIVATE_REGISTRY_PULL_USER=<enter the username of a user that can pull from the registry>
# export PRIVATE_REGISTRY_PULL_PASSWORD=<enter the password of the user that can pull from the registry>


# ------------------------------------------------------------------------------
# Cloud Pak for Data version
# ------------------------------------------------------------------------------

export VERSION=4.5.3


# ------------------------------------------------------------------------------
# Components
# ------------------------------------------------------------------------------
# Set the following variable if you want to install or upgrade multiple components at the same time.
#
# To export the variable, you must uncomment the command.
export COMPONENTS=cpfs,scheduler,cpd_platform,match360 #,ws,watson_discovery,watson_ks,wkc,wml,match360,datastage_ent
# export COMPONENTS=cpfs,scheduler,cpd_platform,db2oltp,wkc #cognos_analytics #edb_cp4d #db2oltp,dmc,cognos_analytics,ws
# export COMPONENTS=db2wh
