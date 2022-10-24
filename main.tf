resource "nsxt_policy_lb_pool" "this" {
  display_name         = "test"
  description          = "Terraform provisioned LB Pool"
  algorithm            = "IP_HASH"
  min_active_members   = 2
  #active_monitor_path  = "/infra/lb-monitor-profiles/default-icmp-lb-monitor"
  #passive_monitor_path = "/infra/lb-monitor-profiles/default-passive-lb-monitor"
  ## This will allow a variable to be passed through from consumption.
	member_group {
		group_path = var.nsx_group_path
	}

  snat {
    type = "AUTOMAP"
  }
  tcp_multiplexing_enabled = true
  tcp_multiplexing_number  = 8
}
