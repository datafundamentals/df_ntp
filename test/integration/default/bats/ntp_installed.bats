#!/usr/bin/env bats

@test "ntp is officially on the system" {
	run sudo ntpstat
	["$status" -eq 0]
}

@test "ntp is synced up" {
	run sudo echo $?
	["status" -eq 0]
}