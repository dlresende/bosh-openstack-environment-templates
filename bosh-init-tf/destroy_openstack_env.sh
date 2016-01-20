#!/usr/bin/env bash
set -eu

terraform destroy

echo Should the key pair be deleted?
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm bosh.key bosh.key.pub ; break;;
        No ) exit 0;;
    esac
done
