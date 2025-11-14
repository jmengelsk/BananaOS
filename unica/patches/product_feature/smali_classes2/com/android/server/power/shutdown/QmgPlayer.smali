.class public final Lcom/android/server/power/shutdown/QmgPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final bitmapQ:[Landroid/graphics/Bitmap;

.field public bitmapQFront:I

.field public bitmapQRear:I

.field public final drawBufferLock:Ljava/lang/Object;

.field public imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

.field public mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

.field public final mainImages:Ljava/util/List;

.field public final mainLoopImage:Lcom/android/server/power/LibQmg;

.field public final subImages:Ljava/util/List;

.field public final subLoopImage:Lcom/android/server/power/LibQmg;

.field public final subbitmapQ:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, ".qmg"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQFront:I

    iput v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQRear:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->drawBufferLock:Ljava/lang/Object;

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/power/shutdown/QmgPlayer;->makeQmgList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/power/shutdown/QmgPlayer;->makeQmgList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/power/LibQmg;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainLoopImage:Lcom/android/server/power/LibQmg;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/server/power/LibQmg;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subLoopImage:Lcom/android/server/power/LibQmg;

    return-void
.end method

.method public static makeQmgList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v2, Lcom/android/server/power/LibQmg;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getAnimationResolutions()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    iget-object v2, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/LibQmg;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;->running:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final prepare()V
    .locals 9

    const-string/jumbo v0, "Shutdown-QmgPlayer"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;-><init>(Lcom/android/server/power/shutdown/QmgPlayer;)V

    iput-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!@[prepare] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    iget-object v6, p0, Lcom/android/server/power/shutdown/QmgPlayer;->bitmapQ:[Landroid/graphics/Bitmap;

    aget-object v7, v6, v5

    if-nez v7, :cond_0

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "qmglist error"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    iget-object v4, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/LibQmg;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "!@[prepare] subdisplay : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v4

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v7, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v7, p0, Lcom/android/server/power/shutdown/QmgPlayer;->subbitmapQ:[Landroid/graphics/Bitmap;

    aget-object v8, v7, v1

    if-nez v8, :cond_3

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "no sub_shutdown.qmg"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/QmgPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo p0, "becareful prepare while draw"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->mDrawHandler:Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;

    iput-boolean v3, p0, Lcom/android/server/power/shutdown/QmgPlayer$DrawHandler;->finished:Z

    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    return-void
.end method

.method public final start()V
    .locals 2

    const-string/jumbo v0, "Shutdown-QmgPlayer"

    const-string v1, "!@StateDrawing.start()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    invoke-direct {v0, p0}, Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;-><init>(Lcom/android/server/power/shutdown/QmgPlayer;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/server/power/shutdown/QmgPlayer;->imageLoader:Lcom/android/server/power/shutdown/QmgPlayer$ImageLoader;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
