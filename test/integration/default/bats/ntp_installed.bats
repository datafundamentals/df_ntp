#!/usr/bin/env bats

@test "ntp is officially on the system" {
	run ntpstat
	["$status" -eq 0]
}