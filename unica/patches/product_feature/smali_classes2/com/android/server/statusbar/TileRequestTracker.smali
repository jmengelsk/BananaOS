.class public final Lcom/android/server/statusbar/TileRequestTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final MAX_NUM_DENIALS:I = 0x3


# instance fields
.field public final mComponentsToRemove:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;

.field public final mTrackingMap:Landroid/util/SparseArrayMap;

.field public final mUninstallReceiver:Lcom/android/server/statusbar/TileRequestTracker$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/statusbar/TileRequestTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/statusbar/TileRequestTracker$1;-><init>(Lcom/android/server/statusbar/TileRequestTracker;)V

    iput-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker;->mUninstallReceiver:Lcom/android/server/statusbar/TileRequestTracker$1;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "package"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string/jumbo v0, "TileRequestTracker:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/statusbar/TileRequestTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
