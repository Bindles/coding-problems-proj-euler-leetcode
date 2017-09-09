// PYTHON
// 917. Reverse Only Letters
s = "ab-cd"
/**
 * @param {string} s
 * @return {string}
 */
//SOL
var reverseOnlyLetters = function(s) {
    // Collect all the letters in the string
    let letters = s.split('').filter(c => /[a-zA-Z]/.test(c));
    // Replace letters in the string with those from the collected letters in reverse order
    let result = s.split('').map(c => /[a-zA-Z]/.test(c) ? letters.pop() : c).join('');
    return result;
}
console.log(reverseOnlyLetters("ab-cd"));          // Output: "dc-ba"
console.log(reverseOnlyLetters("a-bC-dEf-ghIj"));  // Output: "j-Ih-gfE-dCba"
console.log(reverseOnlyLetters("Test1ng-Leet=code-Q!"));  // Output: "Qedo1ct-eeLg=ntse-T!"