.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/Task;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/Task;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;->updateValueToTask(Lcom/android/server/wm/Task;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "finish-voice"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;->updateValueToTask(Lcom/android/server/wm/Task;)V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/android/server/wm/PackagesChange$PackagesTaskChangeCallback;->updateValueToTask(Lcom/android/server/wm/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
