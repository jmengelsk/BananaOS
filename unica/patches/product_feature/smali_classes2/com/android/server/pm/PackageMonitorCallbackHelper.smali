.class public Lcom/android/server/pm/PackageMonitorCallbackHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static isAllowedCallbackAction(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.UID_REMOVED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_64

    goto :goto_66

    :cond_64
    const/4 p0, 0x0

    return p0

    :cond_66
    :goto_66
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .registers 16

    array-length v0, p4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_55

    aget v4, p4, v1

    new-instance v6, Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    const-string/jumbo v3, "package"

    invoke-static {v3, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_14

    :cond_13
    move-object v3, v2

    :goto_14
    invoke-direct {v6, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p3, :cond_1c

    invoke-virtual {v6, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1c
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_37

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v4, :cond_37

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_37
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_45

    invoke-virtual {p5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :cond_45
    move-object v5, v2

    new-instance v2, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    invoke-virtual {p6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move-object p7, v7

    goto :goto_2

    :cond_55
    return-void
.end method

.method public final notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .registers 17

    invoke-static {p1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3d

    :cond_7
    if-nez p4, :cond_1e

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_18

    goto :goto_3d

    :cond_18
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1

    move-object v4, v1

    goto :goto_1f

    :cond_1e
    move-object v4, p4

    :goto_1f
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_31

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    return-void

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3d} :catch_3d

    :catch_3d
    :goto_3d
    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_36

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p1, :cond_35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IRemoteCallback;

    iget-object v3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_29
    iget-object v4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :catchall_32
    move-exception p0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method
