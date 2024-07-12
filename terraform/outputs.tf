output "strapi_service_name" {
  value = aws_ecs_service.strapi.name
  description = "The name of the Strapi ECS service"
}

output "react_service_name" {
  value = aws_ecs_service.react.name
  description = "The name of the React ECS service"
}

output "strapi_task_definition_arn" {
  value = aws_ecs_task_definition.strapi.arn
  description = "The ARN of the Strapi ECS task definition"
}

output "react_task_definition_arn" {
  value = aws_ecs_task_definition.react.arn
  description = "The ARN of the React ECS task definition"
}
