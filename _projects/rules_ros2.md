---
layout: page
title: rules_ros2 — Build ROS 2 with Bazel
description: Open-source Bazel rules for building, testing and deploying ROS 2 applications. No apt, no colcon, fully hermetic.
status: Open source · Author & maintainer · 2021 – present
order: 1
permalink: /projects/rules_ros2/
---

<style>
  .r2-stats { display: grid; grid-template-columns: repeat(auto-fit, minmax(120px, 1fr)); gap: 12px; margin: 1.5em 0 2em; }
  .r2-stat { border: 1px solid #e8e8e8; border-radius: 8px; padding: 14px 12px; text-align: center; }
  .r2-stat b { display: block; font-size: 1.8em; line-height: 1.1; color: #2a7ae2; }
  .r2-stat span { font-size: 0.85em; color: #828282; }
  .r2-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 12px; margin: 1em 0 2em; }
  .r2-card { border: 1px solid #e8e8e8; border-left: 4px solid #2a7ae2; border-radius: 6px; padding: 10px 14px; }
  .r2-card strong { display: block; }
  .r2-card small { color: #828282; }
  .r2-note { font-size: 0.85em; color: #828282; }
</style>

**[github.com/mvukov/rules_ros2](https://github.com/mvukov/rules_ros2)** ·
**[Bazel Central Registry](https://registry.bazel.build/modules/com_github_mvukov_rules_ros2)**

ROS 2 normally assumes you install it system-wide with `apt` and build your code with `colcon`.
That works for a lab. It gets painful when you have a monorepo, a fleet of robots,
cross-compilation, a CI farm and a need for builds that give the same result every time.
`rules_ros2` lets you build ROS 2 itself, from source, as ordinary Bazel targets next to your own
code. Nothing ROS-related has to be installed on the host. With a hermetic C++ toolchain
(e.g. [toolchains_llvm](https://github.com/bazel-contrib/toolchains_llvm)) and a recent [rules_python](https://github.com/bazel-contrib/rules_python), Bazel is the only prerequisite.

I started the project in May 2021, a few months after its predecessor
[rules_ros](https://github.com/mvukov/rules_ros) for ROS 1. Since then it has grown into one of the
main ways people build ROS 2 with Bazel.

## What it does

rules_ros2 covers the whole path from a `.msg` file to a deployed, observable robot application,
all in one Bazel build graph:

1. **Define interfaces.** Messages, services and actions are declared with
   `ros2_interface_library`, and depend on each other like any other Bazel target.
2. **Generate code for every language.** C, C++, Python and Rust bindings are generated on
   demand, and only for the interfaces a target actually uses.
3. **Write nodes.** `ros2_cpp_binary`, `ros2_py_binary` and Rust binaries are ordinary Bazel
   targets, and `ros2_plugin` handles pluginlib plugins.
4. **Define deployments.** `ros2_launch` bundles nodes, launch files and parameters into a single
   runnable target that you can `bazel run` locally or package for a robot.
5. **Test the system.** `ros2_test` runs launch-based integration tests hermetically, so they can
   run in parallel and be cached in CI.
6. **Visualize and record.** [`foxglove_bridge`](https://github.com/foxglove/ros-foxglove-bridge)
   provides live visualization, and `ros2_bag` records and replays data (including MCAP).

The pieces you need to run in production are built in too:

* **Zero-copy transport** through CycloneDDS with the [iceoryx](https://github.com/eclipse-iceoryx/iceoryx)
  shared-memory backend.
* **Pluggable logging backends:** spdlog, syslog and noop.

## Who uses it

The rules are open source and don't phone home, so there's no complete list. These are the
public signals I could find.

### Contributors

Engineers from the following organizations have contributed code (affiliations taken from public GitHub profiles):

<div class="r2-grid">
  <div class="r2-card"><strong>FERNRIDE</strong><small>Autonomous logistics</small></div>
  <div class="r2-card"><strong>Humanoid</strong><small>Humanoid robotics</small></div>
  <div class="r2-card"><strong>Intrinsic (Alphabet)</strong><small>Several contributors; also maintains the BCR entry</small></div>
  <div class="r2-card"><strong>Skydio</strong><small>Autonomous drones</small></div>
  <div class="r2-card"><strong>Toyota Research Institute</strong><small>Robotics research</small></div>
  <div class="r2-card"><strong>Uber</strong><small>Bazel &amp; build infrastructure</small></div>
  <div class="r2-card"><strong>UC Berkeley</strong><small>Berkeley AI Research</small></div>
  <div class="r2-card"><strong>Wayve</strong><small>Autonomous driving</small></div>
</div>

Organizations that keep their own forks include Wayve, Fetch Robotics, ReSim, the Institute for
Autonomous Systems Technology (TAS) at Universität der Bundeswehr München, and Oasis Robotics.

### Talks

* **FOSDEM 2026:** [*Productionising ROS when you have no choice (with Bazel)*](https://archive.fosdem.org/2026/schedule/event/MUXVUK-prod-ros-bazel/)
  by Ricardo Delfin covers using rules_ros2 to produce real ROS build artifacts and ship them to
  robots in production with OTA updates.

## Why Bazel for robotics?

Robotics stacks mix C++, Python, Rust, CUDA, generated code and firmware. They often target
several architectures and have to be reproducible for safety and certification. Bazel handles
that well: hermetic toolchains, remote caching and execution, precise incremental builds, and one
dependency graph from message definitions to deployable images. ROS 2 was the missing piece.
rules_ros2 lets you keep the ROS ecosystem without giving up that build discipline.

## Related

Found a bug or want a feature? Please [open an issue](https://github.com/mvukov/rules_ros2/issues).
Using rules_ros2 at your company and happy to be listed here? [Get in touch](https://www.linkedin.com/in/mvukov/).
