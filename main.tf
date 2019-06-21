terraform {
  required_version = ">= 0.12.1"
}
resource "null_resource" "star_deploy" {
  triggers = {
    integration_response_other  = "${join(", ", var.integration_response_other_id)}"
    integration_response_cors   = "${join(", ", var.integration_response_cors_id)}"
    

  }
}
resource "aws_api_gateway_deployment" "this" {
  depends_on = ["null_resource.star_deploy"]
  rest_api_id = "${var.rest_api}"
  stage_name  = "${var.stage_name}"
  description = "${var.description}"
}