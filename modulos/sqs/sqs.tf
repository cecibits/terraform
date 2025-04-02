resource "aws_sqs_queue" "terraform_queue" {
  name                        = var.name
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  tags = {
    Env = "dev"
  }
}