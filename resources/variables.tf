variable "fifo_queue" {
    type = map(bool)
    default = {
      "dev" = true
      "prod" = false
    }
}

variable "environment" {
    type = string  
}