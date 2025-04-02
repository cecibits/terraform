variable "name" {
    type = string
    description = "Nome da fila SQS"
}

variable "fifo_queue" {
    type = bool
    description = "Criação de SQS fifo"
}

variable "content_based_deduplication" {
    type = bool
    description = "Permissão de duplicação das mensagens" 
}





