.class public final Lcom/android/server/pm/ResilientAtomicFile;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public mCurrentFile:Ljava/io/File;

.field public mCurrentInStream:Ljava/io/FileInputStream;

.field public final mDebugName:Ljava/lang/String;

.field public final mFile:Ljava/io/File;

.field public final mFileMode:I

.field public mMainInStream:Ljava/io/FileInputStream;

.field public mMainOutStream:Ljava/io/FileOutputStream;

.field public final mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

.field public final mReserveCopy:Ljava/io/File;

.field public mReserveInStream:Ljava/io/FileInputStream;

.field public mReserveOutStream:Ljava/io/FileOutputStream;

.field public final mTemporaryBackup:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput p4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    iput-object p5, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void
.end method

.method public final failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-ne v0, p1, :cond_59

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz p1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@Error reading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    invoke-interface {p1, v1, p2}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    :cond_38
    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_43

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void

    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final failWrite(Ljava/io/FileOutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v0, p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to clean up mangled file: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ResilientAtomicFile"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to verity-protect "

    const-string/jumbo v1, "ResilientAtomicFile"

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v2, p1, :cond_eb

    const/4 p1, 0x0

    :try_start_a
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_df

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :try_start_24
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_26} :catch_9d

    :try_start_26
    iget-object v3, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_95

    :try_start_28
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_6b

    :try_start_2e
    iput-object p1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v2, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iget v6, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFileMode:I

    invoke-static {p1, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_9f

    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_6b

    if-eqz p2, :cond_8f

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_6d
    .catchall {:try_start_47 .. :try_end_4f} :catchall_6b

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_63

    :try_start_57
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {p2}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_6f

    if-eqz p2, :cond_65

    :try_start_5f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_65

    :catchall_63
    move-exception p2

    goto :goto_7b

    :cond_65
    :goto_65
    if-eqz p1, :cond_8f

    :try_start_67
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_8f

    :catchall_6b
    move-exception p1

    goto :goto_ab

    :catch_6d
    move-exception p1

    goto :goto_86

    :catchall_6f
    move-exception v4

    if-eqz p2, :cond_7a

    :try_start_72
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception p2

    :try_start_77
    invoke-virtual {v4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    throw v4
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_63

    :goto_7b
    if-eqz p1, :cond_85

    :try_start_7d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception p1

    :try_start_82
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_85
    :goto_85
    throw p2
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_6d
    .catchall {:try_start_82 .. :try_end_86} :catchall_6b

    :goto_86
    :try_start_86
    iget-object p2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_6b

    :cond_8f
    :goto_8f
    if-eqz v3, :cond_97

    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_97

    :catchall_95
    move-exception p1

    goto :goto_b6

    :cond_97
    :goto_97
    if-eqz v2, :cond_de

    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_de

    :catch_9d
    move-exception p1

    goto :goto_c1

    :catchall_9f
    move-exception p1

    if-eqz v4, :cond_aa

    :try_start_a2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception p2

    :try_start_a7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    throw p1
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_6b

    :goto_ab
    if-eqz v3, :cond_b5

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception p2

    :try_start_b2
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    throw p1
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_95

    :goto_b6
    if-eqz v2, :cond_c0

    :try_start_b8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception p2

    :try_start_bd
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c0
    :goto_c0
    throw p1
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c1} :catch_9d

    :goto_c1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to write reserve copy "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_de
    :goto_de
    return-void

    :catchall_df
    move-exception p0

    if-eqz v2, :cond_ea

    :try_start_e2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_ea

    :catchall_e6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ea
    :goto_ea
    throw p0

    :cond_eb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openRead()Ljava/io/FileInputStream;
    .registers 7

    const-string v0, "Cleaning up "

    const-string/jumbo v1, "Need to read from backup "

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, " file"

    const/4 v4, 0x4

    if-eqz v2, :cond_65

    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v2, :cond_35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    :cond_35
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_60

    const-string/jumbo v1, "ResilientAtomicFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " file "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_60
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_65} :catch_65

    :catch_65
    :cond_65
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_6a

    return-object v0

    :cond_6a
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    goto :goto_b0

    :cond_80
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v0, :cond_b0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Need to read from reserve copy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    :cond_b0
    :goto_b0
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_cf

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;

    if-eqz v0, :cond_cf

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;->logEvent(ILjava/lang/String;)V

    :cond_cf
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public final startWrite()Ljava/io/FileOutputStream;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_95

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_5a

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to backup "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    const-string v2, " file, current changes will be lost at reboot"

    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Preserving older "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mDebugName:Ljava/lang/String;

    const-string v2, " backup"

    const-string/jumbo v3, "ResilientAtomicFile"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_5f
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_83} :catch_90

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    iget-object v0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWrite(Ljava/io/FileOutputStream;)V

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    return-object p0

    :catch_90
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    throw v0

    :cond_95
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate startWrite call?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
