.class public final synthetic Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutBitmapSaver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    const/16 v0, 0x800

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_85

    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v3

    if-nez v3, :cond_1e

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1c

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mLatchSavingBitmap:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_87

    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_1c

    :try_start_29
    iget-object v2, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_85

    :try_start_2b
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_60

    if-nez v4, :cond_38

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5c

    goto :goto_59

    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v4

    iget-object v1, v4, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_44} :catch_63
    .catchall {:try_start_38 .. :try_end_44} :catchall_60

    :try_start_44
    iget-object v3, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_65

    :try_start_49
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_53} :catch_63
    .catchall {:try_start_49 .. :try_end_53} :catchall_60

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5c

    :goto_59
    invoke-static {v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_5c
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    goto :goto_5

    :catchall_60
    move-exception p0

    move-object v1, v2

    goto :goto_89

    :catch_63
    move-exception v3

    goto :goto_6a

    :catchall_65
    move-exception v3

    :try_start_66
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_6a} :catch_63
    .catchall {:try_start_66 .. :try_end_6a} :catchall_60

    :goto_6a
    :try_start_6a
    const-string/jumbo v4, "ShortcutService"

    const-string/jumbo v5, "Unable to write bitmap to file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_60

    :cond_7e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5c

    goto :goto_59

    :catchall_85
    move-exception p0

    goto :goto_89

    :goto_87
    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_1c

    :try_start_88
    throw p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_85

    :goto_89
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_94

    invoke-static {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_94
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_97
    throw p0
.end method
