.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/Task;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/Task;

    packed-switch v0, :pswitch_data_3e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendFreeformLogging()V

    return-void

    :pswitch_b  #0x1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_38

    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_38

    :cond_26
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_38

    :cond_2d
    const-string/jumbo v1, "Transition"

    const-string v2, "Enter-PIP was started but not completed, this is a Shell/SysUI bug. This state breaks gesture-nav, so attempting clean-up."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_38
    :goto_38
    return-void

    :pswitch_39  #0x0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendFreeformLogging()V

    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39  #00000000
        :pswitch_b  #00000001
    .end packed-switch
.end method
