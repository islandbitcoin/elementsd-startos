// To utilize the default config system built, this file is required. It defines the *structure* of the configuration file. These structured options display as changeable UI elements within the "Config" section of the service details page in the StartOS UI.

import { compat, types as T } from "../deps.ts";

export const getConfig: T.ExpectedExports.getConfig = compat.getConfig({
    "bitcoind-user": {
      type: "pointer",
      name: "RPC Username",
      description: "The username for Bitcoin Core's RPC interface",
      subtype: "package",
      "package-id": "bitcoind",
      target: "config",
      multi: false,
      selector: "$.rpc.username",
    },
    "bitcoind-password": {
      type: "pointer",
      name: "RPC Password",
      description: "The password for Bitcoin Core's RPC interface",
      subtype: "package",
      "package-id": "bitcoind",
      target: "config",
      multi: false,
      selector: "$.rpc.password",
    },
});
