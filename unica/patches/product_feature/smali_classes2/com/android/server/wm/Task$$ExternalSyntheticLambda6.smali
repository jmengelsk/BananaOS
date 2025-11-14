.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p0, :pswitch_data_26

    check-cast p1, Lcom/android/server/wm/WindowState;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    return-void

    :pswitch_b  #0x2
    check-cast p1, Lcom/android/server/wm/WindowState;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    return-void

    :pswitch_12  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo p0, "parent_changed"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    return-void

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    iget-boolean p0, p1, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    :cond_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_12  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
