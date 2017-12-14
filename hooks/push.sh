#!/usr/bin/env bash

pg_versions=('9.2', '9.3', '9.4', '9.5', '9.6')
for pg_version in ${pg_versions}[@]; do
docker push gocddev/gocd-dev-build:centos-6-pg"$pg_version"-"$SOURCE_BRANCH"
docker push gocddev/gocd-dev-build:centos-7-pg"$pg_version"-"$SOURCE_BRANCH"
done

docker push gocddev/gocd-dev-build:centos-6-"$SOURCE_BRANCH"
docker push gocddev/gocd-dev-build:centos-7-"$SOURCE_BRANCH"