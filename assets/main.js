
const inquirer = require('inquirer');

const question = [
    {
        type: 'input',
        name: 'url',
        message: 'Link to video: ',
    }
]

const { answer } = inquirer.prompt(question);
console.log(answer);