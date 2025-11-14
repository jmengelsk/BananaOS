.class public final Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLocalSender:Ljava/lang/Object;

.field public mResult:Ljava/lang/Object;


# virtual methods
.method public flush()V
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/PreloadInstaller.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_51

    :try_start_d
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_38

    :try_start_15
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuffer;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3a

    :try_start_1a
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_3c

    :try_start_2e
    invoke-virtual {v0, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3a

    :try_start_31
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_38

    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_51

    return-void

    :catchall_38
    move-exception p0

    goto :goto_48

    :catchall_3a
    move-exception p0

    goto :goto_3f

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3a

    :goto_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_38

    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_50
    throw p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    const-string/jumbo v0, "PrePackageInstaller"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public out(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Ljava/lang/Object;

    check-cast v2, Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PrePackageInstaller"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_1c
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_3e

    throw p0
.end method
