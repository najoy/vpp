#!/bin/bash

# Copyright (c) 2022 Cisco and/or its affiliates.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo "---> .ci/scripts/vpp/docs_spell.sh"

if grep -qE '^docs\-%' Makefile && grep -qE '^spell' docs/Makefile
then
	make docs-spell
else
    echo "Can't find docs-spell target in Makefile - skipping docs-spell"
fi
