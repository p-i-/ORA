Today we made a simple webpage demonstrating HTML, CSS and JavaScript.

Initially we worked on http://www.jsfiddle.net but this had some problems.

So instead we created a .html file on the desktop and opened it with our web browser to inspect the final result.

Next challenge is to upload it to our server:

    sftp root@12.34.56.78
    
    cd /var/www/html
    lcd ~/Desktop
    
Ok, so we are in the correct remote folder and the correct local folder.  Use `pwd`,  `lpwd` and `ls`,  `lls` to confirm you're in the right place.  Notice that initial `l` stands for **LOCAL**.

Note that you're inside the `sftp` program running in your local shell.  This program exposes the  `cd` `ls` `pwd` shell commands and a few others. But not many! Type `help` to have a look!

This is assuming your web-root is `/var/www/html` on the remote machine.  Just read the text that appears when you `ssh` into it. It should tell you the web-root.

    put hello.html
    
This will `put` (/send/copy) the `hello.html` file to the remote location.

You can also `get` files to go to the other way.

Now you can point your browser at http://12.34.56.78/hello.html to see your page rendered.

As a final step, add a hyperlink from your main `index.html` landing page to your new page:

    ssh root@12.34.56.78
    cd /var/www/html
    nano index.html
    
and insert `<a href="hello.html">Hello Page</a>` just before the end of the body.

Point your browser to http://12.34.56.78/ to check it works!
