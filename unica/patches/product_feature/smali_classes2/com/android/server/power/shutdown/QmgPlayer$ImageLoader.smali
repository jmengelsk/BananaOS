.class public final Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public running:Z

.field public final synthetic this$0:Lcom/android/server/power/shutdown/QmgPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/shutdown/QmgPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    return-void
.end method


# virtual methods
.method public final frameLoadLoop(Lcom/android/server/power/LibQmg;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v1, p1, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x21

    :cond_0
    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "Shutdown-QmgPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@[frameLoadLoop] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v2, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    iget v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    aget-object v1, v2, v1

    iget-wide v2, p1, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v2, v3, v1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iget v5, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_3

    :try_start_2
    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v4, "Shutdown-QmgPlayer"

    const-string/jumbo v5, "frameLoadLoop InterruptedException"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_4
    :goto_2
    if-gtz v1, :cond_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string/jumbo v1, "Shutdown-QmgPlayer"

    const-string/jumbo v2, "qmgLoadFrame return < 0"

    invoke-static {v1, v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-wide p0, p1, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    :cond_5
    const-string/jumbo p0, "Shutdown-QmgPlayer"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "!@[frameLoadLoop] done "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    const-string/jumbo v0, "Shutdown-QmgPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@[multiframeLoadLoop] startMain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    const-string/jumbo v0, "Shutdown-QmgPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@[multiframeLoadLoop] startSub "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-wide v1, p1, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v1, v2}, Lcom/android/server/power/LibQmg;->qmgGetDelayTime(J)I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x21

    :cond_0
    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v2, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    iget v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    aget-object v1, v2, v1

    iget-wide v2, p1, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v2, v3, v1}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v3, v2, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    iget v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    aget-object v2, v3, v2

    iget-wide v3, p2, Lcom/android/server/power/LibQmg;->handle:J

    invoke-static {v3, v4, v2}, Lcom/android/server/power/LibQmg;->qmgLoadBitmap(JLandroid/graphics/Bitmap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v2, v2, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iget v5, v3, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_3

    :try_start_2
    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string/jumbo v4, "Shutdown-QmgPlayer"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_4
    :goto_2
    if-gtz v1, :cond_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string/jumbo v1, "Shutdown-QmgPlayer"

    const-string/jumbo v2, "multiframeLoadLoop qmgLoadFrame return < 0"

    invoke-static {v1, v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-wide p0, p1, Lcom/android/server/power/LibQmg;->handle:J

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_5

    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    :cond_5
    iget-wide p0, p2, Lcom/android/server/power/LibQmg;->handle:J

    cmp-long p2, p0, v1

    if-eqz p2, :cond_6

    invoke-static {p0, p1}, Lcom/android/server/power/LibQmg;->qmgClose(J)I

    :cond_6
    const-string/jumbo p0, "Shutdown-QmgPlayer"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "!@[multiframeLoadLoop] done "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ImageLoadThread.run(), qmgList.size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v1, v1, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-QmgPlayer"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    iget-object v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v3, v3, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string v3, "!@qmgList or subqmgList IndexOutOfBoundsException"

    invoke-static {v1, v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v1, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainLoopImage:Lcom/android/server/power/LibQmg;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/power/shutdown/QmgPlayer;->subLoopImage:Lcom/android/server/power/LibQmg;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->multiFrameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
