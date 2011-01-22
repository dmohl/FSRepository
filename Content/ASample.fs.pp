namespace $rootnamespace$.Entities 

open System

type ASample() =
    let mutable id = 0
    let mutable createdBy = ""
    let mutable created = DateTime.Now
    member x.Id with get() = id and set(v) = id <- v
    member x.CreatedBy with get() = createdBy and set(v) = createdBy <- v
    member x.Created with get() = created and set(v) = created <- v
