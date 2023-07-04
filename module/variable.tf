# variable "type" {
#   type = object({
#     "cond1" = string
#     "cond2" = string
#     "cond3" = string
#   })

# }
# variable "Name" {
#     type = object({
#     "cond1" = string
#     "cond2" = string
#     "cond3" = string
#   })

# }
# variable "discription" {
#     type = object({
#     "cond1" = string
#     "cond2" = string
#     "cond3" = string
#   })

# }
# variable "violation_time_limit_seconds" {
#     type = object({
#     "cond1" = string
#     "cond2" = string
#     "cond3" = string
#   })

# }

# variable "Thrushold" {
#     type = object({
#     "cond1" = number
#     "cond2" = number
#     "cond3" = number
#   })
# }

# variable "Thrushold_duration" {
#       type = object({
#     "cond1" = number
#     "cond2" = number
#     "cond3" = number
#   })

# }

# variable "operator" {
#       type = object({
#     "cond1" = string
#     "cond2" = string
#     "cond3" = string
#   })

# }


variable "condition" {
  type = list(any)
  
}