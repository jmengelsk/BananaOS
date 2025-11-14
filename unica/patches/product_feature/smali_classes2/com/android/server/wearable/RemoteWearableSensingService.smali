.class final Lcom/android/server/wearable/RemoteWearableSensingService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/wearable/IWearableSensingService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

.field private final mSecureConnectionLock:Ljava/lang/Object;

.field private mSecureConnectionProvided:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 12

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.wearable.WearableSensingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const v5, 0x4001000

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-boolean p0, v2, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 7

    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    iget-object v3, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    const-string/jumbo v4, "RemoteWearableSensingService"

    const-string/jumbo v5, "Providing secure wearable connection."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    goto :goto_33

    :catchall_26
    move-exception p0

    goto :goto_35

    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    const-string/jumbo p0, "RemoteWearableSensingService"

    const-string v1, "Binder died but there is no secure wearable connection to provide."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_26

    throw p0
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final provideSecureConnection(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    if-eqz v1, :cond_22

    const-string/jumbo v1, "RemoteWearableSensingService"

    const-string v2, "A new wearable connection is provided before the process restart triggered by the previous connection is complete. Discarding the previous connection."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;)V

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto :goto_4f

    :cond_22
    iget-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    if-nez v1, :cond_3d

    const-string/jumbo v1, "RemoteWearableSensingService"

    const-string/jumbo v2, "Providing secure wearable connection."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    monitor-exit v0

    return-void

    :cond_3d
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;)V

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    new-instance p1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_20

    throw p0
.end method
