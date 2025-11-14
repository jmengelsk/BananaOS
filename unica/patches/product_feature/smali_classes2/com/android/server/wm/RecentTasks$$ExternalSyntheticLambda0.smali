.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    sget-object p0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    iget p0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr p0, p1

    return p0
.end method
