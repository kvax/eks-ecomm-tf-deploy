# Use the local-exec provisioner to apply the MySQL manifest
resource "null_resource" "mysql" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/mysql.yaml"
  }
}

resource "null_resource" "flask_backend" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/flask-backend.yaml"
  }
}

resource "null_resource" "react_frontend" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/react-frontend.yaml"
  }
}

