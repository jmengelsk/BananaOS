.class public final Lcom/android/server/pm/InstantAppResolverConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG_INSTANT:Z


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public mBindState:I

.field public final mContext:Landroid/content/Context;

.field public final mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/app/IInstantAppResolver;

.field public final mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 14

    const-string/jumbo v0, "["

    const-string/jumbo v1, "["

    const-string/jumbo v2, "["

    const-string/jumbo v3, "["

    const-string/jumbo v4, "["

    const-string/jumbo v5, "["

    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_15
    iget-object v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v7, :cond_1e

    monitor-exit v6

    return-object v7

    :catchall_1b
    move-exception p0

    goto/16 :goto_150

    :cond_1e
    iget v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v7, v8, :cond_4c

    sget-boolean v7, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v7, :cond_41

    const-string/jumbo v7, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_1b

    :cond_41
    :try_start_41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_46} :catch_4a
    .catchall {:try_start_41 .. :try_end_46} :catchall_1b

    if-eqz v5, :cond_4c

    :try_start_48
    monitor-exit v6

    return-object v5

    :catch_4a
    move v5, v9

    goto :goto_4d

    :cond_4c
    move v5, v10

    :goto_4d
    iget v7, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-ne v7, v9, :cond_7c

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_6d

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] Another thread is binding; waiting for connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz p0, :cond_76

    monitor-exit v6

    return-object p0

    :cond_76
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p0, v9}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p0

    :cond_7c
    iput v9, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    monitor-exit v6
    :try_end_7f
    .catchall {:try_start_48 .. :try_end_7f} :catchall_1b

    const/4 v4, 0x0

    if-eqz v5, :cond_c4

    :try_start_82
    sget-boolean v5, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_a3

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "] Previous connection never established; rebinding"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_82 .. :try_end_9e} :catchall_9f

    goto :goto_a3

    :catchall_9f
    move-exception p1

    move v1, v10

    goto/16 :goto_139

    :cond_a3
    :goto_a3
    :try_start_a3
    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_ab
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_9f

    goto :goto_c4

    :catch_ab
    move-exception v3

    :try_start_ac
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] Service already unbound"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c4
    :goto_c4
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] Binding to instant app resolver"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v6, 0x4000001

    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_ef
    .catchall {:try_start_ac .. :try_end_ef} :catchall_9f

    if-eqz v1, :cond_116

    :try_start_f1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_114

    :try_start_f4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_f4 .. :try_end_fa} :catchall_111

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz v1, :cond_106

    if-nez v4, :cond_106

    :try_start_101
    iput v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_108

    :catchall_104
    move-exception p0

    goto :goto_10f

    :cond_106
    iput v10, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    :goto_108
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-object v4

    :goto_10f
    monitor-exit p1
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_104

    throw p0

    :catchall_111
    move-exception p1

    :try_start_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    :try_start_113
    throw p1

    :catchall_114
    move-exception p1

    goto :goto_139

    :cond_116
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] Failed to bind to: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    invoke-direct {p1, v9}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_139
    .catchall {:try_start_113 .. :try_end_139} :catchall_114

    :goto_139
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz v1, :cond_145

    if-nez v4, :cond_145

    :try_start_140
    iput v8, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    goto :goto_147

    :catchall_143
    move-exception p0

    goto :goto_14e

    :cond_145
    iput v10, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    :goto_147
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_14d
    .catchall {:try_start_140 .. :try_end_14d} :catchall_143

    throw p1

    :goto_14e
    :try_start_14e
    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_143

    throw p0

    :goto_150
    :try_start_150
    monitor-exit v6
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_1b

    throw p0
.end method

.method public final binderDied()V
    .registers 3

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "PackageManager"

    const-string v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection;->handleBinderDiedLocked()V

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1e

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstantAppResolverConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolverConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_69

    :try_start_10
    invoke-virtual {p1}, Landroid/content/pm/InstantAppRequestInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_18
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_18} :catch_55
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_18} :catch_4e
    .catchall {:try_start_10 .. :try_end_18} :catchall_32

    :try_start_18
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstantAppResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_49

    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1c .. :try_end_1f} :catch_55
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_4e
    .catchall {:try_start_1c .. :try_end_1f} :catchall_32

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mGetInstantAppResolveInfoCaller:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;

    move-result-object p1
    :try_end_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_25} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_34
    .catchall {:try_start_1f .. :try_end_25} :catchall_32

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_28
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw p0

    :catchall_32
    move-exception p1

    goto :goto_5c

    :catch_34
    iget-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_37
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_3f
    move-exception p0

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw p0

    :catch_42
    :try_start_42
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_32

    :catchall_49
    move-exception p1

    :try_start_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4a .. :try_end_4e} :catch_55
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4e} :catch_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_32

    :catch_4e
    :try_start_4e
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1

    :catch_55
    new-instance p1, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;-><init>(I)V

    throw p1
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_32

    :goto_5c
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5f
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_66

    throw p1

    :catchall_66
    move-exception p0

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0

    :cond_69
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot invoke on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleBinderDiedLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mServiceConnection:Lcom/android/server/pm/InstantAppResolverConnection$MyServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public final waitForBindLocked(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_4
    iget v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mBindState:I

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v2, :cond_d

    goto :goto_31

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x12c

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_21

    iget-object v2, p0, Lcom/android/server/pm/InstantAppResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    :cond_21
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v0, "["

    const-string/jumbo v1, "] Didn\'t bind to resolver in time!"

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    :goto_31
    return-void
.end method
