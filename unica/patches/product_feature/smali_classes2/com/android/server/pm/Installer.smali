.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public volatile mDeferSetFirstBoot:Z

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public volatile mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mIsolated:Z

.field public volatile mVold:Landroid/os/IVold;

.field public volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    return-void
.end method

.method public static buildCreateAppDataArgs(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/CreateAppDataArgs;
    .registers 9

    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    iput-object p4, v0, Landroid/os/CreateAppDataArgs;->uuid:Ljava/lang/String;

    iput-object p5, v0, Landroid/os/CreateAppDataArgs;->packageName:Ljava/lang/String;

    iput p0, v0, Landroid/os/CreateAppDataArgs;->userId:I

    iput p1, v0, Landroid/os/CreateAppDataArgs;->flags:I

    if-eqz p7, :cond_13

    or-int/lit8 p0, p1, 0x8

    iput p0, v0, Landroid/os/CreateAppDataArgs;->flags:I

    :cond_13
    iput p2, v0, Landroid/os/CreateAppDataArgs;->appId:I

    iput-object p6, v0, Landroid/os/CreateAppDataArgs;->seInfo:Ljava/lang/String;

    iput p3, v0, Landroid/os/CreateAppDataArgs;->targetSdkVersion:I

    return-object v0
.end method


# virtual methods
.method public final checkBeforeRemote()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Calling thread "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_49

    const-string p0, "Ignoring request because this installer is isolated"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_49
    :try_start_49
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_5f

    :cond_56
    new-instance p0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v0, "time out waiting for the installer to be ready"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_5f} :catch_5f

    :catch_5f
    :goto_5f
    const/4 p0, 0x1

    return p0
.end method

.method public final clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_ce

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, v3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x9858

    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 p2, 0x2

    :goto_39
    array-length p3, p1

    if-ge p2, p3, :cond_65

    aget-object p3, p1, p2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p3

    aget-object p4, p1, p2

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p4

    aget-object p5, p1, p2

    invoke-virtual {p5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p5

    aget-object p6, p1, p2

    invoke-virtual {p6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p4, p3, p5, p6}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x9859

    invoke-static {p4, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_62} :catch_cf

    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    :cond_65
    if-nez v4, :cond_ce

    and-int/lit8 p1, v5, 0x10

    if-nez p1, :cond_ce

    and-int/lit8 p1, v5, 0x20

    if-nez p1, :cond_ce

    const-string p1, "Installer"

    const-string p2, "Cleared data for package: "

    iget-object p3, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    if-nez p3, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connectVold()V

    :cond_7a
    iget-object p3, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    if-nez p3, :cond_7f

    goto :goto_ce

    :cond_7f
    :try_start_7f
    iget-object p3, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p3, v3}, Landroid/os/IVold;->isPassClients(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_88

    goto :goto_ce

    :cond_88
    iget-object p3, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p3, v3}, Landroid/os/IVold;->isClearDataExceptionsPass(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_91

    goto :goto_ce

    :cond_91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    iget-object p0, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p0, v3, v4, p3}, Landroid/os/IVold;->clearDataPassStorage(Ljava/lang/String;II)I

    move-result p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uid: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ba} :catch_bb

    return-void

    :catch_bb
    move-exception v0

    move-object p0, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot clear App data for package: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ce
    :goto_ce
    return-void

    :catch_cf
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final connect()V
    .registers 5

    const-string/jumbo v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    :try_start_a
    new-instance v2, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;I)V

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-object v0, v1

    :cond_16
    :goto_16
    if-eqz v0, :cond_3c

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_23 .. :try_end_27} :catch_52

    if-nez v0, :cond_2a

    goto :goto_2f

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_37

    :goto_2f
    :try_start_2f
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->setFirstBoot()V

    goto :goto_52

    :catch_37
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v1
    :try_end_3c
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_3c} :catch_52

    :cond_3c
    const-string v0, "Installer"

    const-string/jumbo v1, "installd not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_52
    :cond_52
    :goto_52
    return-void
.end method

.method public final connectVold()V
    .registers 4

    const-string/jumbo v0, "vold"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_9
    new-instance v1, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Installer;I)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    :cond_1d
    return-void
.end method

.method public final destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_99

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_9a

    if-nez v4, :cond_99

    const-string p1, "Installer"

    const-string/jumbo p2, "Monitored package uninstalled: "

    const-string/jumbo p3, "Monitored package uninstalled exceptions: "

    iget-object p4, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    if-nez p4, :cond_23

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connectVold()V

    :cond_23
    iget-object p4, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    if-nez p4, :cond_28

    goto :goto_99

    :cond_28
    :try_start_28
    iget-object p4, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p4, v3}, Landroid/os/IVold;->isPassClients(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_31

    goto :goto_99

    :cond_31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    iget-object p5, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p5, v3}, Landroid/os/IVold;->isUninstallExceptionsPass(Ljava/lang/String;)Z

    move-result p5
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_63

    const-string p6, ", result: "

    const-string v0, ", uid: "

    if-eqz p5, :cond_66

    :try_start_41
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p0, v3, v4, p4}, Landroid/os/IVold;->lockPassStorage(Ljava/lang/String;II)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_63
    move-exception v0

    move-object p0, v0

    goto :goto_88

    :cond_66
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-interface {p0, v3, v4, p4}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    move-result p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_87} :catch_63

    return-void

    :goto_88
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot destroy App data for package: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_99
    :goto_99
    return-void

    :catch_9a
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    new-instance p0, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;

    invoke-direct {p0}, Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;-><init>()V

    throw p0
.end method

.method public final freeCache(Ljava/lang/String;JI)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_e2

    :cond_e
    const/4 v10, 0x0

    if-eqz v7, :cond_21

    array-length v1, v7

    move v2, v10

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v7, v2

    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    const/4 v11, 0x0

    :try_start_22
    iget-object v1, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v8, v7

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v1

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v4, v1, v10

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v8, 0x1

    aget-wide v4, v1, v8

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v12, 0x2

    aget-wide v4, v1, v12

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v13, 0x3

    aget-wide v4, v1, v13

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v14, 0x4

    aget-wide v4, v1, v14

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v2, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v15, 0x5

    aget-wide v4, v1, v15

    add-long/2addr v2, v4

    iput-wide v2, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    if-nez p1, :cond_e2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_7a

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_b6

    :catch_b3
    move-exception v0

    goto :goto_e3

    :cond_b5
    move-object v0, v11

    :goto_b6
    if-eqz v0, :cond_e2

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v3, v0, v10

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    aget-wide v3, v0, v8

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    aget-wide v3, v0, v12

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    aget-wide v3, v0, v13

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    aget-wide v3, v0, v14

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    aget-wide v3, v0, v15

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_e2} :catch_b3

    :cond_e2
    :goto_e2
    return-void

    :goto_e3
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v11
.end method

.method public final getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p0

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 p3, 0x0

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p3, 0x1

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p3, 0x3

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p3, 0x4

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p3, 0x5

    aget-wide p3, p0, p3

    add-long/2addr p1, p3

    iput-wide p1, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onStart()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method public final rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    :try_start_e
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setFirstBoot()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0}, Landroid/os/IInstalld;->setFirstBoot()V

    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/Installer;->mDeferSetFirstBoot:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    return-void
.end method
