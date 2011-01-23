param($installPath, $toolsPath, $package, $project)
if($project.Type -eq 'F#') {
    $project.Object.References.Add("*System.Data");
    $project.Object.References.Add("*System.Data.Entity");
}