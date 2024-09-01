# module-zpool-import
Terraform module to import a ZPool on Linux with Ansible

> [!Warning]
> * This module doesn't have resources with a traditional state.
> * Make sure to set var.external_triggers for any changes that require an update other than variables.
> * This module doesn't delete the changes on the target system on destroy.

# Terraform Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_ansible"></a> [ansible](#requirement\_ansible) | >= 1, < 2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3, < 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ansible"></a> [ansible](#provider\_ansible) | 1.3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ansible_playbook.import_zpool](https://registry.terraform.io/providers/ansible/ansible/latest/docs/resources/playbook) | resource |
| [null_resource.variables](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.zpool_import](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname the ZPool is on | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the ZPool to import | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostname"></a> [hostname](#output\_hostname) | The hostname the ZPool is on |
| <a name="output_name"></a> [name](#output\_name) | The name of the ZPool to import |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
