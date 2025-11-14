.class public final Lcom/android/server/statusbar/StatusBarManagerService$6;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTileRequest(I)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    move p1, v1

    goto :goto_4b

    :cond_6
    if-nez p1, :cond_33

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_13
    iget-object v5, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_4b

    :catchall_30
    move-exception p0

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_41
    iget-object v0, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_4b

    :catchall_48
    move-exception p0

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw p0

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    :try_start_55
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$6;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    const-string/jumbo p1, "StatusBarManagerService"

    const-string/jumbo v0, "requestAddTile - callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    return-void
.end method
