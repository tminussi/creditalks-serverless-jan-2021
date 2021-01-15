variable "environment" {
    type = string
    description = "Ambiente que o código vai ser deployado"
}

variable "write_capacity" {
    type = number
    description = "Unidades de capacidade de escrita (WCU)"
}

variable "read_capacity" {
    type = number
    description = "Unidades de capacidade de leitura (WCU)"
}

variable "project" {
    type = string
    description = "Projeto"
}