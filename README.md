**Script**:

I found [this nice script](https://www.reddit.com/r/bash/comments/1xd53z/small_bash_script_to_get_brainyquotes_quote_of/) on Reddit, but was displeased that it doesn't include the author of the quote.

This script includes the author by piping some sed commands for a bit more complex parsing from [this link](https://www.brainyquote.com/link/quotebr.js).

On the colored version, the output is displayed like in [motivate](https://github.com/mubaris/motivate) (script similar to the `fortune` command).

**Alias example**:

Add in `~/.bashrc`:

```bash
alias quote="<path-to-script>/quote-of-the-day.sh"
```
