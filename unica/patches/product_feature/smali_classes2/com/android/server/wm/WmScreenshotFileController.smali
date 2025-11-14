.class public final Lcom/android/server/wm/WmScreenshotFileController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mFileNumber:I

.field public mFocusedTaskNumber:I

.field public mRotationLayerNumber:I

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mTargetWindowNumber:I


# virtual methods
.method public final saveBitmapToScreenshotFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/PrintWriter;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "screenshot"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v2, "WindowManager"

    if-nez v0, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string p0, "Failed create directory"

    if-nez p3, :cond_27

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "dir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    const-string/jumbo v0, "target_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x64

    const-string v4, ".jpg"

    const-string/jumbo v5, "_d"

    const/4 v6, 0x0

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    if-ge v0, v3, :cond_58

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    :goto_56
    move v6, v0

    goto :goto_84

    :cond_58
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mTargetWindowNumber:I

    goto :goto_84

    :cond_5b
    const-string/jumbo v0, "focused_task"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    if-ge v0, v3, :cond_6d

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    goto :goto_56

    :cond_6d
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFocusedTaskNumber:I

    goto :goto_84

    :cond_70
    const-string/jumbo v0, "rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    if-ge v0, v3, :cond_82

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    goto :goto_56

    :cond_82
    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mRotationLayerNumber:I

    :goto_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b2

    :cond_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFileNumber:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lcom/android/server/wm/WmScreenshotFileController;->mFileNumber:I

    invoke-static {v0, p4, v5, v4, p1}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    :goto_b2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_b7
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bc} :catch_f4

    :try_start_bc
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p1, v3, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_d6

    const-string/jumbo p1, "Save fileName:"

    if-eqz p3, :cond_d8

    :try_start_c6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e7

    :catchall_d6
    move-exception p0

    goto :goto_eb

    :cond_d8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_c6 .. :try_end_e7} :catchall_d6

    :goto_e7
    :try_start_e7
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_f4

    return-void

    :goto_eb
    :try_start_eb
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ef

    goto :goto_f3

    :catchall_ef
    move-exception p1

    :try_start_f0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f3
    throw p0
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f4} :catch_f4

    :catch_f4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
