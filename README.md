# concourse-volume-resource
Persist data in any docker volume accessible by the worker.

## Build and publish
```bash
docker build -t my-docker-volume-resource .
docker push my-docker-volume-resource
```

## Use in pipeline
```yml
resource_types:
- name: docker-volume
  type: docker-image
  source:
    repository: my-docker-volume-resource

resources:
- name: my-volume
  type: docker-volume
  source:
    # ... your configuration here ...

jobs:
# ... your job definitions here ...
```