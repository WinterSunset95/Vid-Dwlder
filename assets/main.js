
const inquirer = require('inquirer');

const question = [
    {
        type: 'input',
        name: 'url',
        message: 'Link to video: ',
    }
]

const question = inquirer.prompt(question);
console.log(question);