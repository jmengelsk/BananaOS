.class public final Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NO_DEPENDENCIES:Ljava/util/ArrayList;


# instance fields
.field public mDependencies:Ljava/util/ArrayList;

.field public mIgnoreIndirectMembers:Z

.field public final mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field public final mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

.field public mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mReady:Z

.field public final mRootMembers:Landroid/util/ArraySet;

.field public final mSyncId:I

.field public mSyncMethod:I

.field public final mSyncName:Ljava/lang/String;

.field public final mTraceName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/BLASTSyncEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    sget-object p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz p1, :cond_36

    const-string/jumbo p1, "SyncGroup is created, id="

    const-string v0, ", name="

    const-string v1, ", caller="

    invoke-static {p3, p1, v0, p4, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v0, 0x7

    const-string v1, "BLASTSyncEngine"

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_36
    new-instance p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p1, "-SyncReady#"

    invoke-static {p3, p4, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onReadyTraceStart(ILjava/lang/String;)V

    :cond_50
    return-void
.end method


# virtual methods
.method public final finishNow()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    iget v3, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    if-eqz v1, :cond_d

    invoke-interface {v2, v3, v1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onReadyTraceEnd(ILjava/lang/String;)V

    :cond_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    const/4 v5, 0x1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_SYNC_ENGINE_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_45

    int-to-long v6, v3

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x75803f1b8622c18eL

    invoke-static {v1, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_45

    :cond_2e
    aget-boolean v1, v4, v5

    if-eqz v1, :cond_45

    int-to-long v6, v3

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x5c48c1c42ce534dbL  # 3.598854671624468E136

    invoke-static {v1, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_45
    :goto_45
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    iget-object v6, v1, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v7, :cond_58

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_58
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v7

    new-instance v9, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    invoke-direct {v9, v0, v7, v8, v6}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JLandroid/view/SurfaceControl$Transaction;)V

    iget-object v7, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_68
    const/4 v8, 0x0

    if-ltz v7, :cond_7e

    iget-object v10, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10, v6, v0, v8}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    iget-object v8, v9, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->mWcAwaitingCommit:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_68

    :cond_7e
    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;

    invoke-direct {v10, v9}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V

    invoke-virtual {v6, v7, v10}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v10, 0x1388

    iget-object v7, v1, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v9, v1, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v10, v9, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    const/4 v11, 0x2

    const-wide/16 v12, 0x20

    if-ne v10, v11, :cond_e7

    const-string/jumbo v10, "applyPendingTransaction"

    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iput v8, v9, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    iget-object v10, v9, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v11

    if-ne v11, v5, :cond_c1

    iget-object v9, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move/from16 v16, v5

    goto :goto_e3

    :cond_c1
    move v14, v8

    :goto_c2
    if-ge v14, v11, :cond_dc

    iget-object v15, v9, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    move/from16 v16, v5

    iget-object v5, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    goto :goto_c2

    :cond_dc
    move/from16 v16, v5

    iget-object v5, v9, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_e3
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_e9

    :cond_e7
    move/from16 v16, v5

    :goto_e9
    const-string/jumbo v5, "onTransactionReady"

    invoke-static {v12, v13, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-interface {v2, v6, v3}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_145

    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_145

    aget-boolean v2, v4, v16

    if-eqz v2, :cond_11e

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x39ee2a32d7113b1aL  # 1.1897930807208512E-29

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_11e
    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    iget-object v3, v2, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mStartSync:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;->run()V

    iget-object v3, v1, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_13c

    new-instance v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    invoke-virtual {v7, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_145

    :cond_13c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Pending Sync Set didn\'t start a sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_145
    :goto_145
    iget-object v0, v1, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14d
    if-ltz v0, :cond_166

    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_158

    goto :goto_166

    :cond_158
    iget-object v2, v1, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_14d

    :cond_166
    :goto_166
    return-void
.end method

.method public final isIgnoring(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    if-eq p1, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public final onTimeout()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v2

    :goto_14
    const/4 v4, 0x0

    const-string v5, "BLASTSyncEngine"

    if-ltz v1, :cond_46

    iget-object v6, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result v7

    if-nez v7, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unfinished container: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    move v3, v4

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_4d
    if-ltz v1, :cond_6f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unfinished dependency: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    move v3, v4

    goto :goto_4d

    :cond_6f
    if-eqz v3, :cond_89

    iget-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    if-nez v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sync group "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    const-string v3, " timed-out because not ready. If you see this, please file a bug."

    invoke-static {v2, v3, v5, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    invoke-interface {v1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onReadyTimeout()V

    :cond_89
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method
