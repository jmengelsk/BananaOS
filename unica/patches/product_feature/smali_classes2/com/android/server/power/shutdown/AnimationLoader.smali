.class public final Lcom/android/server/power/shutdown/AnimationLoader;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

.field public final animationFile:Ljava/io/File;

.field public final animationType:Lcom/android/server/power/shutdown/AnimationType;

.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public imageResolutionExtractor:Ljava/util/function/Consumer;

.field public nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

.field public pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

.field public final playTimeout:J

.field public final player:Lcom/android/server/power/shutdown/WebpPlayer;

.field public final repeatCount:I

.field public status:Lcom/android/server/power/shutdown/AnimationStatus;

.field public stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->IDLE:Lcom/android/server/power/shutdown/AnimationStatus;

    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    iput p2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    iput-wide p3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    iput-object p5, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    iput-object p6, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V
    .locals 6

    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    if-ne p1, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    if-eqz v1, :cond_3

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/android/server/power/shutdown/WebpPlayer;->currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    const-string/jumbo v3, "Shutdown-WebpPlayer"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne p0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onAnimationChanged status["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "] equals["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] animation["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_3

    monitor-enter v1

    :try_start_1
    iput-object p0, v1, Lcom/android/server/power/shutdown/WebpPlayer;->currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "invalidateDrawable drawable[%s], imageView[%s]"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Shutdown-AnimationLoader"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne p0, v2, :cond_0

    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq p0, v2, :cond_2

    :cond_0
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    new-instance p0, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->canvas:Landroid/graphics/Canvas;

    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    iget-object v2, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v0, v2, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final declared-synchronized loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;
    .locals 3

    const-string/jumbo v0, "loadDrawable "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    iput-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->LOAD:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->imageResolutionExtractor:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string/jumbo v1, "Shutdown-AnimationLoader"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string/jumbo v0, "Shutdown-AnimationLoader"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAnimationEnd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->clearAnimationCallbacks()V

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    :cond_0
    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->FINISH:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    monitor-enter p0

    :try_start_0
    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->bitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->canvas:Landroid/graphics/Canvas;

    :cond_4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAnimationStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-AnimationLoader"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {p0, v0}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    iget-object v0, p1, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object p1, p1, Lcom/android/server/power/shutdown/WebpPlayer;->singleExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prepare "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "scheduleDrawable schedule time[%d][%d] drawable[%s]"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Shutdown-AnimationLoader"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final start()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V

    iput-object v3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationLoader{animationFile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", animationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animatedImageDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", next="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    iget-object v3, v3, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", pair="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->animationFile:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "unscheduleDrawable drawable[%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "Shutdown-AnimationLoader"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
