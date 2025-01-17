# Updating

Okay, so n# Updating CmdrX

Maintaining an up-to-date version of CmdrX ensures optimal performance, security, and access to the latest features. Follow the procedures below to update CmdrX according to your installation method.

## Model File (Preferred Method)

1. Navigate to the [latest release](https://github.com/BiraruX/CmdrX/releases/latest) page.
2. Download the most recent `CmdrX.rbxm` file from the "Assets" section.
3. Open **Roblox Studio**.
4. Remove the outdated `CmdrX` ModuleScript from your game.
5. Import the updated `CmdrX.rbxm` file by either:
   - Dragging and dropping it into the viewport, or
   - Accessing the `Model` tab → `Advanced` section → Selecting `Model`, then locating and opening the downloaded file.
6. Relocate the `CmdrX` ModuleScript to `ServerScriptService` or `ServerStorage` for optimal security and performance.
7. Conduct thorough testing to confirm seamless integration.

## Wally Package Manager (Recommended for Rojo Users)

1. Open your project's `wally.toml` configuration file.
2. Update the CmdrX dependency version as follows:
   ```toml
   [server-dependencies]
   CmdrX = "birarux/cmdrx@^latest-version"
   ```
   Replace `latest-version` with the latest release version, available [here](https://github.com/BiraruX/CmdrX/releases/latest).
3. Execute the following command:
   ```sh
   wally install
   ```
4. Synchronize your updated dependencies using Rojo.
5. Run tests to ensure compatibility.

## Git Submodule (Advanced Users, Requires Rojo)

1. Open a terminal in your project's root directory.
2. Execute the following command to fetch the latest updates:
   ```sh
   git submodule update --remote
   ```
3. Synchronize project files using Rojo, if required.
4. Validate functionality by running comprehensive tests.

## Manual Update (Not Recommended)

1. Download the latest CmdrX source code from the [latest release](https://github.com/BiraruX/CmdrX/releases/latest).
2. Extract and replace your existing `CmdrX` directory with the newly downloaded version.
3. Use Rojo to sync the updated folder with your project.
4. Perform rigorous testing to detect and resolve potential issues.

## Post-Update

- **Avoid modifying CmdrX's core source code**, as it breaks future updates and may introduce unexpected behavior.
- Review the [changelog](https://github.com/BiraruX/CmdrX/releases) for any critical updates, breaking changes, or new features.

For troubleshooting or further assistance, visit the [BiraruX Discord server](https://discord.com/invite/KTbpAEhWsf).

:::note Work in progress

We're sorry but this article has yet to be written.

:::
