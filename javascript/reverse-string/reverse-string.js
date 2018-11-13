var reverseString = (string) => {
    return string == '' ? '' : string.split('').reverse().join('');
};

module.exports = reverseString;
