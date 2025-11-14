.class public Lcom/android/server/smartclip/BleSpenManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBundledRemoteSpenSupport:Z

.field public final mContext:Landroid/content/Context;

.field public final mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public final mUnbundledRemoteSpenSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    iput-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->REMOTE:Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v2, "SemInputDeviceManagerService"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v2, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "spen_air_action"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/smartclip/BleSpenManager$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/smartclip/BleSpenManager$1;-><init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V

    const/4 p0, -0x1

    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4f
    return-void
.end method

.method public static makeFilePublic(Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    const-string v3, "BleSpenManager"

    if-nez v2, :cond_10

    const-string/jumbo v2, "saveBleSpenLogFile : failed to set readable"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "saveBleSpenLogFile : failed to set writable"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p0

    if-nez p0, :cond_28

    const-string/jumbo p0, "saveBleSpenLogFile : failed to set executable"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "BleSpenManager"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_12} :catch_2b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_28

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_53

    :catch_1a
    move-exception v2

    goto :goto_2e

    :catch_1c
    move-exception v2

    goto :goto_41

    :catchall_1e
    move-exception p0

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    :try_start_24
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p0
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_28} :catch_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    :catch_28
    move-exception v2

    move-object p0, v1

    goto :goto_2e

    :catch_2b
    move-exception v2

    move-object p0, v1

    goto :goto_41

    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBleSpenAddress : e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBleSpenAddress : file not exist. e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo p0, "readStringFromFile : empty file"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_60
    move-object v1, p0

    :goto_61
    return-object v1
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string/jumbo v0, "writeStringToFile : Parent dir is null! filePathName="

    const-string v1, "BleSpenManager"

    const-string/jumbo v2, "writeStringToFile : e="

    const-string/jumbo v3, "writeStringToFile : failed setWritable:"

    const-string/jumbo v4, "writeStringToFile : No directoy, make directoy : "

    if-nez p1, :cond_12

    const-string p1, ""

    :cond_12
    const/4 v5, 0x0

    :try_start_13
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2c

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_26
    move-exception p0

    goto/16 :goto_110

    :catch_29
    move-exception p0

    goto/16 :goto_fb

    :cond_2c
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_48
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4c} :catch_29
    .catchall {:try_start_13 .. :try_end_4c} :catchall_26

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "writeStringToFile : failed setreadable:"

    if-nez v0, :cond_6c

    :try_start_53
    invoke-virtual {v6, v7, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-nez v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_70} :catch_29
    .catchall {:try_start_53 .. :try_end_70} :catchall_26

    const-string/jumbo v9, "writeStringToFile : failed setexecutable:"

    if-nez v0, :cond_8e

    :try_start_75
    invoke-virtual {v6, v7, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_8e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v6, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_9d} :catch_29
    .catchall {:try_start_75 .. :try_end_9d} :catchall_26

    :try_start_9d
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0

    if-nez p0, :cond_c5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    :catchall_bf
    move-exception p0

    move-object v5, v0

    goto :goto_110

    :catch_c2
    move-exception p0

    move-object v5, v0

    goto :goto_fb

    :cond_c5
    :goto_c5
    invoke-virtual {p1, v4, v7}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p0

    if-nez p0, :cond_de

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    invoke-virtual {p1, v7, v7}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p0

    if-nez p0, :cond_f7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_f7} :catch_c2
    .catchall {:try_start_9d .. :try_end_f7} :catchall_bf

    :cond_f7
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_10f

    return-void

    :goto_fb
    :try_start_fb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_fb .. :try_end_10a} :catchall_26

    if-eqz v5, :cond_10f

    :try_start_10c
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_10f

    :catch_10f
    :cond_10f
    return-void

    :goto_110
    if-eqz v5, :cond_115

    :try_start_112
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_115

    :catch_115
    :cond_115
    throw p0
.end method


# virtual methods
.method public final isAirActionSettingEnabled()Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "spen_air_action"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    return v2

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized isSupportBleSpen()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    if-eqz v0, :cond_a

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    goto :goto_f

    :catchall_c
    move-exception v0

    goto :goto_11

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_c

    throw v0
.end method

.method public final declared-synchronized startBlindChargeService(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "startBlindChargeService : Failed to start service "

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-nez v1, :cond_16

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "startBlindChargeService : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    goto :goto_63

    :cond_16
    :try_start_16
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "startBlindChargeService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_14

    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.SPEN_BLIND_CHARGE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.service.aircommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_47

    const-string p1, "BleSpenManager"

    const-string/jumbo v1, "startBlindChargeService : failed to launch the service"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catch_45
    move-exception p1

    goto :goto_50

    :cond_47
    const-string p1, "BleSpenManager"

    const-string/jumbo v1, "startBlindChargeService"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_4f} :catch_45
    .catchall {:try_start_26 .. :try_end_4f} :catchall_14

    goto :goto_61

    :goto_50
    :try_start_50
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_14

    :goto_61
    monitor-exit p0

    return-void

    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_14

    throw p1
.end method

.method public final declared-synchronized startRemoteSpenService(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "startRemoteSpenService : Failed to start BLE SPen service "

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-nez v1, :cond_16

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "startRemoteSpenService : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    goto :goto_59

    :cond_16
    :try_start_16
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "startRemoteSpenService : BLE Spen is disabled on knox container enabled mode"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_14

    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.REMOTE_SPEN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.service.aircommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_57

    const-string p1, "BleSpenManager"

    const-string/jumbo v1, "startRemoteSpenService : failed to launch the service"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_44} :catch_45
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_44} :catch_45
    .catchall {:try_start_26 .. :try_end_44} :catchall_14

    goto :goto_57

    :catch_45
    move-exception p1

    :try_start_46
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_14

    :cond_57
    :goto_57
    monitor-exit p0

    return-void

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_14

    throw p1
.end method
