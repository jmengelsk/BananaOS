.class public final Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public finished:Z

.field public maxSleep:I

.field public prevDisplayMode:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

.field public final synthetic this$0:Lcom/android/server/power/shutdown/QmgPlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/shutdown/QmgPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_a

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    return-void

    :cond_a
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1a

    const-string/jumbo p1, "Shutdown-QmgPlayer"

    const-string/jumbo v0, "image draw finish"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget v0, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    iget v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_102

    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    iget v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    int-to-long v4, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-boolean v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    if-eqz v0, :cond_df

    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->dialogListener:Lcom/android/server/power/shutdown/ShutdownDialog$1;

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/android/server/power/shutdown/AnimationPlayer;->getDisplayMode()Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->prevDisplayMode:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    if-eqz v0, :cond_60

    if-eq v0, p1, :cond_60

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->dialogListener:Lcom/android/server/power/shutdown/ShutdownDialog$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDisplayModeChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Shutdown-ShutdownDialog"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/power/shutdown/ShutdownDialog$1;->this$0:Lcom/android/server/power/shutdown/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/ShutdownDialog;->disableWindowRotation()V

    :cond_60
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->prevDisplayMode:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    :cond_62
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object p1, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    const-string/jumbo v2, "Shutdown-QmgPlayer"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "image draw displayType["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] isFolded["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_ae

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_ea

    :cond_ae
    const/4 v2, 0x5

    if-ne p1, v2, :cond_bf

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_ea

    :cond_bf
    if-nez v0, :cond_cf

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_ea

    :cond_cf
    if-nez v0, :cond_d2

    goto :goto_ea

    :cond_d2
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    aget-object p0, p1, p0

    const/4 p0, 0x0

    throw p0

    :cond_df
    iget-object v0, p1, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object v2, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_ea
    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_ef
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_ff
    move-exception p0

    monitor-exit p1
    :try_end_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_ff

    throw p0

    :cond_102
    iget-boolean p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    if-eqz p1, :cond_110

    const-string/jumbo p0, "Shutdown-QmgPlayer"

    const-string/jumbo p1, "image draw already finished"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_110
    const-string/jumbo p1, "Shutdown-QmgPlayer"

    const-string/jumbo v0, "image buffer not ready"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->this$0:Lcom/android/server/power/shutdown/QmgPlayer;

    iget-object p1, p1, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    iget p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->maxSleep:I

    div-int/lit8 p0, p0, 0x2

    int-to-long v0, p0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
