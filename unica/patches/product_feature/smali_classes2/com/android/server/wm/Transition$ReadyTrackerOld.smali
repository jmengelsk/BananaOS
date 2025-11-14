.class public final Lcom/android/server/wm/Transition$ReadyTrackerOld;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeferReadyDepth:I

.field public final mReadyGroups:Landroid/util/ArrayMap;

.field public mReadyOverride:Z

.field public mUsed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    iput v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return-void
.end method


# virtual methods
.method public final allReady()Z
    .registers 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    iget v4, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    int-to-long v4, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v2

    :goto_15
    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3e

    if-eqz v7, :cond_24

    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v3, v4, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x2d4b2a4e4122c1f1L  # -2.6525701205501237E90

    const/16 v5, 0x1f

    invoke-static {v7, v3, v4, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_62
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    if-nez v0, :cond_67

    goto :goto_9d

    :cond_67
    iget v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    if-lez v0, :cond_6c

    goto :goto_9d

    :cond_6c
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    if-eqz v0, :cond_71

    goto :goto_a1

    :cond_71
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_78
    if-ltz v0, :cond_a1

    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_8f

    goto :goto_9e

    :cond_8f
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9e

    :goto_9d
    return v2

    :cond_9e
    :goto_9e
    add-int/lit8 v0, v0, -0x1

    goto :goto_78

    :cond_a1
    :goto_a1
    return v1
.end method
