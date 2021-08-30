resource "aws_instance" "general" {
  ami = var.ami
  instance_type = var.instance_type
  tags = var.tags
  availability_zone = var.availability_zone
  placement_group = var.placement_group
  tenancy = var.tenancy
  host_id = var.host_id
  cpu_core_count = var.cpu_core_count
  cpu_threads_per_core = var.cpu_threads_per_core
  ebs_optimized = var.ebs_optimized
  disable_api_termination = var.disable_api_termination
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  key_name = var.key_name
  get_password_data = var.get_password_data
  monitoring = var.monitoring
  security_groups = var.security_groups
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  private_ip = var.private_ip
  secondary_private_ips = var.secondary_private_ips
  source_dest_check = var.source_dest_check
  user_data = var.user_data
  user_data_base64 = var.user_data_base64
  iam_instance_profile = var.iam_instance_profile 
  ipv6_address_count = var.ipv6_address_count
  ipv6_addresses = var.ipv6_addresses
  volume_tags = var.volume_tags
  root_block_device = var.root_block_device
  ebs_block_device = var.ebs_block_device
  ephemeral_block_device = var.ephemeral_block_device
  network_interface = var.network_interface
  credit_specification = var.credit_specification
  hibernation = var.hibernation
  metadata_options = var.metadata_options

  timeouts {
    create = var.create
    update = var.update
    delete = var.delete
  }

  dynamic root_block_device {
    for_each = var.root_block_device == null ? [] : list(var.root_block_device)
    content {
      volume_type = var.rbd_volume_type
      volume_size = var.rbd_volume_size
      iops = var.rbd_iops
      delete_on_termination = var.rbd_delete_on_termination
      encrypted = var.rbd_encrypted
      kms_key_id = var.rbd_kms_key_id
    }
  }

  dynamic ebs_block_device {
    for_each = var.ebs_block_device == null ? [] : list(var.ebs_block_device)
    content {
      device_name = var.ebd_device_name
      snapshot_id = var.ebd_snapshot_id
      volume_type = var.ebd_volume_type
      volume_size = var.ebd_volume_size
      iops = var.ebd_iops
      delete_on_termination = var.ebd_delete_on_termination
      encrypted = var.ebd_encrypted
      kms_key_id = var.ebd_kms_key_id
    }
  }

  dynamic ephemeral_block_device {
    for_each = var.ephemeral_block_device == null ? [] : list(var.ephemeral_block_device)
    content {
      device_name = var.epbd_device_name
      virtual_name = var.epbd_virtual_name
      no_device = var.epbd_no_device
    }
  }

  dynamic network_interface {
    for_each = var.network_interface == null ? [] : list(var.network_interface)
    content {
      device_index = var.n_device_index
      network_interface_id = var.n_network_interface_id
      delete_on_termination = var.n_delete_on_termination
    }
  }

  credit_specification {
    cpu_credits = var.cs_cpu_credits
  }

  dynamic metadata_options {
    for_each = var.metadata_options == null ? [] : list(var.metadata_options)
    content {
      http_endpoint = var.mo_http_endpoint
      http_tokens = var.mo_http_tokens
      http_put_response_hop_limit = var.mo_http_put_response_hop_limit
    }
  }

}
