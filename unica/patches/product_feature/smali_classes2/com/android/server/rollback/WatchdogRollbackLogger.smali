.class public abstract Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .registers 7

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x40000080  # 2.0000305f

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_18

    :goto_16
    move-object p1, v2

    goto :goto_37

    :cond_18
    const-string/jumbo v1, "android.content.pm.LOGGING_PARENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to discover logging parent package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "WatchdogRollbackLogger"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :goto_37
    if-nez p1, :cond_3a

    return-object v2

    :cond_3a
    :try_start_3a
    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v0, p1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    return-object v2
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Watchdog event occurred with type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "UNKNOWN"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq p1, v7, :cond_25

    if-eq p1, v6, :cond_21

    if-eq p1, v8, :cond_1d

    if-eq p1, v5, :cond_19

    move-object v9, v4

    goto :goto_28

    :cond_19
    const-string/jumbo v9, "ROLLBACK_BOOT_TRIGGERED"

    goto :goto_28

    :cond_1d
    const-string/jumbo v9, "ROLLBACK_FAILURE"

    goto :goto_28

    :cond_21
    const-string/jumbo v9, "ROLLBACK_SUCCESS"

    goto :goto_28

    :cond_25
    const-string/jumbo v9, "ROLLBACK_INITIATE"

    :goto_28
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " logPackage: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " rollbackReason: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p2, v7, :cond_5b

    if-eq p2, v6, :cond_57

    if-eq p2, v8, :cond_53

    if-eq p2, v5, :cond_4f

    const/4 v5, 0x5

    if-eq p2, v5, :cond_4b

    const/4 v5, 0x7

    if-eq p2, v5, :cond_47

    goto :goto_5e

    :cond_47
    const-string/jumbo v4, "REASON_BOOT_LOOP"

    goto :goto_5e

    :cond_4b
    const-string/jumbo v4, "REASON_NATIVE_CRASH_DURING_BOOT"

    goto :goto_5e

    :cond_4f
    const-string/jumbo v4, "REASON_APP_NOT_RESPONDING"

    goto :goto_5e

    :cond_53
    const-string/jumbo v4, "REASON_APP_CRASH"

    goto :goto_5e

    :cond_57
    const-string/jumbo v4, "REASON_EXPLICIT_HEALTH_CHECK"

    goto :goto_5e

    :cond_5b
    const-string/jumbo v4, "REASON_NATIVE_CRASH"

    :goto_5e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failedPackageName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "WatchdogRollbackLogger"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v2

    new-array v5, v7, [B

    move v0, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    goto :goto_92

    :cond_87
    new-array v5, v7, [B

    const-string v1, ""

    const/4 v2, 0x0

    move v0, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    :goto_92
    const-string/jumbo v0, "persist.sys.rollbacktest.enabled"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9c

    return-void

    :cond_9c
    invoke-static {v8, v6}, Lcom/android/server/crashrecovery/CrashRecoveryUtils;->logCrashRecoveryEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static mapFailureReasonToMetric(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x7

    return p0

    :cond_13
    return v0
.end method
