.class public final Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "restricted_networking_mode"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "restricted_networking_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    monitor-exit p1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0
.end method
