## Section 12: Requirements for Running Hummingbird on Cloud Platform

Hummingbird's job execution engine consists of the following required components:

1. Orchestration
In order to manage different workflow for Hummingbird's Downsampling and Profiler, a job scheduler or workflow engine
is required. The following services are used in the core providers.
- GCP: Managed by dsub
- AWS: Managed by AWS Batch
- Azure: Managed by Azure Batch

These services allow for planning, scheduling, execution, and real-time monitoring of batch workloads across a range of compute types.

2. Compute
Hummingbird components require Linux compute nodes to run stages in a workflow.
The compute nodes can vary in terms of CPU, Memory, Storage, and GPU in order to accommodate the workload.

3. Storage
Hummingbird components require block storage in order to read and persist information that can be shared across stages in the workflow.
The following services are used in the core providers:
- GCP: Google Cloud Storage
- AWS: S3
- Azure: Blob Storage

The files that are read by Hummingbird are as follows:
- Input files
- Reference files

The types of files generated by Hummingbird are as follows:
- Job execution script
- Downsampling output
- Profiling results