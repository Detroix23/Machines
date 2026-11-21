<#
	Arguments:
		1. `path`.
#>
param(
	[Parameter(Mandatory)]
	[string]$path_to_count
);

Get-ChildItem $path_to_count -Recurse -File | Measure-Object | ForEach-Object{$_.Count}
