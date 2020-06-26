# C*ns*r*d Str*ngs

Someone has attempted to censor my strings by replacing every vowel with a *,
l*k* th*s. Luckily, I've been able to find the vowels that were removed.

Given a censored string and a string of the censored vowels, return the
original uncensored string.

## Example

```
uncensor("Wh*r* d*d my v*w*ls g*?", "eeioeo") ➞ "Where did my vowels go?"
uncensor("abcd", "") ➞ "abcd"
uncensor("*PP*RC*S*", "UEAE") ➞ "UPPERCASE"
uncensor("Th*t's my s**t", "aui") ➞ "That's my suit"
```

Notes

* The vowels are given in the correct order.
* The number of vowels will match the number of * characters in the censored string.

## Tests

```
Test.assertEquals(uncensor('Wh*r* d*d my v*w*ls g*?', 'eeioeo'), 'Where did my vowels go?')
Test.assertEquals(uncensor('abcd', ''), 'abcd', 'Works with no vowels.')
Test.assertEquals(uncensor('*PP*RC*S*', 'UEAE'), 'UPPERCASE', 'Works with uppercase')
Test.assertEquals(uncensor('Ch**s*, Gr*mm*t -- ch**s*', 'eeeoieee'), 'Cheese, Grommit -- cheese', 'Works with * at the end')
Test.assertEquals(uncensor('*l*ph*nt', 'Eea'), 'Elephant', 'Works with * at the start')
```
