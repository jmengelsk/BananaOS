.class public final Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLastAnrFile:Ljava/io/File;

.field public final mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V
    .registers 4

    const-string/jumbo v0, "WriteANRInfoThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    return-void
.end method

.method public static closeFileStream(Ljava/io/BufferedInputStream;)V
    .registers 3

    if-eqz p0, :cond_12

    :try_start_2
    const-string v0, "AnrCollector"

    const-string/jumbo v1, "buf.close()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    return-void
.end method


# virtual methods
.method public final closeOutStream()V
    .registers 4

    const-string v0, "AnrCollector"

    :try_start_2
    const-string/jumbo v1, "write : 0"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    const-string/jumbo v1, "mOut.close()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :cond_8
    const/4 v0, 0x0

    const/16 v1, 0x4000

    :try_start_b
    new-array v2, v1, [B

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_36
    .catchall {:try_start_b .. :try_end_19} :catchall_32

    :goto_19
    const/4 v0, 0x0

    :try_start_1a
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2b

    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v5, v2, v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_29
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    goto :goto_19

    :catchall_27
    move-exception v0

    goto :goto_43

    :catch_29
    move-exception v0

    goto :goto_39

    :cond_2b
    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :catchall_32
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_43

    :catch_36
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_27

    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :goto_43
    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    throw v0
.end method
