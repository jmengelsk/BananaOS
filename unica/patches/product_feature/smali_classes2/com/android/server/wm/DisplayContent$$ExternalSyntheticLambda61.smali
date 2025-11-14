.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda61;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda61;->f$0:Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    check-cast p2, Lcom/android/server/wm/Task;

    const/4 v0, 0x1

    if-eqz p0, :cond_12

    iput-boolean v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mShouldKeepNoTask:Z

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->removeAllTasks()Lcom/android/server/wm/Task;

    move-result-object p0

    iput-boolean v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    goto :goto_1e

    :cond_12
    iget-boolean p0, p1, Lcom/android/server/wm/TaskDisplayArea;->mShouldKeepNoTask:Z

    if-ne p0, v0, :cond_18

    const/4 p0, 0x0

    goto :goto_1e

    :cond_18
    iput-boolean v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mShouldKeepNoTask:Z

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->removeAllTasks()Lcom/android/server/wm/Task;

    move-result-object p0

    :goto_1e
    if-eqz p0, :cond_21

    return-object p0

    :cond_21
    return-object p2
.end method
