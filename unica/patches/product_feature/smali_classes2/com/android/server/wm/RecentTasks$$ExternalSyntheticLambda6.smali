.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    iget-object p0, p1, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    return-object p0
.end method
