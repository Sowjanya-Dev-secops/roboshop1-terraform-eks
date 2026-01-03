resource "aws_ssm_parameter" "ingress_alb_certificate_arn" {
  name        = "/${var.project_name}/${var.environment}/ingress_alb_certificate_arn"
  description = "The parameter description"
  type        = "String"
  value       = aws_acm_certificate.roboshop.arn
}