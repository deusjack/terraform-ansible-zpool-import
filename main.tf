resource "ansible_playbook" "import_zpool" {
  name                    = var.hostname
  playbook                = "${path.root}/../ansible/zpool_import.yaml"
  replayable              = false
  ignore_playbook_failure = false
  extra_vars = {
    zpool = var.name
  }
  lifecycle {
    replace_triggered_by = [
      null_resource.zpool_import,
      null_resource.variables
    ]
  }
}
