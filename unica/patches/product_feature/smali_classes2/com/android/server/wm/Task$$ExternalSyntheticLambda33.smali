.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$0:[I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->f$0:[I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_a

    return v0

    :cond_a
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v1, :cond_2c

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_21

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_21
    aget p2, p0, v2

    add-int/2addr p2, v0

    aput p2, p0, v2

    const-string/jumbo p0, "clear-task-stack"

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_2c
    return v2
.end method
