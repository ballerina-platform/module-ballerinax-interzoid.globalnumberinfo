# Examples

The `ballerinax/interzoid.globalnumberinfo` connector provides practical examples illustrating usage in various scenarios.

1. [Phone number geolocation](./phone_number_geolocation/phone_number_geolocation.md) - Look up the city, country and primary language of a telephone number.
2. [Mobile number screening](./mobile_number_screening/mobile_number_screening.md) - Screen a list of numbers and report which ones are mobile.

## Prerequisites

Create a `Config.toml` in the example directory with your Interzoid license key as described in the example's documentation:

```toml
licenseKey = "<your Interzoid license key>"
```

## Running an example

Execute the following commands to build an example from the source:

* To build an example:

    ```bash
    bal build
    ```

* To run an example:

    ```bash
    bal run
    ```

## Building the examples with the local module

**Warning**: Due to the absence of support for reading local repositories for single Ballerina files, the Bala of the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally:

* To build all the examples:

    ```bash
    ./build.sh build
    ```

* To run all the examples:

    ```bash
    ./build.sh run
    ```
