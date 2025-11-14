.class public abstract Lcom/android/server/net/watchlist/DigestUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getSha256Hash(Ljava/io/File;)[B
    .registers 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    const-string/jumbo p0, "SHA256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_10
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10

    :cond_1b
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
.end method
