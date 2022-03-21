# CI Tools

Docker image with the following tools:
  - awscli
  - curl
  - jq

## Example Usage

```
- name: S3 Sync
  uses: beginning-devops-lab/ci_tools@v1
  with:
    args: aws s3 sync --delete --acl public-read localdir/ s3://remote-bucket/
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: "eu-west-3"
```