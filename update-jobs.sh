#!/usr/bin/env bash

[ -z "$1" ] && config_file="/etc/jenkins_jobs/jenkins_jobs.ini" || config_file="$1"

for job_definition in jobs/*
do
  jenkins-jobs --conf "${config_file}" update "${job_definition}"
done
