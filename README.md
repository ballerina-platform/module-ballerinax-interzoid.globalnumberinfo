# Ballerina Interzoid Global Number Info connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-interzoid.globalnumberinfo/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.globalnumberinfo/actions/workflows/ci.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-interzoid.globalnumberinfo.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.globalnumberinfo/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/interzoid.globalnumberinfo.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Finterzoid.globalnumberinfo)

## Overview

The Interzoid Global Number Info connector lets Ballerina applications look up geographic and device details for an international telephone number. For a given number it returns the country, region and primary city, the primary languages spoken, and whether the number belongs to a mobile device.

This connector supports version 1.0.0 of the Interzoid Get Global Phone Number Information API.

## Setup guide

To use the connector you need an Interzoid license API key.

1. Register for an account at [Interzoid](https://www.interzoid.com/register).

2. Copy the license API key from your Interzoid account.

3. Supply the key as the `license` field of the connector's `ApiKeysConfig` when you create the client.

## Quickstart

To use the `interzoid.globalnumberinfo` connector in your Ballerina application, update the `.bal` file as follows:

### Step 1: Import the module

```ballerina
import ballerinax/interzoid.globalnumberinfo as gni;
```

### Step 2: Instantiate a new connector

Create a `Config.toml` file with your license key:

```toml
licenseKey = "<your Interzoid license key>"
```

Then create a `gni:Client` with the key:

```ballerina
configurable string licenseKey = ?;

final gni:Client globalNumberClient = check new ({license: licenseKey});
```

### Step 3: Invoke the connector operation

```ballerina
public function main() returns error? {
    gni:GlobalNumberInfo _ = check globalNumberClient->getGlobalNumberInfo(intlnumber = "+14155552671");
}
```

### Step 4: Run the Ballerina application

```bash
bal run
```

## Examples

The `Interzoid Global Number Info` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](examples/), covering the following use cases:

1. [Phone number geolocation](examples/phone_number_geolocation/phone_number_geolocation.md) - Look up the city, country and primary language of a telephone number.
2. [Mobile number screening](examples/mobile_number_screening/mobile_number_screening.md) - Screen a list of numbers and report which ones are mobile.

## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 21. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.

4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`interzoid.globalnumberinfo` package](https://central.ballerina.io/ballerinax/interzoid.globalnumberinfo/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
