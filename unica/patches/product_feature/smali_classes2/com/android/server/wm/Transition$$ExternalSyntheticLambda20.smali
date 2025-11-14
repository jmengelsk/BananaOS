.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Transition;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wm/Transition;

    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$1:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda20;->f$2:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v1, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x6c4a3205cd593ffbL    # 4.409323821846559E213

    invoke-static {v7, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x36ec53650f09c873L    # -1.0968754893250029E44

    invoke-static {v1, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_4
    if-eqz p0, :cond_5

    if-ne p1, p0, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_1
    return v3

    :cond_6
    :goto_2
    return v2
.end method
