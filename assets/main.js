const link = require('instagram-url-direct');
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
    console.log(url);
    
    let links = await link(url);
    console.log(links);
}
)();