
function Get-SharePointLists
{
    [CmdletBinding()]
    Param(
    )

    Begin
    {
        . ".\Get-GraphToken.ps1"
    }
    Process
    {   
        $token = Get-GraphToken
        $Uri = "https://graph.microsoft.com/v1.0/sites/atpdk.sharepoint.com,17a2d032-234e-4d4c-b7b3-ddfd42ebaf05,e746ef5b-4bfe-4c82-bc87-dfc8878fa798/lists/88c0ace4-e302-414b-ad9c-e753ce9e918b/items?expand=columns"
        $res = Invoke-RestMethod -Uri $Uri -Method Get -ContentType "application/json" `
                                        -Headers @{Authorization=("Bearer {0}" -f $token)}
        Write-Output $res.value
    }
    End
    {
    }
}