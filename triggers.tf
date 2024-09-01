#################
# ansible files #
#################

resource "null_resource" "zpool_import" {
  triggers = {
    zpool_import = filemd5("${path.module}/zpool_import.yaml")
  }
}

#############
# variables #
#############

resource "null_resource" "variables" {
  triggers = {
    name = var.name
  }
}
