_Author_:  @DimuthuMadushan \
_Created_: 2026/10/26 \
_Updated_: 2026/10/26 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Interzoid Global Number Info. 
The OpenAPI specification is obtained from [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/interzoid/globalnumberinfo/1.0.0/openapi.json).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

## Sanitations

1. Added an API key security scheme `licenseKey` (`type: apiKey`, `in: query`, `name: license`) and a top-level `security` requirement, and removed the `license` query parameter from `getglobalnumberinfo`. The original spec had no security scheme and passed the license key as a plain required query parameter, so the client now takes it as `ApiKeysConfig`. This change was made in the original spec `docs/spec/openapi.json`.

2. Added descriptions to every property of the `200` response schema (`Country`, `Region`, `PrimaryCity`, `PrimaryLanguage`, `Language2`, `Language3`, `Mobile`, `Wealth`, `Code`, `Credits`) so the generated record has no undocumented fields. This change was made in the original spec `docs/spec/openapi.json`.

3. Renamed the operationId `getglobalnumberinfo` to `getGlobalNumberInfo` (recorded in `ai-mappings.json`).

4. Renamed the inline response schema `InlineResponse200` to `GlobalNumberInfo` (recorded in `ai-mappings.json`).

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

Note: The license year is hardcoded to 2026, change if necessary.
