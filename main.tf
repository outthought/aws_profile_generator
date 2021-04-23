resource "local_file" "awsconfig" {
  content = templatefile(
    "${path.module}/config.tmpl",
    {
      accounts         = var.accounts
      duration_seconds = var.duration_seconds
      mfa_serial       = var.mfa_serial
      output           = var.output
      region           = var.region
      role_name        = var.role_name
    }
  )
  filename        = "${path.module}/config"
  file_permission = "0664"
}
