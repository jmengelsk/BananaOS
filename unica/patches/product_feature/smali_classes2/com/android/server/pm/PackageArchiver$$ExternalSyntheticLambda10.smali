.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/PackageArchiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_39
    .catchall {:try_start_c .. :try_end_11} :catchall_22

    :try_start_11
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_24

    :try_start_16
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_26

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_39
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_42

    :catchall_22
    move-exception p0

    goto :goto_5e

    :catchall_24
    move-exception v1

    goto :goto_30

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v1

    :try_start_2c
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_24

    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_22

    :catch_39
    :try_start_39
    const-string/jumbo v1, "PackageArchiverService"

    const-string/jumbo v2, "versionMap write error!"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "PackageArchiverService"

    const-string/jumbo v2, "write writeAppVersion"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_5c
    monitor-exit v0

    return-void

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_22

    throw p0
.end method
