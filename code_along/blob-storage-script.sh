az storage account create --name tech264raiyanstorage --resource-group tech264 --location uksouth --sku Standard_LRS



#list output
az storage account list --resource-group tech264
#table output
az storage account list --resource-group tech264 --query "[].{Name:name, Location:location, Kind:kind}" --output table


# --auth-mode login to remove login warnings
az storage container create \
    --account-name tech264raiyanstorage \
    --name testcontainer
# without warning 
az storage container create \
    --account-name tech201ramonstorage \
    --name testcontainer \
    --auth-mode login


 
az storage container list --account-name tech264raiyanstorage --auth-mode login
# table output
az storage container list \
    --account-name tech264raiyanstorage \
    --output table \
    --auth-mode login


az storage blob upload \
    --account-name tech264raiyanstorage \
    --container-name testcontainer \
    --name newname_oncloud.txt \
    --file test.txt \
    --auth-mode login


az storage blob list \
    --account-name tech264raiyanstorage \
    --container-name testcontainer \
    --output table \
    --auth-mode login

    