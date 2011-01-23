param($installPath, $toolsPath, $package, $project)
try {
  $project.Object.References.Add("System.Data"); 
  $project.Object.References.Add("System.Data.Entity"); 
}
catch {
  # This is hack to get around "a recent regression in the default branch". This will be removed in a future version. See http://nuget.codeplex.com/Thread/View.aspx?ThreadId=240992 for more information.
  $project.Object.References.Add("System.Data.HACK"); 
  $project.Object.References.Add("System.Data.Entity.HACK"); 
}