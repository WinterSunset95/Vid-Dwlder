
const inquirer = require('inquirer');

(async () => {
    const question = [
        {
            type: 'input',
            name: 'url',
            message: 'Link to video: ',
        }
    ]

    const { url } = await inquirer.prompt(question);
    const link = question.url;
    console.log(link);
}
)();