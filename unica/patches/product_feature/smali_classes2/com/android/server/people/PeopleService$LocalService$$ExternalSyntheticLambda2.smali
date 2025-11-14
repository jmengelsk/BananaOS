.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/people/SessionInfo;

    sget p0, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    iget-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
