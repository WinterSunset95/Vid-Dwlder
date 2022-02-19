const link = require('@juliendu11/instagram-downloader');
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
    const links = await link.downloadMedia('https://www.instagram.com/p/CL5QQPOJFl_/', "./");
    console.log();
}
)();
