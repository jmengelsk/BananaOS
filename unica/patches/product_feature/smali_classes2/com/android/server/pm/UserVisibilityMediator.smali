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
    .registers 2

    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    const-string/jumbo v0, "UserVisibilityMediator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    return-void
.end method

.method public constructor <init>(ZZLandroid/os/Handler;)V
    .registers 7

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

    if-eqz p2, :cond_2a

    if-eqz p1, :cond_22

    goto :goto_2a

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot have visibleBackgroundUserOnDefaultDisplayEnabled without visibleBackgroundUsersOnDisplaysEnabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    :goto_2a
    iput-boolean p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3e

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    goto :goto_42

    :cond_3e
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    :goto_42
    sget-boolean p1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p1, :cond_4c

    new-instance p2, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4c
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p1, :cond_5e

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo p1, "UserVisibilityMediator created with DBG on"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public static dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_11

    const-string/jumbo p1, "No "

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " mappings"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
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

    if-gtz p2, :cond_2d

    return-void

    :cond_2d
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    :goto_31
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_5b

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

    goto :goto_31

    :cond_5b
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static isProfile(II)Z
    .registers 3

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_8

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final canAssignUserToDisplayLocked(IIII)I
    .registers 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string/jumbo v4, "UserVisibilityMediator"

    if-nez p4, :cond_55

    iget-boolean v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v5, :cond_2f

    const/4 v5, 0x3

    if-ne p3, v5, :cond_2f

    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result v5

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_2d

    if-eq v5, p2, :cond_2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "canAssignUserToDisplayLocked(): cannot start user %d visible on default display because user %d already did so"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2d
    move v5, v1

    goto :goto_30

    :cond_2f
    move v5, v2

    :goto_30
    if-nez v5, :cond_3d

    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v6, :cond_3d

    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-eqz v6, :cond_3d

    move v5, v1

    :cond_3d
    if-nez v5, :cond_55

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_54

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring mapping for default display for user %d starting as %s"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_54
    return v0

    :cond_55
    if-nez p1, :cond_65

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign system user to secondary display (%d)"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_65
    if-ne p4, v3, :cond_75

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign to INVALID_DISPLAY (%d)"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_75
    iget v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p1, v5, :cond_87

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Cannot assign current user (%d) to other displays"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_87
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v5

    if-eqz v5, :cond_a8

    if-eqz p4, :cond_96

    const-string/jumbo p0, "Profile user can only be started in the default display"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_96
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_a7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Don\'t need to map profile user %d to default display"

    invoke-static {v4, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a7
    return v0

    :cond_a8
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-nez v0, :cond_c7

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

    :cond_c7
    :goto_c7
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_127

    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_f4

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

    :cond_f4
    if-ne p4, p3, :cond_10c

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

    :cond_10c
    if-ne p1, p2, :cond_124

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

    :cond_124
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    :cond_127
    return v1
.end method

.method public final dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, p2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "dispatchVisibilityChanged(): visibleUsersBefore=%s, visibleUsersAfter=%s, %d listeners (%s)"

    const-string/jumbo v3, "UserVisibilityMediator"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_34

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_31

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_34
    :goto_34
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_48

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4b
    return-void
.end method

.method public final dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V
    .registers 7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_32

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

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_50

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_50
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    const-string/jumbo v0, "UserVisibilityMediator"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "DBG: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
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

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "Profiles started invisible: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_b2

    :cond_4d
    :goto_4d
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

    if-lez v1, :cond_ad

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_94
    if-ge v2, v1, :cond_aa

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    :cond_aa
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_16 .. :try_end_ae} :catchall_4b

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_b2
    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_4b

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_a

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    :cond_a
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getMainDisplayAssignedToUser(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-virtual {p0, v2, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_32

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_35

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_3a

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

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    return v2

    :cond_36
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_3b

    :cond_3a
    return v1

    :cond_3b
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3e
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final getUserAssignedToDisplay(IZ)I
    .registers 9

    if-eqz p2, :cond_16

    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    if-ge v1, v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eq v2, p1, :cond_2d

    goto :goto_5c

    :cond_2d
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v3

    if-nez v3, :cond_43

    monitor-exit v0

    return v2

    :catchall_41
    move-exception p0

    goto :goto_a5

    :cond_43
    sget-boolean v3, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v3, :cond_5c

    const-string/jumbo v3, "UserVisibilityMediator"

    const-string/jumbo v4, "getUserAssignedToDisplay(%d): skipping user %d because it\'s a profile"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5f
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_69

    monitor-exit v0

    return v1

    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_1a .. :try_end_6a} :catchall_41

    if-nez p2, :cond_82

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_81

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo p2, "getUserAssignedToDisplay(%d): no user assigned to display, returning USER_NULL instead"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_81
    return v3

    :cond_82
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_85
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit p2
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_a2

    sget-boolean p2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p2, :cond_a1

    const-string/jumbo p2, "UserVisibilityMediator"

    const-string/jumbo v0, "getUserAssignedToDisplay(%d): no user assigned to display, returning current user (%d) instead"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a1
    return p0

    :catchall_a2
    move-exception p0

    :try_start_a3
    monitor-exit p2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p0

    :goto_a5
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_41

    throw p0
.end method

.method public final getUserVisibilityOnStartLocked(IIII)I
    .registers 15

    const/4 v0, -0x1

    const-string/jumbo v1, "UserVisibilityMediator"

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1c

    if-eqz p4, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "cannot start user (%d) as BACKGROUND_USER on secondary display (%d) (it should be BACKGROUND_USER_VISIBLE"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne p3, v4, :cond_23

    move v6, v5

    goto :goto_24

    :cond_23
    move v6, v3

    :goto_24
    if-nez p4, :cond_5d

    if-eqz v6, :cond_5d

    iget-boolean v7, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v7, :cond_46

    const/16 v8, -0x2710

    if-eq p1, v8, :cond_46

    iget v9, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v9, v8, :cond_35

    goto :goto_46

    :cond_35
    if-ne v9, p1, :cond_46

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "trying to start current user (%d) visible in background on default display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_46
    :goto_46
    if-nez v7, :cond_5d

    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v7

    if-nez v7, :cond_5d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "cannot start full user (%d) visible on default display"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_5d
    if-ne p3, v5, :cond_61

    move v7, v5

    goto :goto_62

    :cond_61
    move v7, v3

    :goto_62
    if-eqz p4, :cond_a0

    if-eqz v7, :cond_81

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

    :cond_81
    iget-boolean v8, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v8, :cond_a0

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

    :cond_a0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v8

    if-eqz v8, :cond_10d

    if-eqz p4, :cond_c3

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

    :cond_c3
    if-eq p3, v5, :cond_f2

    if-eq p3, v2, :cond_f1

    if-eq p3, v4, :cond_cb

    goto/16 :goto_148

    :cond_cb
    if-ne p2, v0, :cond_cf

    move p0, v5

    goto :goto_d3

    :cond_cf
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    :goto_d3
    if-nez p0, :cond_f0

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

    :cond_f0
    return v5

    :cond_f1
    return v2

    :cond_f2
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

    :cond_10d
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_148

    if-nez p2, :cond_126

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo p3, "isUserAssignedToDisplayOnStartLocked(%d, %d): called when mUsersAssignedToDisplayOnStart is null"

    invoke-static {v1, p3, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12f

    :cond_126
    if-eq p4, v0, :cond_12f

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-ne p2, p4, :cond_12f

    move v3, v5

    :cond_12f
    :goto_12f
    if-eqz v3, :cond_148

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_147

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "full user %d is already visible on display %d"

    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_147
    return v4

    :cond_148
    :goto_148
    if-nez v7, :cond_154

    if-nez p4, :cond_154

    if-eqz v6, :cond_153

    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz p0, :cond_153

    goto :goto_154

    :cond_153
    return v2

    :cond_154
    :goto_154
    return v5
.end method

.method public final getVisibleUsers()Landroid/util/IntArray;
    .registers 6

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_26
    monitor-exit v1

    return-object v0

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_21

    throw p0
.end method

.method public final isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_24

    :try_start_8
    iget v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v3, v2, :cond_d

    goto :goto_24

    :cond_d
    const/4 v4, 0x1

    if-ne v3, p1, :cond_14

    monitor-exit v0

    return v4

    :catchall_12
    move-exception p0

    goto :goto_26

    :cond_14
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-eq p1, p0, :cond_21

    const/4 p0, -0x1

    if-ne p1, p0, :cond_22

    :cond_21
    move v1, v4

    :cond_22
    monitor-exit v0

    return v1

    :cond_24
    :goto_24
    monitor-exit v0

    return v1

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_12

    throw p0
.end method

.method public final isUserVisible(I)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_2f

    :try_start_14
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v5, -0x2710

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    :try_start_1d
    invoke-static {p1, v4}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    monitor-exit v0

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_40

    :cond_31
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_2f

    return v1

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_2f

    throw p0
.end method

.method public final isUserVisible(II)Z
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    goto :goto_30

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    if-eqz p2, :cond_12

    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_13

    :cond_12
    return v3

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_31

    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_30

    const-string/jumbo p0, "UserVisibilityMediator"

    const-string/jumbo v0, "isUserVisible(%d, %d): returning false as device does not support visible background users"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    :goto_30
    return v1

    :cond_31
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_34
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_5b

    :try_start_37
    iget-object v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_72

    :try_start_40
    invoke-static {p1, v5}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, p2, :cond_50

    :goto_4e
    move v1, v3

    goto :goto_59

    :cond_50
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v5, :cond_59

    goto :goto_4e

    :cond_59
    :goto_59
    monitor-exit v2

    return v1

    :catchall_5b
    move-exception p0

    goto :goto_75

    :cond_5d
    iget-object v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_67

    :goto_65
    move v1, v3

    goto :goto_70

    :cond_67
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_70

    goto :goto_65

    :cond_70
    :goto_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_40 .. :try_end_71} :catchall_5b

    return v1

    :catchall_72
    move-exception p0

    :try_start_73
    monitor-exit v4
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw p0

    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_5b

    throw p0
.end method

.method public final unassignUserFromAllDisplaysOnStopLocked(I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    const-string/jumbo v1, "UserVisibilityMediator"

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Removing %d from mStartedVisibleProfileGroupIds (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v2, :cond_37

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

    :cond_37
    iget-boolean v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v2, :cond_3c

    goto :goto_87

    :cond_3c
    if-eqz v0, :cond_4e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "Removing user %d from mUsersOnDisplaysMap (%s)"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5b
    if-ltz v0, :cond_87

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_84

    sget-boolean v2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v2, :cond_7f

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

    :cond_7f
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_84
    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    :cond_87
    :goto_87
    return-void
.end method
