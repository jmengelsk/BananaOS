.class public final Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLastSentTaskInfos:Ljava/util/WeakHashMap;

.field public final mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

.field public final mPendingTaskEvents:Ljava/util/ArrayList;

.field public mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static -$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    return-void
.end method


# virtual methods
.method public final dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1, v4, v3}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iput-boolean v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isTopTaskInStage:Z

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v1, v0, v3}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    iput-boolean v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->hasConfigChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x5c1f6ac120abc8feL    # -7.129758488736769E-136

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p0, p2}, Landroid/window/ITaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "TaskOrganizerController"

    const-string p2, "Exception sending onTaskInfoChanged callback"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public getPendingEventList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eqz v3, :cond_0

    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
