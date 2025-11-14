.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget v3, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$1:I

    iget-object v4, v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Could not deliver pendingIntent: "

    const-string/jumbo v5, "android.app.wearable.WearableSensingDataRequestBundleKey"

    const-class v6, Landroid/app/wearable/WearableSensingDataRequest;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/app/wearable/WearableSensingDataRequest;

    const-string/jumbo v13, "WearableSensingManagerService"

    if-nez v12, :cond_0

    const-string/jumbo v0, "Received data request callback without a request."

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    const-class v6, Landroid/os/RemoteCallback;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    if-nez v1, :cond_1

    const-string/jumbo v0, "Received data request callback without a status callback."

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v12}, Landroid/app/wearable/WearableSensingDataRequest;->getDataSize()I

    move-result v5

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getMaxRequestSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "WearableSensingDataRequest size exceeds the maximum allowed size of %s bytes. Dropping the request."

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_2
    iget-object v5, v2, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    const-string/jumbo v6, "android"

    invoke-virtual {v5, v3, v6, v13}, Lcom/android/server/utils/quota/MultiRateLimiter;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Data request exceeded rate limit. Dropping the request."

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    return-void

    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.app.wearable.extra.WEARABLE_SENSING_DATA_REQUEST"

    invoke-virtual {v7, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    iget-object v8, v2, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    invoke-virtual {v8, v3, v6, v13}, Lcom/android/server/utils/quota/MultiRateLimiter;->noteEvent(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    const-string/jumbo v2, "Sending data request to %s: %s"

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/app/wearable/WearableSensingDataRequest;->toExpandedString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
