namespace $rootnamespace$.Repositories

open System
open System.Data.Entity
open System.Collections.Generic
open $rootnamespace$.Entities

type SampleRepository() =
    let context = new MyApplicationEntities()
    interface IRepository<ASample> with
        member x.GetAll() = context.Samples |> Seq.cast
        member x.GetById id = context.Samples.Find(id)
        member x.Add item = 
            context.Samples.Add item |> ignore
        member x.Delete id =
            context.Samples.Find(id)
            |> context.Samples.Remove 
            |> ignore
        member x.Save() = context.SaveChanges() |> ignore
