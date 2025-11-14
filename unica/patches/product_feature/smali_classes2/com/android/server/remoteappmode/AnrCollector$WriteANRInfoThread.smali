.class public final Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLastAnrFile:Ljava/io/File;

.field public final mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V
    .locals 1

    const-string/jumbo v0, "WriteANRInfoThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    return-void
.end method

.method public static closeFileStream(Ljava/io/BufferedInputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "AnrCollector"

    const-string/jumbo v1, "buf.close()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final closeOutStream()V
    .locals 3

    const-string v0, "AnrCollector"

    :try_start_0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x4000

    :try_start_0
    new-array v2, v1, [B

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mLastAnrFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->mOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v5, v2, v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    return-void

    :goto_2
    invoke-static {v3}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeFileStream(Ljava/io/BufferedInputStream;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;->closeOutStream()V

    throw v0
.end method
