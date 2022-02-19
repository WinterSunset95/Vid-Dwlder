
const inquirer = require('inquirer');

(async () => {
    const question = [
        {
            type: 'input',
            name: 'url',
            message: 'Link to video: ',
        }
    ]

    const { answer } = await inquirer.prompt(question);
    console.log(answer);
}
)