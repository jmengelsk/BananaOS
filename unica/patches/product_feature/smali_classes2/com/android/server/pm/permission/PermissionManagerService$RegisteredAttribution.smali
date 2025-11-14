.class public final Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

.field public final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    iput-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_28

    :try_start_1f
    invoke-interface {p0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    return-void

    :catch_23
    iget-object p0, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->binderDied()V

    :cond_28
    return-void
.end method


# virtual methods
.method public final unregister()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return v2

    :cond_14
    return v1
.end method
