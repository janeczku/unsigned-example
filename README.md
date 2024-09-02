# cosign-example

Example for signing container images with [Sigstore](https://sigstore.dev/) [Cosign](https://docs.sigstore.dev/cosign/overview).

The signed image created by the Github Action workflow can be verified like so:

```bash
cosign verify \
  ghcr.io/janeczku/cosign-example:latest \
  --certificate-identity "https://github.com/janeczku/cosign-example/.github/workflows/release.yaml@refs/heads/main" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com" \
  | jq .
```

## LICENSE

[MIT](LICENSE)
