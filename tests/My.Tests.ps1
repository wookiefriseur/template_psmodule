# Tests for MODULE

Describe 'MODULE tests' {
  BeforeAll {
    # Import WIP modules to be tested
    foreach ($module in $(Get-ChildItem -Path (Join-Path $PSScriptRoot "..") -Filter *.psm1)) {
      Write-Output "Importing $module"
      # prefix: Get-Hash -> Get-WIPHash
      Import-Module -Name $module.FullName -Prefix 'WIP' -Force
    }
  }
}

Describe 'FUNCTION1' {

  Context 'CONTEXT1' {
    It 'TESTCASE1' {
      $expected = EXPECTED
      $input = INPUT

      $actual = ACTUAL

      $actual | Should -Be $expected
    }

    It 'TESTCASE2' {
      $expected = EXPECTED
      $input = INPUT

      $actual = ACTUAL

      $actual | Should -Be $expected
    }
  }

  Context 'CONTEXT2' {
    It 'TESTCASE1' {
      $expected = EXPECTED
      $input = INPUT

      $actual = ACTUAL

      $actual | Should -Be $expected
    }

    It 'TESTCASE2' {
      $expected = EXPECTED
      $input = INPUT

      $actual = ACTUAL

      $actual | Should -Be $expected
    }
  }
}
