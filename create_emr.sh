aws emr create-cluster  \
--termination-protected  \
--applications Name=Hadoop  \
--ec2-attributes '{"KeyName":"abhishek-vpc","InstanceProfile":"EMR_EC2_DefaultRole","SubnetId":"subnet-035a10658fcfd9e29","EmrManagedSlaveSecurityGroup":"sg-00f7f3f545d8d1f4c","EmrManagedMasterSecurityGroup":"sg-045690a3193dffbe7"}'  \
--service-role EMR_DefaultRole  \
--release-label emr-5.12.0  \
--name 'emr-at-abhishek-vpc'  \
--instance-groups '[{"InstanceCount":2,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"CORE","InstanceType":"m4.xlarge","Name":"slave"},{"InstanceCount":1,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":1}]},"InstanceGroupType":"MASTER","InstanceType":"m4.xlarge","Name":"master"}]'  \
--scale-down-behavior TERMINATE_AT_TASK_COMPLETION  \
--region eu-central-1


