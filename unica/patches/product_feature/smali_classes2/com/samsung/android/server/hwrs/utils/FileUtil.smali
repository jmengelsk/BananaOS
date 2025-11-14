.class public abstract Lcom/samsung/android/server/hwrs/utils/FileUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "deleteFile: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[HWRS_SYS]FileUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo v0, "deleteFile failed"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
