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
    .registers 6

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
    .registers 2

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
    .registers 5

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-ne v0, p1, :cond_51

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz p1, :cond_30

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

    :cond_30
    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_3b

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    return-void

    :cond_3b
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

    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final failWrite(Ljava/io/FileOutputStream;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v0, p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/om/ResilientAtomicFile;->close()V

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to clean up mangled file: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

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

.method public final finishWrite(Ljava/io/FileOutputStream;)V
    .registers 8

    const-string/jumbo v0, "ResilientAtomicFile"

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-ne v1, p1, :cond_d7

    const/4 p1, 0x0

    :try_start_8
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x1b0

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_cb

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :try_start_22
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_24} :catch_93

    :try_start_24
    iget-object v2, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_8b

    :try_start_26
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainInStream:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveInStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_65

    :try_start_2c
    iput-object p1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveOutStream:Ljava/io/FileOutputStream;

    invoke-static {v1, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_95

    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_65

    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_67
    .catchall {:try_start_41 .. :try_end_49} :catchall_65

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_5d

    :try_start_51
    invoke-static {p1}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v3}, Lcom/android/server/security/FileIntegrity;->setUpFsVerity(Landroid/os/ParcelFileDescriptor;)V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_69

    if-eqz v3, :cond_5f

    :try_start_59
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_5f

    :catchall_5d
    move-exception v3

    goto :goto_75

    :cond_5f
    :goto_5f
    if-eqz p1, :cond_85

    :try_start_61
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_67
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_85

    :catchall_65
    move-exception p1

    goto :goto_a1

    :catch_67
    move-exception p1

    goto :goto_80

    :catchall_69
    move-exception v4

    if-eqz v3, :cond_74

    :try_start_6c
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception v3

    :try_start_71
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw v4
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_5d

    :goto_75
    if-eqz p1, :cond_7f

    :try_start_77
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception p1

    :try_start_7c
    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    throw v3
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_67
    .catchall {:try_start_7c .. :try_end_80} :catchall_65

    :goto_80
    :try_start_80
    const-string v3, "Failed to verity-protect overlay manager settings"

    invoke-static {v0, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_65

    :cond_85
    :goto_85
    if-eqz v2, :cond_8d

    :try_start_87
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8d

    :catchall_8b
    move-exception p1

    goto :goto_ac

    :cond_8d
    :goto_8d
    if-eqz v1, :cond_ca

    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_ca

    :catch_93
    move-exception p1

    goto :goto_b7

    :catchall_95
    move-exception p1

    if-eqz v5, :cond_a0

    :try_start_98
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v3

    :try_start_9d
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a0
    :goto_a0
    throw p1
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_65

    :goto_a1
    if-eqz v2, :cond_ab

    :try_start_a3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v2

    :try_start_a8
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ab
    throw p1
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_8b

    :goto_ac
    if-eqz v1, :cond_b6

    :try_start_ae
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b6

    :catchall_b2
    move-exception v1

    :try_start_b3
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b6
    :goto_b6
    throw p1
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_93

    :goto_b7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write reserve copy overlay manager settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ca
    :goto_ca
    return-void

    :catchall_cb
    move-exception p0

    if-eqz v1, :cond_d6

    :try_start_ce
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_d6

    :catchall_d2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d6
    :goto_d6
    throw p0

    :cond_d7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid incoming stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openRead()Ljava/io/FileInputStream;
    .registers 5

    const-string v0, "Cleaning up overlay manager settings file "

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v2, "ResilientAtomicFile"

    if-eqz v1, :cond_47

    :try_start_d
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v1, :cond_24

    const-string/jumbo v1, "Need to read from backup overlay manager settings file"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_42
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_4c

    return-object v0

    :cond_4c
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    goto :goto_81

    :cond_62
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v0, :cond_81

    const-string/jumbo v0, "Need to read from reserve copy overlay manager settings file"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mReadEventLogger:Lcom/android/server/om/OverlayManagerService;

    if-eqz v0, :cond_8f

    const-string/jumbo v0, "No overlay manager settings file"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mCurrentInStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method public final startWrite()Ljava/io/FileOutputStream;
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_7a

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_44

    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "Unable to backup overlay manager settings file, current changes will be lost at reboot"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string/jumbo v0, "Preserving older overlay manager settings backup"

    const-string/jumbo v1, "ResilientAtomicFile"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
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

    :cond_7a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate startWrite call?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
