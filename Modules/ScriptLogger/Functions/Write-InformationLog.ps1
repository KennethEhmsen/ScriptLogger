<#
    .SYNOPSIS
        Log an information message.

    .DESCRIPTION
        Log an information message to the log file, the event log and show it on
        the current console. If the global log level is set to 'warning', no
        information message will be logged.

    .INPUTS
        None.

    .OUTPUTS
        None.

    .EXAMPLE
        PS C:\> Write-InformationLog -Message 'My Information Message'
        Log the information message.

    .NOTES
        Author     : Claudio Spizzi
        License    : MIT License

    .LINK
        https://github.com/claudiospizzi/ScriptLogger
#>

function Write-InformationLog
{
    [CmdletBinding()]
    param
    (
        # The information message.
        [Parameter(Mandatory = $true)]
        [System.String]
        $Message
    )

    Write-Log -Message $Message -Level 'Information'
}
