.class public final Lcom/android/server/utils/UserTokenWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mTag:Ljava/lang/String;

.field public final mWatchers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    iput-object p2, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "WindowManager"

    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/TokenWatcher;

    invoke-virtual {v3}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string/jumbo v4, "User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, " "

    invoke-direct {v2, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/TokenWatcher;->dump(Ljava/io/PrintWriter;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_40

    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_39

    throw p0
.end method

.method public final isAcquired(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TokenWatcher;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method
