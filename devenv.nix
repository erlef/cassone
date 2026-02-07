# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2026 Erlang Ecosystem Foundation

{ pkgs, lib, config, inputs, ... }:
{
  packages = with pkgs; [
    git
    reuse
  ];

  languages.erlang = {
    enable = true;
  };
}
