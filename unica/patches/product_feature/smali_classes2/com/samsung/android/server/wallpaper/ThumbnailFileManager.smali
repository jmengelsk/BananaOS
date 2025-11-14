.class public final Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

.field public static final sRotationTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sRotationTable:[I

    return-void
.end method

.method public static copyFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_2e

    :try_start_9
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    :try_start_e
    invoke-static {v0, p0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    :try_start_11
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    const/4 p0, 0x1

    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2e

    return p0

    :catchall_19
    move-exception p0

    goto :goto_25

    :catchall_1b
    move-exception p1

    :try_start_1c
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p0

    :try_start_21
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_19

    :goto_25
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "copyFile : e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ThumbnailFileManager"

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
    .registers 5

    const-class v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    if-nez v1, :cond_4a

    new-instance v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->getThumbnailFile(II)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_45

    :cond_19
    const-string/jumbo v2, "LegacyThumbnailFileRemover"

    const-string/jumbo v4, "remove: legacy wallpaper thumbnail detected."

    invoke-static {v2, v4}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_37

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    :cond_37
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v2, :cond_45

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    :cond_45
    :goto_45
    sput-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    goto :goto_4a

    :catchall_48
    move-exception v1

    goto :goto_4e

    :cond_4a
    :goto_4a
    sget-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_48

    monitor-exit v0

    return-object v1

    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_48

    throw v1
.end method

.method public static getThumbnailFile(III)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_thumbs"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string/jumbo v0, "_0"

    if-eqz p2, :cond_4b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 v1, 0x2

    if-eq p2, v1, :cond_44

    const/4 v1, 0x3

    if-eq p2, v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFileNamePostfix: incorrect rotation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "ThumbnailFileManager"

    invoke-static {v1, p2}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    :cond_40
    const-string/jumbo v0, "_270"

    goto :goto_4b

    :cond_44
    const-string/jumbo v0, "_180"

    goto :goto_4b

    :cond_48
    const-string/jumbo v0, "_90"

    :cond_4b
    :goto_4b
    const-string/jumbo p2, "thumbnail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "ThumbnailFileManager"

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "moveFile : failed to move file from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_4a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "moveFile : restorecon failed - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final declared-synchronized deleteThumbnailFiles(II)Z
    .registers 13

    const-string/jumbo v0, "deleteThumbnailFile: mode is not present. which="

    monitor-enter p0

    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isModeAbsent(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    const-string/jumbo p2, "ThumbnailFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return v2

    :catchall_1f
    move-exception p1

    goto/16 :goto_9f

    :cond_22
    :try_start_22
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    or-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z

    or-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    monitor-exit p0

    return v3

    :cond_39
    :try_start_39
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "wallpaper_thumbs"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_1f

    if-nez v0, :cond_56

    monitor-exit p0

    return v2

    :cond_56
    :try_start_56
    sget-object v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sRotationTable:[I

    move v4, v2

    :goto_59
    const/4 v5, 0x4

    if-ge v4, v5, :cond_9a

    aget v5, v0, v4

    invoke-static {p1, p2, v5}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    const-string/jumbo v7, "ThumbnailFileManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteThumbnailFile: which="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", rotation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", success="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_97

    move v3, v2

    :cond_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_9a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9d
    .catchall {:try_start_56 .. :try_end_9d} :catchall_1f

    monitor-exit p0

    return v3

    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_1f

    throw p1
.end method

.method public final declared-synchronized writeThumbnailFile(IIILandroid/os/ParcelFileDescriptor;)Z
    .registers 13

    const-string/jumbo v0, "writeThumbnailFile : failed to delete temp thumbnail file - "

    const-string/jumbo v1, "writeThumbnailFile: failed to create thumbnail dir - "

    const-string/jumbo v2, "writeThumbnailFile: which="

    monitor-enter p0

    :try_start_a
    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "ThumbnailFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotation="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_4f

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_4f

    const-string/jumbo p1, "ThumbnailFileManager"

    const-string/jumbo p2, "writeThumbnailFile: thumbnail already exist. skip writing"

    invoke-static {p1, p2}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return v2

    :catchall_4c
    move-exception p1

    goto/16 :goto_e6

    :cond_4f
    :try_start_4f
    new-instance p3, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo v4, "wallpaper_thumbs"

    invoke-direct {p3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_89

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_89

    const-string/jumbo p1, "ThumbnailFileManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_4f .. :try_end_87} :catchall_4c

    monitor-exit p0

    return p3

    :cond_89
    :try_start_89
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p1}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->copyFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_d0

    const-string/jumbo p2, "ThumbnailFileManager"

    const-string/jumbo p4, "writeThumbnailFile : failed to copy remote thumbnail file"

    invoke-static {p2, p4}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_ce

    const-string/jumbo p2, "ThumbnailFileManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_89 .. :try_end_ce} :catchall_4c

    :cond_ce
    monitor-exit p0

    return p3

    :cond_d0
    :try_start_d0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d9

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_d9
    invoke-static {p1, v3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_e4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_e2
    .catchall {:try_start_d0 .. :try_end_e2} :catchall_4c

    monitor-exit p0

    return p3

    :cond_e4
    monitor-exit p0

    return v2

    :goto_e6
    :try_start_e6
    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_4c

    throw p1
.end method
