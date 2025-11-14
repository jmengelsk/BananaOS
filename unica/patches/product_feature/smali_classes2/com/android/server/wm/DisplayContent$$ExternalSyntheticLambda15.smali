.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch p0, :pswitch_data_22

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const-string/jumbo v0, "removeAllTasks"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;)V

    return-void

    :pswitch_19  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    const-string/jumbo p0, "releaseSelfIfNeeded"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_19  #00000000
        :pswitch_12  #00000001
    .end packed-switch
.end method
