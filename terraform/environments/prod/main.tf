module "storage" {
  source         = "../../infra/storage"
  environment    = var.environment
  project        = var.project
  write_capacity = 5
  read_capacity  = 5
}