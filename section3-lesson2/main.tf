resource "null_resource" "mk" {
  provisioner "local-exec" {
    command = "echo '0' > status.txt"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "echo '1' > status.txt"
  }
}
