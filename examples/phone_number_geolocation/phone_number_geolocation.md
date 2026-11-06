# Phone Number Geolocation

This example looks up a global telephone number and prints the city and country it is registered in, along with the primary language spoken there.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- An Interzoid license API key. Register at [www.interzoid.com/register](https://www.interzoid.com/register).
- Create a `Config.toml` in this directory:

  ```toml
  licenseKey = "<your Interzoid license key>"
  phoneNumber = "<international number with country code>"
  ```

## Run the example

```bash
bal run
```
