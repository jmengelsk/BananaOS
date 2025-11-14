.class public final Lcom/android/server/om/ResilientAtomicFile;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mCurrentFile:Ljava/io/File;

.field public mCurrentInStream:Ljava/io/FileInputStream;

.field public final mFile:Ljava/io/File;

.field public mMainInStream:Ljava/io/FileInputStream;

.field public mMainOutStream:Ljava/io/FileOutputStream;

.field public final mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

.field public final mReserveCopy:Ljava/io/File;

.field public mReserveInStream:Ljava/io/FileInputStream;

.field public mReserveOutStream:Ljava/io/FileOutputStream;

.field public final mTemporaryBackup:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/om/OverlayManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput-object p4, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void
.end method

.method public final failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "!@Error reading overlay manager settings, removing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "ResilientAtomicFile"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final failWrite(Ljava/io/FileOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/om/ResilientAtomicFile;->close()V

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to clean up mangled file: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ResilientAtomicFile"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finishWrite(Ljava/io/FileOutputStream;)V
    .locals 6

    const-string/jumbo v0, "ResilientAtomicFile"

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v1, p1, :cond_a

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x1b0

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :try_start_1
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v1, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v3}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_0

    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_c
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_2
    if-eqz p1, :cond_2

    :try_start_d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    :try_start_e
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_4
    :try_start_f
    const-string v3, "Failed to verity-protect overlay manager settings"

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    goto :goto_a

    :cond_4
    :goto_6
    if-eqz v1, :cond_8

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_d

    :catch_1
    move-exception p1

    goto :goto_c

    :catchall_6
    move-exception p1

    if-eqz v5, :cond_5

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v3

    :try_start_13
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :goto_8
    if-eqz v2, :cond_6

    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v2

    :try_start_15
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_9
    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :goto_a
    if-eqz v1, :cond_7

    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v1

    :try_start_17
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_b
    throw p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write reserve copy overlay manager settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_d
    return-void

    :catchall_a
    move-exception p0

    if-eqz v1, :cond_9

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_e
    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openRead()Ljava/io/FileInputStream;
    .locals 4

    const-string v0, "Cleaning up overlay manager settings file "

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v2, "ResilientAtomicFile"

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Need to read from backup overlay manager settings file"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Need to read from reserve copy overlay manager settings file"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "No overlay manager settings file"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public final startWrite()Ljava/io/FileOutputStream;
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "Unable to backup overlay manager settings file, current changes will be lost at reboot"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string/jumbo v0, "Preserving older overlay manager settings backup"

    const-string/jumbo v1, "ResilientAtomicFile"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate startWrite call?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
