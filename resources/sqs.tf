module "aws_sqs" {
  source = "../modulos/sqs"
  name = "ceciliafila.fifo"
  fifo_queue = lookup(var.fifo_queue,"dev")
  content_based_deduplication = false
}

module "aws_sqs1" {
  source = "../modulos/sqs"
  name = "ceciliafifo.fifo"
  fifo_queue = lookup(var.fifo_queue,"dev")
  content_based_deduplication = false
}
