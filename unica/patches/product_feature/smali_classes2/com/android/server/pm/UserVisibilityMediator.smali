.class public final Lcom/android/server/pm/UserVisibilityMediator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final DBG:Z

.field static final INITIAL_CURRENT_USER_ID:I


# instance fields
.field public mCurrentUserId:I

.field public final mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mStartedInvisibleProfileUserIds:Ljava/util/List;

.field public final mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

.field public final mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

.field public final mVisibleBackgroundUsersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    const-string/jumbo v0, "UserVisibilityMediator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    return-void
.end method

.method public constructor <init>(ZZLandroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot have visibleBackgroundUserOnDefaultDisplayEnabled without visibleBackgroundUsersOnDisplaysEnabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    :goto_1
    sget-boolean p1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p1, :cond_4

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo p1, "UserVisibilityMediator created with DBG on"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "No "

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " mappings"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "Number of "

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mappings: "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-gtz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " -> "

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static isProfile(II)Z
    .locals 1

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final canAssignUserToDisplayLocked(IIII)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string/jumbo v4, "UserVisibilityMediator"

    if-nez p4, :cond_4

    iget-boolean v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-ne p3, v5, :cond_1

    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result v5

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_0

    if-eq v5, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "canAssignUserToDisplayLocked(): cannot start user %d visible on default display because user %d already did so"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez v5, :cond_2

    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v6, :cond_2

    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v1

    :cond_2
    if-nez v5, :cond_4

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring mapping for default display for user %d starting as %s"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    :cond_4
    if-nez p1, :cond_5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign system user to secondary display (%d)"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    if-ne p4, v3, :cond_6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign to INVALID_DISPLAY (%d)"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_6
    iget v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p1, v5, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign current user (%d) to other displays"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p4, :cond_8

    const-string/jumbo p0, "Profile user can only be started in the default display"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Don\'t need to map profile user %d to default display"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "canAssignUserToDisplayLocked(%d, %d, %d, %d) is trying to check mUsersAssignedToDisplayOnStart when it\'s not set"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_b
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_f

    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%d: assignedUserId=%d, assignedDisplayId=%d"

    invoke-static {v4, v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-ne p4, p3, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign user %d to display %d because such display is already assigned to user %d"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_d
    if-ne p1, p2, :cond_e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign user %d to display %d because such user is as already assigned to display %d"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    return v1
.end method

.method public final dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "dispatchVisibilityChanged(): visibleUsersBefore=%s, visibleUsersAfter=%s, %d listeners (%s)"

    const-string/jumbo v3, "UserVisibilityMediator"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "UserVisibilityMediator"

    const-string/jumbo v1, "dispatchVisibilityChanged(%d -> %b): sending to %d listeners"

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    const-string/jumbo v0, "UserVisibilityMediator"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "DBG: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current user id: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "Visible users: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "started visible user / profile group"

    const-string/jumbo v3, "u"

    const-string/jumbo v4, "pg"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Profiles started invisible: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const-string/jumbo v1, "Supports visible background users on displays: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "Supports visible background users on default display: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "user / display"

    const-string/jumbo v3, "u"

    const-string/jumbo v4, "d"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "extra display / user"

    const-string/jumbo v3, "d"

    const-string/jumbo v4, "u"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "Number of listeners: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    :cond_0
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getMainDisplayAssignedToUser(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "UserVisibilityMediator"

    const-string/jumbo v2, "getMainDisplayAssignedToUser(%d): returning INVALID_DISPLAY for current user user %d was started on DEFAULT_DISPLAY"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final getUserAssignedToDisplay(IZ)I
    .locals 6

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v3

    if-nez v3, :cond_4

    monitor-exit v0

    return v2

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_4
    sget-boolean v3, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "UserVisibilityMediator"

    const-string/jumbo v4, "getUserAssignedToDisplay(%d): skipping user %d because it\'s a profile"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_7

    monitor-exit v0

    return v1

    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_9

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo p2, "getUserAssignedToDisplay(%d): no user assigned to display, returning USER_NULL instead"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return v3

    :cond_9
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-boolean p2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p2, :cond_a

    const-string/jumbo p2, "UserVisibilityMediator"

    const-string/jumbo v0, "getUserAssignedToDisplay(%d): no user assigned to display, returning current user (%d) instead"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return p0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final getUserVisibilityOnStartLocked(IIII)I
    .locals 10

    const/4 v0, -0x1

    const-string/jumbo v1, "UserVisibilityMediator"

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "cannot start user (%d) as BACKGROUND_USER on secondary display (%d) (it should be BACKGROUND_USER_VISIBLE"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne p3, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-nez p4, :cond_4

    if-eqz v6, :cond_4

    iget-boolean v7, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v7, :cond_3

    const/16 v8, -0x2710

    if-eq p1, v8, :cond_3

    iget v9, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v9, v8, :cond_2

    goto :goto_1

    :cond_2
    if-ne v9, p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "trying to start current user (%d) visible in background on default display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_3
    :goto_1
    if-nez v7, :cond_4

    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "cannot start full user (%d) visible on default display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    if-ne p3, v5, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    move v7, v3

    :goto_2
    if-eqz p4, :cond_7

    if-eqz v7, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start foreground user on secondary display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_6
    iget-boolean v8, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v8, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: called on device that doesn\'t support multiple users on multiple displays"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz p4, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "canStartUserLocked(%d, %d, %s, %d) failed: cannot start profile user on secondary display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_8
    if-eq p3, v5, :cond_d

    if-eq p3, v2, :cond_c

    if-eq p3, v4, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne p2, v0, :cond_a

    move p0, v5

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    :goto_3
    if-nez p0, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start profile user visible when its parent is not visible in that display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_b
    return v5

    :cond_c
    return v2

    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "startUser(%d, %d, %s, %d) failed: cannot start profile user in foreground"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_e
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_12

    if-nez p2, :cond_f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo p3, "isUserAssignedToDisplayOnStartLocked(%d, %d): called when mUsersAssignedToDisplayOnStart is null"

    invoke-static {v1, p3, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_f
    if-eq p4, v0, :cond_10

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, p4, :cond_10

    move v3, v5

    :cond_10
    :goto_4
    if-eqz v3, :cond_12

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "full user %d is already visible on display %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return v4

    :cond_12
    :goto_5
    if-nez v7, :cond_14

    if-nez p4, :cond_14

    if-eqz v6, :cond_13

    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz p0, :cond_13

    goto :goto_6

    :cond_13
    return v2

    :cond_14
    :goto_6
    return v5
.end method

.method public final getVisibleUsers()Landroid/util/IntArray;
    .locals 5

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_4

    :try_start_0
    iget v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-eq p1, p0, :cond_2

    const/4 p0, -0x1

    if-ne p1, p0, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    monitor-exit v0

    return v1

    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUserVisible(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v5, -0x2710

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v4}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final isUserVisible(II)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_4

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo v0, "isUserVisible(%d, %d): returning false as device does not support visible background users"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v5}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, p2, :cond_5

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_8

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final unassignUserFromAllDisplaysOnStopLocked(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    const-string/jumbo v1, "UserVisibilityMediator"

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Removing %d from mStartedVisibleProfileGroupIds (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Removing %d from list of invisible profiles"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "Removing user %d from mUsersOnDisplaysMap (%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    sget-boolean v2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Removing display %d from mExtraDisplaysAssignedToUsers (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method
