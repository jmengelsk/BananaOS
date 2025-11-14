.class public final Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/media/quality/IAmbientBacklightCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    :try_start_9
    invoke-interface {p3}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string p2, "Failed to link to death"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method
