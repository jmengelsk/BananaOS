.class public final Lcom/android/server/power/shutdown/WebpPlayer;
.super Lcom/android/server/power/shutdown/AnimationPlayer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public animationResolutions:Ljava/util/List;

.field public currentAnimationLoader:Lcom/android/server/power/shutdown/AnimationLoader;

.field public drawHandler:Landroid/os/Handler;

.field public mainAnimationLoaders:Ljava/util/List;

.field public singleExecutorService:Ljava/util/concurrent/ExecutorService;

.field public subAnimationLoaders:Ljava/util/List;


# direct methods
.method public static channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V
    .registers 8

    if-eqz p0, :cond_47

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/shutdown/AnimationLoader;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gt v3, v2, :cond_22

    move-object v3, v4

    goto :goto_28

    :cond_22
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/shutdown/AnimationLoader;

    :goto_28
    iput-object v3, v1, Lcom/android/server/power/shutdown/AnimationLoader;->nextAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    if-eqz p1, :cond_45

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_45

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v0, :cond_3c

    goto :goto_43

    :cond_3c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/power/shutdown/AnimationLoader;

    :goto_43
    iput-object v4, v1, Lcom/android/server/power/shutdown/AnimationLoader;->pairAnimation:Lcom/android/server/power/shutdown/AnimationLoader;

    :cond_45
    move v0, v2

    goto :goto_b

    :cond_47
    return-void
.end method


# virtual methods
.method public final getAnimationResolutions()Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    if-nez v0, :cond_af

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_42

    iget-object v3, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_42
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_61
    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    if-eqz v1, :cond_9a

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9a
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "getMainAnimationWidthHeight unexpected flow %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-WebpPlayer"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    :cond_f
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->drawHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final isPlaying()Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    sget-object v2, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    sget-object v3, Lcom/android/server/power/shutdown/AnimationType;->MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_39

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :cond_1d
    :goto_1d
    if-ge v7, v6, :cond_39

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/power/shutdown/AnimationLoader;

    iget-object v9, v8, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v9, v3, :cond_1d

    if-ne v9, v2, :cond_31

    goto :goto_1d

    :cond_31
    iget-object v8, v8, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v8, v1, :cond_1d

    return v5

    :cond_39
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    if-eqz v0, :cond_6a

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v4

    :cond_4e
    :goto_4e
    if-ge v6, v0, :cond_6a

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/power/shutdown/AnimationLoader;

    iget-object v8, v7, Lcom/android/server/power/shutdown/AnimationLoader;->animationType:Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v8, v3, :cond_4e

    if-ne v8, v2, :cond_62

    goto :goto_4e

    :cond_62
    iget-object v7, v7, Lcom/android/server/power/shutdown/AnimationLoader;->status:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v7, v1, :cond_4e

    return v5

    :cond_6a
    return v4
.end method

.method public final makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;
    .registers 21

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    add-int/2addr v1, v3

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "makeAnimationLoaders, file count["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Shutdown-WebpPlayer"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_35
    if-ge v2, v1, :cond_50

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move-object v6, v4

    check-cast v6, Ljava/io/File;

    new-instance v5, Lcom/android/server/power/shutdown/AnimationLoader;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    move-object/from16 v11, p0

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/power/shutdown/AnimationLoader;-><init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_50
    if-eqz p2, :cond_6e

    new-instance v10, Lcom/android/server/power/shutdown/AnimationLoader;

    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->MAIN:Lcom/android/server/power/shutdown/AnimationType;

    move-object/from16 v1, p3

    if-ne v1, v0, :cond_5e

    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->MAIN_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    :goto_5c
    move-object v15, v0

    goto :goto_61

    :cond_5e
    sget-object v0, Lcom/android/server/power/shutdown/AnimationType;->SUB_LOOP:Lcom/android/server/power/shutdown/AnimationType;

    goto :goto_5c

    :goto_61
    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v16, p0

    move-object/from16 v11, p2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/power/shutdown/AnimationLoader;-><init>(Ljava/io/File;IJLcom/android/server/power/shutdown/AnimationType;Lcom/android/server/power/shutdown/WebpPlayer;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    return-object v3
.end method

.method public final onFoldStateChanged(Z)V
    .registers 3

    const-string/jumbo p0, "onFoldStateChanged folded = "

    const-string/jumbo v0, "Shutdown-WebpPlayer"

    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .registers 7

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo p0, "onSizeChanged width="

    const-string v0, ", height="

    const-string v1, ", oldWidth="

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", oldHeight="

    const-string p2, ","

    invoke-static {p3, p4, p1, p2, p0}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Shutdown-WebpPlayer"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTableModeChanged(Z)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onTableModeChanged half_opened = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Shutdown-WebpPlayer"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final prepare()V
    .registers 5

    const-string/jumbo v0, "Shutdown-WebpPlayer"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    sget-object v3, Lcom/android/server/power/shutdown/AnimationType;->MAIN:Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/shutdown/WebpPlayer;->makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    iget-object v1, v0, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    sget-object v2, Lcom/android/server/power/shutdown/AnimationType;->SUB:Lcom/android/server/power/shutdown/AnimationType;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/shutdown/WebpPlayer;->makeAnimationLoaders(Ljava/util/List;Ljava/io/File;Lcom/android/server/power/shutdown/AnimationType;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/power/shutdown/WebpPlayer;->channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/power/shutdown/WebpPlayer;->channingAnimationLoaders(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    new-instance v2, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/WebpPlayer;I)V

    iput-object v2, v0, Lcom/android/server/power/shutdown/AnimationLoader;->imageResolutionExtractor:Ljava/util/function/Consumer;

    :cond_5a
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    if-eqz v0, :cond_78

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    new-instance v1, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/WebpPlayer;I)V

    iput-object v1, v0, Lcom/android/server/power/shutdown/AnimationLoader;->imageResolutionExtractor:Ljava/util/function/Consumer;

    :cond_78
    return-void
.end method

.method public final setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    if-eqz p1, :cond_6

    iput-object p0, p1, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/AnimationPlayer;

    :cond_6
    return-void
.end method

.method public final start()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->mainAnimationLoaders:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/shutdown/AnimationLoader;

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    if-eqz v0, :cond_33

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->subAnimationLoaders:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/shutdown/AnimationLoader;

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->start()V

    :cond_33
    return-void
.end method
