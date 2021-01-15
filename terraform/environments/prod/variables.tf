variable "environment" {
    type = string
    description = "Ambiente que o código vai ser deployado"
}

variable "region" {
    type = string
    description = "Região da nuvem onde os recursos serão deployados"
}

variable "project" {
    type = string
    description = "Projeto"
}
