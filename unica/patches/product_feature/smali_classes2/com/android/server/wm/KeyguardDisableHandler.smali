.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field public mCurrentUser:I

.field public final mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field public final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {p1, v0, p2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {p1, v0, p2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-void
.end method


# virtual methods
.method public final disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 3

    invoke-static {p3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_2

    instance-of p3, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    check-cast p0, Lcom/android/server/wm/KeyguardDisableHandler$2;

    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    iget-object p4, p3, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter p4

    :try_start_0
    iget-object v0, p3, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TokenWatcher;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;

    iget-object v1, p3, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p3, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    invoke-direct {v0, p3, p0, v1, v2}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit p4

    return-void

    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Only apps can use the KeyguardLock API"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateKeyguardEnabled(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateKeyguardEnabledLocked(I)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    check-cast p1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyCache;->getPasswordQuality(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    iget-object v5, p1, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v4

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    xor-int/lit8 p0, v2, 0x1

    iget-object p1, p1, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManager;->enableKeyguard(Z)V

    return-void
.end method
