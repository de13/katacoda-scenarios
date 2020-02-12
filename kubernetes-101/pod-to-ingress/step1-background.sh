#!/bin/bash

show_progress()
{
  echo -n "Waiting for the environment to be ready..."
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  kubectl wait --timeout=600s --for=condition=Ready nodes/master
  done
}

show_progress