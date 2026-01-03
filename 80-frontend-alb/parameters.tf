resource "aws_ssm_parameter" "ingress_alb_listener_arn" {
  name        = "/${var.project_name}/${var.environment}/ingress_alb_listener_arn"
  description = "The parameter description"
  type        = "String"
  value       = aws_lb_listener.ingress_alb.arn
}