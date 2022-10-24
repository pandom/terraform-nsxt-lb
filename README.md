## Description

This module creates an NSX-T Load Balancer pool. It requires input of a `group_path` which is a collection of objects (VMs, IPs, Tags) as pool members.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_nsxt"></a> [nsxt](#requirement\_nsxt) | ~>3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nsxt"></a> [nsxt](#provider\_nsxt) | ~>3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nsxt_policy_lb_pool.this](https://registry.terraform.io/providers/vmware/nsxt/latest/docs/resources/policy_lb_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nsx_group_path"></a> [nsx\_group\_path](#input\_nsx\_group\_path) | Path of the security group containing the VMs. | `string` | n/a | yes |
| <a name="input_pool_algorithm"></a> [pool\_algorithm](#input\_pool\_algorithm) | Pool Member Algorithm | `string` | `"IP_HASH"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->