.class public final Lcom/android/server/pm/AutoDisableHandler$ADHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_7a

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7a

    const-string/jumbo p1, "activity"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "packageName"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "userId"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "isGoogleChanged"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4a

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_39
    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_45

    iput v3, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    iput-boolean v3, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    :cond_45
    monitor-exit v2

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    :try_start_54
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v4, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    if-eqz v4, :cond_71

    iget v5, v4, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->isDisabledByUser(I)Z

    move-result v5

    if-eqz v5, :cond_71

    iput v3, v4, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_71

    iput v0, v4, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v0, v4, Lcom/android/server/am/MARsPackageInfo;->state:I

    move v3, v0

    :cond_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_77

    xor-int/2addr v0, v3

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(ILjava/lang/String;Z)V

    return-void

    :catchall_77
    move-exception p0

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p0

    :cond_7a
    :goto_7a
    return-void
.end method
