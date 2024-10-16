# Blob storage 

- [Blob storage](#blob-storage)
- [Downloading and logging into Azure CLI](#downloading-and-logging-into-azure-cli)
- [Diagram of structure](#diagram-of-structure)
- [Script](#script)


# Downloading and logging into Azure CLI
 
1. Insert `curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash` while SSH'd into your VM. This will **download** CLI.
2. Insert `az login`. It will ask you to go to a link and **sign in** via a web browser, giving it the **code** to authenticate. The **code** will be in this same yellow line as the link.
3. **Insert** the code on the browser input and select your account.
4. Once signed in, close the window and **return** to your VM console.
5. **Enter** the number for the subscription you wish to use.
6. Insert `az group list`. This prints out some data regarding the current resource group you reside in.
7. Insert `az storage account create --name tech264(name)storage --resource-group tech264 --location uksouth --sku Standard_LRS` to create a storage account. This will print out all the details in JSON format when successful.
8. Insert `az storage account list --resource-group tech264 --query "[].{Name:name, Location:location, Kind:kind}" --output table` to see it all in table format for readability.
9. Insert the following to create a storage container:
``` bash
az storage container create \
    --account-name tech264kaganstorage \
    --name testcontainer
```
The `\` can be used to break up commands to have it be multiple lines for readability.
 
*You may see a yellow line warning, but fear not! It will create the container anyway. We could add `--auth-mode login` to the end of the command to prevent this!*
 
10. We can double check that we've made it by listing the containers in the storage account using:
``` bash
az storage container list \
    --account-name tech264(name)storage \
    --output table \
    --auth-mode login
```

# Diagram of structure
![diagram](/images/Screenshot_blob_storage.png)

# Script
[script](blob-storage-script.sh/)