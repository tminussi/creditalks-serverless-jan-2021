module "storage" {
  source         = "../../infra/storage"
  environment    = var.environment
  project        = var.project
  write_capacity = 1
  read_capacity  = 1
}