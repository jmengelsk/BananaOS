.class public final Lcom/android/server/power/shutdown/PngPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;


# instance fields
.field public animationResolutions:Ljava/util/List;

.field public drawHandler:Landroid/os/Handler;

.field public mainBitmap:Landroid/graphics/Bitmap;

.field public subBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setImageToView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const-string/jumbo v1, "setImageToView bitmapSize["

    const-string/jumbo v2, "]"

    const-string/jumbo v3, "Shutdown-PngPlayer"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final getAnimationResolutions()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "getMainAnimationWidthHeight unexpected flow %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-PngPlayer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/power/shutdown/PngPlayer;->animationResolutions:Ljava/util/List;

    return-object p0
.end method

.method public final declared-synchronized getDrawHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->drawHandler:Landroid/os/Handler;
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

.method public final isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v0, "onSizeChanged width="

    const-string v1, ", height="

    const-string v2, ", oldWidth="

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldHeight="

    const-string v3, ","

    invoke-static {p3, p4, v2, v3, v0}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "Shutdown-PngPlayer"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    iget-object p3, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p3, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    const v0, 0x7fffffff

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :cond_2
    if-ne p1, p3, :cond_3

    if-ne p2, v0, :cond_3

    const-string/jumbo p3, "getMatchedAnimationLoader main matched exactly width="

    invoke-static {p1, p2, p3, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    :cond_3
    iget-object v2, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne p1, v2, :cond_4

    if-ne p2, v3, :cond_4

    const-string/jumbo p3, "getMatchedAnimationLoader sub matched exactly width="

    invoke-static {p1, p2, p3, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    :cond_4
    move v5, p1

    move v4, p2

    :goto_1
    if-eqz v4, :cond_5

    rem-int/2addr v5, v4

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_1

    :cond_5
    if-lez v5, :cond_6

    div-int v4, p1, v5

    goto :goto_2

    :cond_6
    move v4, p1

    :goto_2
    if-lez v5, :cond_7

    div-int v5, p2, v5

    goto :goto_3

    :cond_7
    move v5, p2

    :goto_3
    move v7, p3

    move v6, v0

    :goto_4
    if-eqz v6, :cond_8

    rem-int/2addr v7, v6

    move v8, v7

    move v7, v6

    move v6, v8

    goto :goto_4

    :cond_8
    if-lez v7, :cond_9

    div-int/2addr p3, v7

    :cond_9
    if-lez v7, :cond_a

    div-int/2addr v0, v7

    :cond_a
    if-ne v4, p3, :cond_b

    if-ne v5, v0, :cond_b

    const-string/jumbo p1, "getMatchedAnimationLoader main matched ratio width="

    invoke-static {v4, v5, p1, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_b
    move v0, v2

    move p3, v3

    :goto_5
    if-eqz p3, :cond_c

    rem-int/2addr v0, p3

    move v8, v0

    move v0, p3

    move p3, v8

    goto :goto_5

    :cond_c
    if-lez v0, :cond_d

    div-int/2addr v2, v0

    :cond_d
    if-lez v0, :cond_e

    div-int/2addr v3, v0

    :cond_e
    if-ne v4, v2, :cond_f

    if-ne v5, v3, :cond_f

    const-string/jumbo p1, "getMatchedAnimationLoader sub matched ratio width="

    invoke-static {v4, v5, p1, v1, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_f
    const-string/jumbo p3, "getMatchedAnimationLoader not found matched resouce viewWidth="

    const-string v0, ", viewHeight="

    invoke-static {p1, p2, p3, v0, p4}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_10
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getMatchedAnimationLoader viewWidth or viewHeight is 0 or subAnimationLoaders is null "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    :goto_7
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->getDrawHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/PngPlayer;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final prepare()V
    .locals 4

    const-string/jumbo v0, "Shutdown-PngPlayer"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/PngPlayer;->getDrawHandler()Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/server/power/shutdown/PngPlayer;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    new-instance v0, Lcom/android/server/power/shutdown/PngPlayer$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object p0, p1, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/AnimationPlayer;

    return-void
.end method

.method public final start()V
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v0, "start"

    const-string/jumbo v1, "Shutdown-PngPlayer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object p0, p0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/android/server/power/shutdown/PngPlayer;->setImageToView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
