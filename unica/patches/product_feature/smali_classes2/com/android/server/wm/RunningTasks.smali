.class public final Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAllowed:Z

.field public mCallingUid:I

.field public mCrossUser:Z

.field public mFilterOnlyVisibleRecents:Z

.field public mKeepIntentExtra:Z

.field public mProfileIds:Landroid/util/ArraySet;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public final mTmpFocusedTasks:Ljava/util/ArrayList;

.field public final mTmpInvisibleTasks:Ljava/util/ArrayList;

.field public final mTmpSortedTasks:Ljava/util/ArrayList;

.field public final mTmpVisibleTasks:Ljava/util/ArrayList;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_46

    :cond_a
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    if-eq v0, v1, :cond_2c

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    if-eq v0, v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_46

    :cond_27
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_2c

    goto :goto_46

    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_47

    :goto_46
    return-void

    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_53
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getTasks(ILjava/util/List;ILcom/android/server/wm/RecentTasks;Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;Z)V
    .registers 16

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    and-int/lit8 p6, p3, 0x4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p6, v0, :cond_14

    move p6, v1

    goto :goto_15

    :cond_14
    move p6, v2

    :goto_15
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    iput-object p7, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    and-int/lit8 p6, p3, 0x2

    const/4 p7, 0x2

    if-ne p6, p7, :cond_20

    move p6, v1

    goto :goto_21

    :cond_20
    move p6, v2

    :goto_21
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    and-int/lit8 p6, p3, 0x1

    if-ne p6, v1, :cond_29

    move p6, v1

    goto :goto_2a

    :cond_29
    move p6, v2

    :goto_2a
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    iput-object p4, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    const/16 p4, 0x8

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_35

    move p3, v1

    goto :goto_36

    :cond_35
    move p3, v2

    :goto_36
    iput-boolean p3, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    instance-of p3, p5, Lcom/android/server/wm/RootWindowContainer;

    if-eqz p3, :cond_47

    check-cast p5, Lcom/android/server/wm/RootWindowContainer;

    new-instance p3, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RunningTasks;)V

    invoke-virtual {p5, p3}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    goto :goto_64

    :cond_47
    invoke-virtual {p5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_54

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_54

    iget-object p4, p3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_54
    if-eqz p4, :cond_61

    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p3

    if-eqz p3, :cond_61

    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    invoke-virtual {p5, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :goto_64
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    move p4, v2

    :goto_6b
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_8b

    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/wm/Task;

    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_88

    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 p4, p4, 0x1

    goto :goto_6b

    :cond_8b
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_9a

    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9a
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a9

    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a9
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    :goto_b7
    if-ge v2, p1, :cond_f7

    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/wm/Task;

    if-eqz p8, :cond_ca

    invoke-virtual {p6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p7

    if-nez p7, :cond_ca

    goto :goto_f4

    :cond_ca
    if-ge v2, p3, :cond_d1

    int-to-long v3, p1

    add-long/2addr v3, p4

    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_d3

    :cond_d1
    const-wide/16 v3, -0x1

    :goto_d3
    new-instance p7, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p7}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    xor-int/2addr v0, v1

    invoke-virtual {p6, p7, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_e6

    iput-wide v3, p7, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    :cond_e6
    iget v0, p7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_f1

    invoke-static {p6, p7}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    :cond_f1
    invoke-interface {p2, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    :cond_f7
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
