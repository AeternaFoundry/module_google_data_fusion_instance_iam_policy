resource "google_data_fusion_instance_iam_policy" "data_fusion_instance_iam_policies" {
  for_each = var.data_fusion_instance_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  project     = each.value.project
  region      = each.value.region
}

