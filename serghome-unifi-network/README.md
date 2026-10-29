# UniFi Network migration package

This package is for migration of an existing UniFi Network installation. It is not a fresh-install package: the data directories and protected `controller.env` and `mongodb.env` must be prepared before installation. Never commit credentials to this repository.

The controller and MongoDB use host networking to preserve existing device connectivity. MongoDB binds to localhost. The Umbrel app opens the existing controller HTTPS interface through a redirect. UniFi Protect remains a separate application; this package does not provide a shared UniFi OS console.

Stop the existing controller and database before taking a consistent backup and copying all data with ownership and permissions. Verify the backup and prepare a rollback before cutover. Do not run both controllers or databases on the host simultaneously. The image versions and paths are specific to the original installation and must be reviewed for any other system.
