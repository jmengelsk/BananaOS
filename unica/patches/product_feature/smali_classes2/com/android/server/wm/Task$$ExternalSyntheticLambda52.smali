.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$3:Landroid/app/ActivityOptions;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/wm/TaskFragment;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$1:[Z

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$2:Lcom/android/server/wm/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$3:Landroid/app/ActivityOptions;

    iput-boolean p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/wm/TaskFragment;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$1:[Z

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$2:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$3:Landroid/app/ActivityOptions;

    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->f$4:Z

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_f

    goto :goto_16

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x0

    aget-boolean v4, v1, v0

    invoke-virtual {p1, v2, v3, p0}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    or-int/2addr p0, v4

    aput-boolean p0, v1, v0

    return-void
.end method
