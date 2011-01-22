namespace $rootnamespace$.Repositories

open System.Data.Entity
open System.Data.Entity.Database

type MyApplicationEntities() = 
    // replace "MyApplicationName" with whatever you want the database name to be
    inherit DbContext("MyApplicationName")

    // If you want Entity Framework to drop and regenerate your database automatically whenever you change
    // your model schema, add the following line to the Application_Start() method in Global.asax.cs:
    //do DbDatabase.SetInitializer(new DropCreateDatabaseIfModelChanges<MyApplicationEntities>());

    // Add a new DbSet for each entity that should be persisted to the data store 
    [<DefaultValue(true)>] val mutable samples : DbSet<Sample>
    member x.Samples with get() = x.samples and set(v) = x.samples <- v

    [<DefaultValue(true)>] val mutable sample2s : DbSet<Sample2>
    member x.Sample2s with get() = x.sample2s and set(v) = x.sample2s <- v
