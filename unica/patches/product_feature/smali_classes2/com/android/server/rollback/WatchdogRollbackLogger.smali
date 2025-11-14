.class public abstract Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .locals 5

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x40000080    # 2.0000305f

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "android.content.pm.LOGGING_PARENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to discover logging parent package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "WatchdogRollbackLogger"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    return-object v2

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v0, p1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v2
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .locals 10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Watchdog event occurred with type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "UNKNOWN"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v8, :cond_1

    if-eq p1, v5, :cond_0

    move-object v9, v4

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "ROLLBACK_BOOT_TRIGGERED"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "ROLLBACK_FAILURE"

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "ROLLBACK_SUCCESS"

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "ROLLBACK_INITIATE"

    :goto_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " logPackage: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " rollbackReason: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, v7, :cond_9

    if-eq p2, v6, :cond_8

    if-eq p2, v8, :cond_7

    if-eq p2, v5, :cond_6

    const/4 v5, 0x5

    if-eq p2, v5, :cond_5

    const/4 v5, 0x7

    if-eq p2, v5, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "REASON_BOOT_LOOP"

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "REASON_NATIVE_CRASH_DURING_BOOT"

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "REASON_APP_NOT_RESPONDING"

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "REASON_APP_CRASH"

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "REASON_EXPLICIT_HEALTH_CHECK"

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "REASON_NATIVE_CRASH"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failedPackageName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "WatchdogRollbackLogger"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v2

    new-array v5, v7, [B

    move v0, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    goto :goto_2

    :cond_a
    new-array v5, v7, [B

    const-string v1, ""

    const/4 v2, 0x0

    move v0, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    :goto_2
    const-string/jumbo v0, "persist.sys.rollbacktest.enabled"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v8, v6}, Lcom/android/server/crashrecovery/CrashRecoveryUtils;->logCrashRecoveryEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static mapFailureReasonToMetric(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    return v0
.end method
