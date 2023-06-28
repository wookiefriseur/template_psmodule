<#
.SYNOPSIS
    Brief description of what the function does.

.DESCRIPTION
    Detailed description of what the function does.

.EXAMPLE
    Verb-Noun someinput
    # Does xyz
#>
function MyVerb-MyNoun {
  [CmdletBinding()]
  param (
    # Description of the parameter
    [Parameter(Mandatory, Position = 1, ValueFromPipeline = $true)]
    [System.String]
    $MyParameter
  )

  begin {
    # Define any internal helper functions or initial setup here
  }

  process {
    # Main function logic goes here
  }

  end {
    # Any cleanup or final steps go here
  }
}

<# Private helper functions for the module, do not export #>
function myHelper([string] $someInput) {
  return $someInput
}
