variable "ami" {
  description = "(Required) The AMI to use for the instance."
  default = null
}

variable "tags" {
  description = "tags"
  default = {}
}

variable "availability_zone" {
  description = "(Optional) The AZ to start the instance in."
  default = null
}

variable "placement_group" {
  description = "(Optional) The Placement Group to start the instance in."
  default = null
}

variable "tenancy" {
  description = "(Optional) The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware. The host tenancy is not supported for the import-instance command."
  default = null
}

variable "host_id" {
  description = "(optional) The Id of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host."
  default = null
}

variable "cpu_core_count" {
  description = "(Optional) Sets the number of CPU cores for an instance. This option is only supported on creation of instance type that support CPU Options CPU Cores and Threads Per CPU Core Per Instance Type - specifying this option for unsupported instance types will return an error from the EC2 API."
  default = null
}

variable "cpu_threads_per_core" {
  description = "(Optional - has no effect unless cpu_core_count is also set) If set to to 1, hyperthreading is disabled on the launched instance. Defaults to 2 if not set. See Optimizing CPU Options for more information."
  default = null
}

variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the EBS Optimized section of the AWS User Guide for more information."
  default = null
}

variable "disable_api_termination" {
  description = "(Optional) If true, enables EC2 Instance Termination Protection."
  default = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Amazon defaults this to stop for EBS-backed instances and terminate for instance-store instances. Cannot be set on instance-store instances. See Shutdown Behavior for more information."
  default = null
}

variable "instance_type" {
  description = " (Required) The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance."
  default = "t3.large"
}
variable "key_name" {
  description = "(Optional) The key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource."
  default = null
}

variable "get_password_data" {
  description = "(Optional) If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the password_data attribute. See GetPasswordData for more information."
  default = null
}

variable "monitoring" {
  description = "(Optional) If true, the launched EC2 instance will have detailed monitoring enabled."
  default = null
}

variable "security_groups" {
  description = "(Optional, EC2-Classic and default VPC only) A list of security group names (EC2-Classic) or IDs (default VPC) to associate with."
  default = null
}

variable "vpc_security_group_ids" {
  description = "(Optional, VPC only) A list of security group IDs to associate with."
  default = null
}

variable "subnet_id" {
  description = "(Optional) The VPC Subnet ID to launch in."
  default = null
}

variable "associate_public_ip_address" {
  description = "(Optional) Associate a public ip address with an instance in a VPC. Boolean value."
  default = false
}

variable "private_ip" {
  description = "(Optional) Private IP address to associate with the instance in a VPC."
  default = null
}

variable "secondary_private_ips" {
  description = "(Optional) A list of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC."
  default = null
}

variable "source_dest_check" {
  description = "(Optional) Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true."
  default = true
}

variable "user_data" {
  description = "(Optional) The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
  default = null
}

variable "user_data_base64" {
  description = "(Optional) Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption."
  default = null
}

variable "iam_instance_profile" {
  description = "(Optional) The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the EC2 documentation, notably iam:PassRole."
  default = null
}

variable "ipv6_address_count" {
  description = "(Optional) A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet."
  default = null
}

variable "ipv6_addresses" {
  description = "(Optional) Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface."
  default = null
}

variable "volume_tags" {
  description = "(Optional) A map of tags to assign to the devices created by the instance at launch time."
  default = null
}

variable "root_block_device" {
  description = "(Optional) Customize details about the root block device of the instance. See Block Devices below for details."
  default = null
}

variable "ebs_block_device" {
  description = "(Optional) Additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection."
  default = null
}

variable "ephemeral_block_device" {
  description = "(Optional) Customize Ephemeral (also known as Instance Store) volumes on the instance. See Block Devices below for details."
  default = null
}

variable "network_interface" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details."
  default = null
}

variable "credit_specification" {
  description = "(Optional) Customize the credit specification of the instance. See Credit Specification below for more details."
  default = null
}

variable "hibernation" {
  description = "(Optional) If true, the launched EC2 instance will support hibernation."
  default = null
}

variable "metadata_options" {
  description = "(Optional) Customize the metadata options of the instance. See Metadata Options below for more details."
  default = null
}

variable "create" {
  description = "(Defaults to 10 mins) Used when launching the instance (until it reaches the initial running state)"
  default = 10
}

variable "update" {
  description = "(Defaults to 10 mins) Used when stopping and starting the instance when necessary during update - e.g. when changing instance type"
  default = 10
}

variable "delete" {
  description = "(Defaults to 20 mins) Used when terminating the instance"
  default = 20
}

variable "root_block_device" {
  default = null
}

variable "rbd_volume_type" {
  description = ""
  default = null
}

variable "rbd_volume_size" {
  description = ""
  default = null
}

variable "rbd_delete_on_termination" {
  description = ""
  default = null
}

variable "rbd_encrypted" {
  description = ""
  default = false
}

variable "rbd_kms_key_id" {
  description = ""
  default = null
}

variable "ebs_block_device" {
  default = null
}

variable "ebd_device_name" {
  description = "(Required) The name of the device to mount."
  default = null
}

variable "ebd_snapshot_id" {
  description = "(Optional) The Snapshot ID to mount."
  default = null
}

variable "ebd_volume_type" {
  description = "(Optional) The type of volume. Can be standard, gp2, io1 or io2. (Default: gp2)."
  default = null
}

variable "ebd_volume_size" {
  description = "(Optional) The size of the volume in gibibytes (GiB)."
  default = null
}

variable "ebd_iops" {
  description = "(Optional) The amount of provisioned IOPS. This must be set with a volume_type of io1/io2"
  default = null
}

variable "ebd_delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination (Default: true)."
  default = null
}

variable "ebd_encrypted" {
  description = "(Optional) Enables EBS encryption on the volume (Default: false). Cannot be used with snapshot_id. Must be configured to perform drift detection."
  default = null
}

variable "ebd_kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.)"
  default = null
}

variable "ephemeral_block_device" {
  default = null
}

variable "epbd_device_name" {
  description = "The name of the block device to mount on the instance."
  default = null
}

variable "epbd_virtual_name" {
  description = "(Optional) The Instance Store Device Name (e.g. ephemeral0)."
  default = null
}

variable "epbd_no_device" {
  description = "(Optional) Suppresses the specified device included in the AMI's block device mapping."
  default = null
}

variable "network_interface" {
  default = null
}

variable "n_device_index" {
  description = ""
  default = null
}

variable "n_network_interface_id" {
  description = ""
  default = null
}

variable "n_delete_on_termination" {
  description = ""
  default = null
}

variable "cs_cpu_credits" {
  description = "(Optional) The credit option for CPU usage. Can be standard or unlimited. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default."
  default = "standard"
}

variable "metadata_options" {
  default = null
}

variable "mo_http_endpoint" {
  description = ""
  default = null
}

variable "mo_http_endpoint" {
  description = ""
  default = null
}

variable "mo_http_tokens" {
  description = ""
  default = null
}

variable "mo_http_put_response_hop_limit" {
  description = ""
  default = null
}
