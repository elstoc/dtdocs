---
title: scheduling profile
id: scheduling-profile
weight: 80
draft: false
author: "people"
---

darktable can use the CPU and one or several OpenCL capable GPUs. Depending on the relative performance of these devices, users can choose among certain scheduling profiles to optimize performance. This is achieved by setting the configuration parameter “OpenCL scheduling profile” in the [_cpu/gpu/memory_ tab of the _preferences_](../../preferences-settings/cpu-gpu-memory.md) dialog which offers the following choices:

default
: If an OpenCL capable GPU is found darktable uses it for processing the center image view while the [preview window](../../module-reference/utility-modules/darkroom/navigation.md) is processed on the CPU in parallel. This is the preferred setting for systems with a reasonably fast CPU and a moderately fast GPU. The exact allocation of devices to the various pixelpipe types can be finetuned with the “opencl\_device\_priority” configuration parameter (see [multiple devices](./multiple-devices.md)).

very fast GPU
: With this scheduling profile darktable processes the center image view and the preview window on the GPU sequentially. This is the preferred setting for systems with a GPU that strongly outperforms the CPU.

multiple GPUs
: This setting addresses systems with multiple GPUs whose relative performance does not differ significantly. Whenever a processing job is started darktable uses any currently idle GPU but not the CPU. Users of systems with a variety of GPUs will need better control on their relative priority. They should better select the “default” profile and finetune their system with the “opencl\_device\_priority” configuration parameter (see [multiple devices](./multiple-devices.md)).

On first start-up or after any detected change in the GPU configuration of your system darktable tries to identify the best suited profile for you. You can change it at any time in the [_cpu/gpu/memory_ tab of the _preferences_](../../preferences-settings/cpu-gpu-memory.md) dialog.