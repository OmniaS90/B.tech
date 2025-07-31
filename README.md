Project Setup: Robot Framework + Playwright (Browser Library)
💻 For Windows Users
--------------------------------------------------------------------
🔽 **Step 1:** Download Python
Go to: https://www.python.org/downloads/windows/

Click the “Download Python 3.x.x” button.

--------------------------------------------------------------------
⚙️ **Step 2:** Run the Installer
When the installer opens:

✅ IMPORTANT:
☑️ Check the box: Add Python 3.x to PATH
📍 Then click: Install Now

This will install both Python and pip.

--------------------------------------------------------------------

🧪 **Step 3:** Verify Installation
After installation, open Command Prompt and run:
python --version
pip --version

You should see versions printed like:
Python 3.11.6
pip 23.2.1 from ...

--------------------------------------------------------------------

🧰 **Step 4:** Install Robot Framework
Once Python and pip are working, install Robot Framework with:
pip install robotframework

--------------------------------------------------------------------

📥 **Step 5:** Install the Browser Library (Playwright)
pip install robotframework-browser

Then install the necessary Playwright browsers:
rfbrowser init

--------------------------------------------------------------------

✅  **Step 6:** Verify Installation:
robot --version
python -m Browser.entry init

--------------------------------------------------------------------

✅  **Step 7:** Add Robot Framework extention:
From fille menu => Settings => Plugins 
search for "Hyper RobotFramework Support" extention and install it

--------------------------------------------------------------------

⚠️ **HINT:** Make sure the IDE is using the proper interpretter:
From fille menu => Settings => "Project: B.tech" => Python Interpretter => Click Add Interpretter => Add Local Interpretter => Select The environment variable => Check Inheret packages from base interpretter => Check make available to all projects



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Project Structure**
Here is the layout for this automation project:


```text
B.tech/
│
├── Tests/
│   ├── __init__.robot     #this file contains the suit setup & tear down for all test suits under the tests directory
│   └── SearchItem.robot             
│
├── Resources/
│   ├── common.robot             # Common reusable resources like keywords
│   └── POM      
│       ├── Chart.robot             # contains Chart elements locators , variables and keywords related to chart only
│       ├── DashBoard.robot         # contains DashBoard elements locators , variables and keywords related to DashBoard only
│       └── ItemPage.robot          # contains ItemPage elements locators , variables and keywords related to ItemPage only
│
├── Results/                        # Output folder for reports & logs (created after running tests)
│   ├── output.xml
│   ├── report.html
│   └── log.html
```
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Runner Command**

You can use this command in the project terminal to run the test using Tags & get the test result documented to Results Directory:
robot  -d   Results      -i       SearchItem        Tests

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Useful Links**

[Robot Framework Documentation](https://robotframework.org/)

[Robot Framework Browser Library](https://marketsquare.github.io/robotframework-browser/Browser.html)

[Playwright for Python](https://playwright.dev/python/)
