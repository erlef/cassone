%% SPDX-License-Identifier: Apache-2.0
%% SPDX-FileCopyrightText: 2026 Stritzinger GmbH

-module(cassone_musl).

-export([fetch/2]).

% musl libc libraries from beam machine
-define(x86_64_url, "https://beam-machine-universal.b-cdn.net/musl/libc-musl-71c35316aff45bbfd243d8eb9bfc4a58b6eb97cee09514cd2030e145b68107fb.so").
-define(aarch64_url, "https://beam-machine-universal.b-cdn.net/musl/libc-musl-6b558025200a5ed1308e2ce2675217afec71b6c5a9d561e52262ca948d59905e.so").
-define(please_do_not_abuse_these_downloads_bandwidth_costs_money, "?please-respect-my-bandwidth-costs=thank-you").


-doc("Returns the path to the cached musl libc library.
The library is downloaded if needed.").
-spec fetch(OS :: cassone:os(), Arch :: cassone:arch()) ->
    string().
fetch(linux,Arch) ->
    URL = make_url(Arch),
    FinalURL = URL ++ ?please_do_not_abuse_these_downloads_bandwidth_costs_money,
    cassone_cache:fetch(FinalURL).

make_url(x86_64) -> ?x86_64_url;
make_url(aarch64) -> ?aarch64_url.
