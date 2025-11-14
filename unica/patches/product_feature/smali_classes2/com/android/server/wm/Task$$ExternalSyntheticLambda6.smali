.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/wm/WindowState;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo p0, "parent_changed"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/server/wm/Task;

    iget-boolean p0, p1, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
