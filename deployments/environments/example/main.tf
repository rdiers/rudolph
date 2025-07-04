module "santa_api" {
  source = "github.com/airbnb/rudolph//deployments/terraform_modules/santa_api"

  prefix                             = var.prefix
  org                                = var.org
  region                             = var.region
  aws_account_id                     = var.aws_account_id
  stage_name                         = var.stage_name
  allowed_inbound_ips                = var.allowed_inbound_ips

  # StreamAlert integration
  eventupload_handler             = var.eventupload_handler
  eventupload_kinesis_name        = var.eventupload_kinesis_name
  eventupload_autocreate_policies = var.eventupload_autocreate_policies
  eventupload_output_lambda_name  = var.eventupload_output_lambda_name

  # The route53 zone id
  route53_zone_name   = var.route53_zone_name
  use_existing_route53_zone = var.use_existing_route53_zone

  lambda_api_zip  = var.lambda_api_zip
  lambda_authorizer_zip = var.lambda_authorizer_zip
  
  enable_s3_logging = var.enable_s3_logging

  kms_key_administrators_arns = var.kms_key_administrators_arns
}