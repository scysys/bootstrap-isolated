# Bootstrap Isolated

Automatic processor to create Isolated Bootstrap CSS, that does not conflict with any other Integrations.

# Using it on your projects
## Include the files you need
### bootstrap.css

**New:** bootstrap-isolated.css

```html
https://scysys.github.io/Bootstrap-Isolated/4.3.1/css/bootstrap-isolated.css
```

### bootstrap-grid.css

**New:** bootstrap-grid-isolated.css

```html
https://scysys.github.io/Bootstrap-Isolated/4.3.1/css/bootstrap-grid-isolated.css
```

### bootstrap-reboot.css

**New:** bootstrap-reboot-isolated.css

```html
https://scysys.github.io/Bootstrap-Isolated/4.3.1/css/bootstrap-reboot-isolated.css
```

### Use it on your site
```html
<div class="bootstrap-isolated">
<!-- My Bootstrap based section -->
</div>
```

# Process your own Isolated Bootstrap
- Clone this repository
- Copy all original Bootstrap CSS files under "bootstrap-processor/css/"
- Open your terminal and follow the instructions below

```
cd bootstrap-processor
chmod +x compile.sh
./compile.sh
```

One-liner

```
cd bootstrap-processor;chmod +x compile.sh;./compile.sh
```

After that you find you isolated Bootstrap CSS under "bootstrap-processor/isolated/"

# Note
Create your own isolated bootstrap or wait until i add an newer bootstrap version to this repository.
