## ruby-which

by Pistos

For those times when you don't know which version of a library you're require-ing,
or from what path on your system it's coming from.

<manveru> you need organization...

### Example usage:

  puts Which.which( 'rails' )

Or from your shell:

  rwhich rails

Returns the full library path if the given library is found in the $LOAD_PATH.
