## DEFINE VARIABLES
$source_file = "\<directory path>\<filename>.csv"
$list_name = "<name of mailing list goes here>"
$alias = "<the alias of the mailing list>" ##
## CREATE THE DISTRIBUTION LIST
New-DistributionGroup -Name $list_name -Type Distribution  -DisplayName $list_name  -Alias $alias  -ManagedBy "<Comma Separated List of Mailing List Owners>"
##
Import-Csv -Path $source_file -Delimiter "," | ForEach-Object {
    ## CREATE THE MAILCONTACT (Use this option if you are creating a mailing list for external contacts [recipients outside your organization])
    ## New-MailContact -Name $_.name -ExternalEmailAddress $_.email -DisplayName $_.name
    ## ADD CONTCAT TO DISTRIBUTION LIST
	Add-DistributionGroupMember -Identity $list_name -Member $_.email
}
