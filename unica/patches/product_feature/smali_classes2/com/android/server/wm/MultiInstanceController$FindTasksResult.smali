.class public final Lcom/android/server/wm/MultiInstanceController$FindTasksResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public intent:Landroid/content/Intent;

.field public isDocument:Z

.field public mTarget:Lcom/android/server/wm/ActivityRecord;

.field public userId:I


# virtual methods
.method public final process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    const/4 p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method
