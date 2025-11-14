.class public final Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public in:Ljava/io/InputStream;

.field public length:J

.field public out:Ljava/io/OutputStream;


# virtual methods
.method public final run()V
    .registers 9

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_27

    iget-wide v5, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->length:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v5, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->out:Ljava/io/OutputStream;

    const/4 v6, 0x0

    long-to-int v7, v1

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v5, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->length:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->length:J

    cmp-long v1, v5, v3

    if-gtz v1, :cond_4

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/FileUtil$TransferThread;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_36} :catch_37

    return-void

    :catch_37
    const-string p0, "FileUtil"

    const-string v0, "Exception transferring file"

    invoke-static {p0, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
