# GTM-Tag-Templates_async-script-loader-with-callback-function
A GTM custom template that loads an external resource file to your site through an async script and upon successfully doing so executes a callback function that pushes an event of your choice to the dataLayer.

# How to import this custom template tag into you GTM container
1. Download the .tpl file you will find in this repository
2. Browse to the templates section in your Google Tag Manager container. 
3. Click on the 'New' button within the 'Tag Templates' section.
4. Click on the three dots on the top right corner of the screen and import the .tpl file.

#How to use this custom template
Once you have uploaded the .tpl file to you Google Tag Manager container, it is important that you update the 'Permissions' in order to authorize the tag template to call and load the external resource file from the hostname and path you decide. Until this tag template is updated you will only be able to call files that are hosted under site's domain. You will run into CORS errors if not. 

![Screenshot](https://github.com/temphoyos/GTM-Tag-Templates_async-script-loader-with-callback-function/blob/main/Templates%20permissions%20tab.png)

Once you have done this and saved the custom template, click on 'Tags' (left hand side menu), then click on 'Create New Tag' and select the 'Async script loader with callback function' custom template. Input the source url you want to load and the event you want to push to the dataLayer when the task is acomplished. Both fields are mandatory. 

![Screenshot](https://github.com/temphoyos/GTM-Tag-Templates_async-script-loader-with-callback-function/blob/main/Tag%20configuration%20fields.png)

Assign a trigger of your choice to fire the tag and you're ready to go!
