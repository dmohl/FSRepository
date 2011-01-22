namespace $rootnamespace$.Repository 

open System

type Sample() =
    let mutable id = 0
    let mutable createdBy = ""
    let mutable created = DateTime.Now
    member x.Id with get() = sampleId and set(v) = sampleId <- v
    member x.CreatedBy with get() = createdBy and set(v) = createdBy <- v
    member x.Created with get() = created and set(v) = created <- v
