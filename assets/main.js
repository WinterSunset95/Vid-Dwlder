const save = require('instagram-save');
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
    save(url, 'uwu.mp4').then(res => {
        console.log(res.file);
    })
}
)();