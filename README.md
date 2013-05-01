This is a sample for my prototype implementation of Elixir idea #1: Process monitoring.

[tracer](https://github.com/mururu/tracer): A module that trace interactions of processes and send it to server.

[trace_monitor](https://github.com/mururu/trace_monitor): A web application that receive data from `tracer` and display it.

```sh
$ git clone https://github.com/mururu/trace_monitor
$ cd trace_monitor
$ mix deps.get
$ mix server

# in new shell
$ open http://localhost:4000
$ git clone https://github.com/mururu/tracer_sample
$ cd tracer_sample
$ mix deps.get
$ mix run "Tracer.run(self); Sample.run"

# reload your browser
```
