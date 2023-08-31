# litchat

So if you use literotica chat in the browser, you might find it a little bit dated. It turns out, it is possible to use other chat programs with it.

This describes how to set things up using pidgin. I may add other chat clients as I experiment with them and figure it out.

## Connecting with Pidgin

First, you will need to download and install Pidgin from https://www.pidgin.im/

Next, you will need to download at least the GetLitToken.ps1 PowerShell script. What this does is use your lit username and password and retrieves a token that is then used as the password to connect through Pidgin.

Start Pidgin. It should prompt for adding an IM account. Click Add.

In the add dialog, select XMPP for the protocol. Fill in your lit username in the Username field. Fill in `newchat.literotica.com` in the Domain field. For resource, fill in some sort of identifier such as `Home` or `Laptop`. The web client uses `Candy` as the resource. For the password, run the GetLitToken.ps1 script using your username and password. It should spit out a long string. Copy that without spaces to paste into the password field.

Click on the Advanced tab and then paste `https://literotica.com/newchat/http-bind/` into the BOSH URL field.

Click Add.

Now you can click Buddies, Join a Chat...

In the dialog that opens, you can either enter the Room name (which is the name you see but any spaces will have \20 instead) or you can click the Room List button and select from the list of rooms. You can click Join or you can click Add Chat. If you click Add Chat, you have an option to auto-join the room on starting Pidgin and you can add it to a group in the Pidgin client.

