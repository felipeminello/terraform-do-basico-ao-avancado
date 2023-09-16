variable "portas" {
  description = "Portas que serão abertas no secutiry group"
  type        = list(number)
  default     = [22, 80, 443, 8080]
}