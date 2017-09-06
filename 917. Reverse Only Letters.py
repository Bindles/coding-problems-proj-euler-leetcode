# PYTHON
#* 917. Reverse Only Letters
s = "ab-cd"
def reverse_only_letters(s):
    # Collect all the letters in the string
    letters = [c for c in s if c.isalpha()]
    # Replace letters in the string with those from the collected letters in reverse order
    result = ''.join([letters.pop() if c.isalpha() else c for c in s])
    return result

print(reverse_only_letters("ab-cd"))          # Output: "dc-ba"
print(reverse_only_letters("a-bC-dEf-ghIj"))  # Output: "j-Ih-gfE-dCba"
print(reverse_only_letters("Test1ng-Leet=code-Q!"))  # Output: "Qedo1ct-eeLg=ntse-T!"
