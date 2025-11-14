.class public final Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mLatchSavingBitmap:Ljava/util/concurrent/CountDownLatch;

.field public final mPendingItems:Ljava/util/Deque;

.field public final mRunnable:Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mLatchSavingBitmap:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    new-instance v0, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method public static removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const v0, 0x8a0c

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "  "

    const-string/jumbo v1, "Pending saves: Num="

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    check-cast v3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Executor="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_34

    :catchall_4c
    move-exception p0

    goto :goto_50

    :cond_4e
    monitor-exit v2

    return-void

    :goto_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4c

    throw p0
.end method

.method public final saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 10

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo p0, "ShortcutService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Missing icon: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_27
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {p2, v1}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_3b} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_3b} :catch_69
    .catchall {:try_start_27 .. :try_end_3b} :catchall_67

    :try_start_3b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/high16 v4, 0x10000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_a4

    :try_start_42
    invoke-virtual {p2, p3, p4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3

    if-nez p3, :cond_54

    const-string/jumbo p3, "ShortcutService"

    const-string/jumbo p4, "Unable to compress bitmap"

    invoke-static {p3, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catchall_52
    move-exception p0

    goto :goto_a6

    :cond_54
    :goto_54
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_52

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_a4

    if-eq p2, v1, :cond_6b

    :try_start_63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_66} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_66} :catch_69
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p0

    goto :goto_c2

    :catch_69
    move-exception p0

    goto :goto_b5

    :cond_6b
    :goto_6b
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/16 p2, 0x808

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p2

    const/4 p4, 0x5

    if-ne p2, p4, :cond_7f

    const/16 p2, 0x200

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_7f
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    invoke-direct {p2, p1, p3}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[B)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter p1

    :try_start_87
    iget-object p3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    check-cast p3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_a1

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mLatchSavingBitmap:Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutService;->mBitmapExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_a1
    move-exception p0

    :try_start_a2
    monitor-exit p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0

    :catchall_a4
    move-exception p0

    goto :goto_af

    :goto_a6
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception p1

    :try_start_ab
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ae
    throw p0
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_a4

    :goto_af
    if-eq p2, v1, :cond_b4

    :try_start_b1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b4
    throw p0
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b5} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_b1 .. :try_end_b5} :catch_69
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b1 .. :try_end_b5} :catch_69
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_67

    :goto_b5
    :try_start_b5
    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo p2, "Unable to write bitmap to file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_67

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_c2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public final waitForAllSavesLocked()Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mLatchSavingBitmap:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v0, "Timed out waiting on saving bitmaps."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    const-string/jumbo p0, "ShortcutService"

    const-string/jumbo v0, "interrupted"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    const/4 p0, 0x0

    return p0
.end method
