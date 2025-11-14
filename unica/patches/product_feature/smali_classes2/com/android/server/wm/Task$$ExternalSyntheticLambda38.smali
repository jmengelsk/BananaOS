.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/wm/Task;

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/wm/Task;

    iget-boolean v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :cond_2
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
