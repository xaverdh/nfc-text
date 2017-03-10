# nfc-text

NFC normalized text.

## What is this ?

This provides a type for normalized text (as in [Data.Text][data-text]).
  [data-text]: https://github.com/bos/text

## Why is it useful ?

Comparing text for equality is nontrivial. The Eq instance from
[Data.Text][data-text] currently compares the underlying bytestrings byte for byte,
which in most situations is probably not what you want. This is especially
problematic when using Text as input for hash maps. Until the time comes when
Data.Text does unicode normalization internally and / or provides a proper Eq instance,
this module provides a temporary solution.

