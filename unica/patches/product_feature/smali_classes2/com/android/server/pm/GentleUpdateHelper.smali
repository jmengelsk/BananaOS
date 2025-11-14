.class public final Lcom/android/server/pm/GentleUpdateHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final PENDING_CHECK_MILLIS:J


# instance fields
.field public final mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mHasPendingIdleJob:Z

.field public final mPendingChecks:Ljava/util/ArrayDeque;

.field public final mPendingIdleFutures:Ljava/util/ArrayList;


# direct methods
.method public static $r8$lambda$JQiy908NuzFx59XC1nxYVaiXKqM(Lcom/android/server/pm/GentleUpdateHelper;II)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/GentleUpdateHelper;->PENDING_CHECK_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/AppStateHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    return-void
.end method


# virtual methods
.method public final processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z
    .locals 11

    iget-object v0, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-object v3, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppStateHelper;->getDependencyPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz p2, :cond_16

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotForegroundRequired()Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, v3

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :cond_2
    if-ge v6, v4, :cond_3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/ActivityManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x7d

    if-gt v7, v8, :cond_2

    goto/16 :goto_c

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotInteractingRequired()Z

    move-result p2

    const/16 v4, 0x64

    if-eqz p2, :cond_e

    move-object p2, v3

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v5

    :cond_4
    if-ge v7, v6, :cond_c

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "audio"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioFocusInfo;

    invoke-virtual {v9}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_5
    const/4 v9, 0x0

    :goto_0
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v9, v5

    :goto_1
    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v10, Landroid/media/AudioManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    :try_start_1
    invoke-virtual {v9}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v10}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_6

    move v9, v2

    goto :goto_2

    :catch_1
    :cond_7
    move v9, v5

    :goto_2
    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    move v9, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v9, v2

    :goto_4
    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v10, Landroid/app/ActivityManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9, v8}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v8

    if-gt v8, v4, :cond_a

    move v8, v2

    goto :goto_5

    :cond_a
    move v8, v5

    :goto_5
    if-eqz v8, :cond_4

    :cond_b
    :goto_6
    move p2, v2

    goto :goto_7

    :cond_c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(ILjava/util/List;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(ILjava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_6

    :cond_d
    move p2, v5

    :goto_7
    if-nez p2, :cond_16

    :cond_e
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotTopVisibleRequired()Z

    move-result p2

    if-eqz p2, :cond_12

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v6, v5

    :cond_f
    if-ge v6, p2, :cond_11

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/ActivityManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v4, :cond_10

    move v7, v2

    goto :goto_8

    :cond_10
    move v7, v5

    :goto_8
    if-eqz v7, :cond_f

    move p2, v2

    goto :goto_9

    :cond_11
    move p2, v5

    :goto_9
    if-nez p2, :cond_16

    :cond_12
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isNotInCallRequired()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string/jumbo p2, "debug.pm.gentle_update_test.is_in_call"

    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_13
    :goto_a
    move p0, v2

    goto :goto_b

    :cond_14
    iget-object p2, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    :try_start_2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_13

    const/4 p2, 0x3

    if-ne p0, p2, :cond_15

    goto :goto_a

    :catch_2
    :cond_15
    move p0, v5

    :goto_b
    if-nez p0, :cond_16

    goto :goto_d

    :cond_16
    :goto_c
    move p0, v5

    goto :goto_e

    :cond_17
    :goto_d
    move p0, v2

    :goto_e
    if-nez p0, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide p1, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    cmp-long p1, v3, p1

    if-ltz p1, :cond_18

    move p1, v2

    goto :goto_f

    :cond_18
    move p1, v5

    :goto_f
    if-eqz p1, :cond_19

    goto :goto_10

    :cond_19
    return v5

    :cond_1a
    :goto_10
    new-instance p1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-direct {p1, p0}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;-><init>(Z)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return v2
.end method

.method public final runIdleJob()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    iget-object v1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/GentleUpdateHelper;->processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final scheduleIdleJob()V
    .locals 4

    const-string/jumbo v0, "debug.pm.gentle_update_test.is_idle"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/pm/GentleUpdateHelper$Service;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0xe067fd7

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
