param($installPath, $toolsPath, $package, $project)
try {
  $project.Object.References.Add("System.Data"); 
  $project.Object.References.Add("System.Data.Entity"); 
}
catch {
  # This is a hack to get around a problem that currently occurs when trying to add these references to the F# project. This will be removed in a future version. See http://nuget.codeplex.com/Thread/View.aspx?ThreadId=240992 for more information.
  $project.Object.References.Add("System.Data.HACK"); 
  $project.Object.References.Add("System.Data.Entity.HACK"); 
}