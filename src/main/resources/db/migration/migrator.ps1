$migrationFiles = Get-ChildItem -Filter "*.sql" -Path $PSScriptRoot | Sort-Object
foreach ($migration in $migrationFiles)
{
    $migrationPath = $PSScriptRoot + "/" + $migration
    psql -U postgres -p 5432 -d somethies -h localhost -f $migrationPath -a
}

write-host "ok"