macOS adds an attribute called `com.apple.quarantine`  to apps that are not notarized when downloading or installing them. This command is used to manually remove that attribute. Run 

```bash
sudo xattr -rd com.apple.quarantine /Applications/blinko.app
```
