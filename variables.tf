variable "nsx_group_path" {
	type = string
	description = "Path of the security group containing the VMs."
}

variable "pool_algorithm" {
    type = string
    default = "IP_HASH"
    description = "Pool Member Algorithm"
  
}