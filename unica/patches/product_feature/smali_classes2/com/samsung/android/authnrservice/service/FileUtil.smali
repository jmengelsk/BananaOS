.class public abstract Lcom/samsung/android/authnrservice/service/FileUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static openFile(Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;JJ)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const-string v0, "FileUtil"

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "Skipped fewer bytes than requested."

    invoke-static {v0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-direct {p2, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p1}, Ljava/lang/Thread;-><init>()V

    iput-object p0, p1, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->in:Ljava/io/InputStream;

    iput-object p2, p1, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->out:Ljava/io/OutputStream;

    iput-wide p3, p1, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->length:J

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    aget-object p0, v1, p0

    return-object p0

    :catch_0
    const-string p0, "Exception opening pipe"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Could not open pipe for: "

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
