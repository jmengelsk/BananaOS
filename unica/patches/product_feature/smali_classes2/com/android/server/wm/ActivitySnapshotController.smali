.class public final Lcom/android/server/wm/ActivitySnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOnBackPressedActivities:Landroid/util/ArraySet;

.field final mPendingDeleteActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingLoadActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemoveActivity:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSavedFilesInOrder:Ljava/util/ArrayList;

.field public final mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTmpBelowActivities:Ljava/util/ArrayList;

.field public final mTmpTransitionParticipants:Ljava/util/ArrayList;

.field public final mUserSavedFiles:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    new-instance p1, Lcom/android/server/wm/ActivitySnapshotCache;

    const-string p2, "Activity"

    invoke-direct {p1, p2}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    return-void
.end method

.method public static getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-eq p0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V
    .locals 6

    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Duplicate request for recording activity snapshot "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    aget v3, p3, v1

    xor-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v3

    array-length v4, p3

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_2

    aget v5, p3, v4

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3, p3}, Landroid/util/IntArray;->addAll([I)V

    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x14

    if-ge p2, v2, :cond_3

    goto :goto_5

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 p1, p1, -0x15

    :goto_2
    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_3
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v5, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_4
    if-ltz p0, :cond_6

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    iget v0, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget p1, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    invoke-virtual {p3, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .locals 6

    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110295

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    new-instance v0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const/4 v4, 0x0

    const-string/jumbo v2, "activity_snapshots"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;Ljava/lang/String;ZFZ)V

    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   UserSavedFile userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "     SavedFile="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .locals 1

    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    return-object p0
.end method

.method public final getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eq v2, v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance p1, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    return-void

    :cond_8
    :goto_1
    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    sget-object p0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    array-length v4, p1

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_0
    if-ltz v3, :cond_2

    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    iget p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    if-ne p1, v4, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/ActivitySnapshotCache;

    iget-object p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method public final getUserFiles(I)Landroid/util/SparseArray;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$1;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public final handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    return-void
.end method

.method public handleTransitionFinish(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public hasRecord(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initSnapshotScale()F
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x105011f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    iget v5, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget v6, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    iget-object v7, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;-><init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final postProcess()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_a

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-ltz v4, :cond_5

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v7}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    iget-object v9, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v9, v8}, Landroid/util/IntArray;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Lcom/android/server/wm/ActivityRecord;

    :cond_7
    :goto_3
    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v5, v2}, Lcom/android/server/wm/ActivitySnapshotController;->loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V

    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_7
    if-ltz v2, :cond_b

    iget-object v3, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    return-void
.end method

.method public final removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->remove(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    :cond_2
    return-void
.end method

.method public resetTmpFields()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final use16BitFormat()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    return p0
.end method
