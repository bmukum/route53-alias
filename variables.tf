variable "alias_name" {
  type        = string
  description = "DNS name for the ELB, Cloudfront distribution, S3 bucket or other AWS resource."
}

variable "alias_zone_id" {
  type        = string
  description = "Hosted zone ID for a Cloudfront distribution, ELB, S3 bucket, or Route53 zone"
}

variable "name" {
  type        = string
  description = "The name of the route53 record to create. It's' final name of name.dns_zone_name"
}

variable "dns_zone_name" {
  type        = string
  description = "The name of the Route53 DNS zone to create the record."
}

variable "evaluate_target_health" {
  type        = bool
  description = "Set to true or false whether to respond to DNS queries using this resource record set by checking the health of the resource record set"
  default     = false
}

variable "private_zone" {
  type        = bool
  description = "Is the hosted zone private or public"
  default     = false
}

variable "allow_overwrite" {
  type        = bool
  description = "If true, this DNS record will overwrite any existing records with the same name/type in the route53 zone"
  default     = false
}