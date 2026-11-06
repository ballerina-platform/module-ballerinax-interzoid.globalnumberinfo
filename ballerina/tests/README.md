# Tests

The test suite covers the `getGlobalNumberInfo` operation. By default it runs against a local mock server (`tests/mock_service.bal`) on port 9090, so no real credentials are required. To run against the live Interzoid API, set `IS_LIVE_SERVER=true` and provide your license key in `INTERZOID_LICENSE`.

## Running Tests

```bash
bal test
```
