.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/wm/RecentTasks;

    check-cast p1, Lcom/android/server/wm/Task;

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
