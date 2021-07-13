#!/bin/bash
# Copyright (C) Eclipse Foundation, Inc. and others. 
# 
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License v. 2.0 which is available at
# http://www.eclipse.org/legal/epl-2.0.
# 
# SPDX-License-Identifier: EPL-2.0

# This is a quick and dirty utility for generating a diff between the v1.2
# version of the EFSP and the version that is under development and moving
# that diff into the www.eclipse.org/projects directory (where it can be
# committed to update the website). That is, for this script to be of any
# value, the www.eclipse.org/projects Git repository must be cloned into
# /gitroot/www.eclipse.org/projects on the local file system.
# 
# Further, this script should be run after the Maven build script is run
# to produce an update to the new version of the EFSP.
#
# TODO incorporate this script into the Maven build.
# 
# This script likely only runs on Wayne's desktop.

cd "${BASH_SOURCE%/*}"
npm i node-htmldiff
wget "https://www.eclipse.org/projects/efsp/content/efsp_v1.2.html" -O - > /tmp/old.html
node ./node_modules/node-htmldiff/htmldiff-cli.js /tmp/old.html ../target/generated-docs/efsp.html /gitroot/www.eclipse.org/projects/efsp/content/diff_v1.3.html
