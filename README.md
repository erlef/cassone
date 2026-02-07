cassone
=====

A rebar plugin to build binaries of Erlang/OTP applications for multiple architectures.

Build
-----

    $ rebar3 compile

Use
---

Add the plugin to your rebar config:

```erlang
    {plugins, [
        cassone
    ]}.
```

In your rebar.config fiel you can specify the following options:

- `mode`: The mode to use for the build. Currently only `escript` is supported.
- `targets`: An array of tuples of the targets to build for in the format `{OS, Arch}`.

The following table shows the supported combinations of OS and Arch:

|         | aarch64 | x86_64 |
|--------:|:-------:|:------:|
| linux   | ✅      | ✅     |
| macos   | ❌      | ❌     |
| windows | ❌      | ❌     |

For example, to build for Linux on both aarch64 and x86_64, you can use the following configuration:
```erlang
{cassone, [
    {mode, escript},
    {targets, [{linux, aarch64}, {linux, x86_64}]}
]}.
```




Then just call your plugin directly in an existing application:


    $ rebar3 cassone
    ===> Fetching cassone
    ===> Compiling cassone
    <Plugin Output>
