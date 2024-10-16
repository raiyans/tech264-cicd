# Github ssh access
- [Github ssh access](#github-ssh-access)
- [Linking GitHub to a key](#linking-github-to-a-key)
    - [--\> On your Terminal Window](#---on-your-terminal-window)
    - [--\> Make a GitHub Repo](#---make-a-github-repo)

# Linking GitHub to a key
1. Generate a new SSH key.
2. Print the **public** key using `cat`. This will be given to GitHub.
3. Navigate to your **Settings** on GitHub.
   ![diagram](/images/github-settings.png)
4. Find **SSH Keys and GPG keys** and add **New SSH key**.
   ![diagram](/images/add-ssh-key.png)
5. Name the key appropriately.
6. Insert what you printed and save.
 
### --> On your Terminal Window
1. `eval ssh-agent -s` the ssh agent that gives us a pid (process id). The response will look like = `agent pid 764`
1. `ssh-add` your `private key`. This will add your identity.
2. **Test** your connection to GitHub using `ssh -T git@github.com`.
3. You will either get a prompt to then type `yes`, or it will say you're successfuly authenticated. This works **ANYWHERE** in your directory.
 
### --> Make a GitHub Repo
1. Once created, change quick setup option from **HTTPS** to **SSH**.
2. Follow the GitHub instructions on the page, ensuring that the GitHub link does **NOT** start with **HTTPS**.


![diagram](/images/Screenshot_github_ssh.png)