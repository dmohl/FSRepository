namespace $rootnamespace$.Repositories

type IRepository<'a> =
    abstract Add : 'a -> unit
    abstract Delete : 'a -> unit
    abstract GetAll : unit -> seq<'a>
    abstract GetById : 'b -> 'a
    abstract Save : unit -> unit
