.class public final Lcom/android/server/power/shutdown/ShutdownDialog;
.super Landroid/app/Dialog;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

.field public logHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

.field public mLogView:Landroid/widget/TextView;

.field public final soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/power/shutdown/SoundPlayer;

    invoke-direct {v0, p1}, Lcom/android/server/power/shutdown/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    new-instance v0, Lcom/android/server/power/shutdown/WebpPlayer;

    const-string v1, ".webp"

    invoke-direct {v0, p1, v1}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v3, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    iget-object v4, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    iget-object v5, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    iget-object v6, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "isAvailable %s, %s, [%s,%s]"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Shutdown-WebpPlayer"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3f

    goto :goto_9e

    :cond_3f
    new-instance v0, Lcom/android/server/power/shutdown/QmgPlayer;

    invoke-direct {v0, p1}, Lcom/android/server/power/shutdown/QmgPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/power/LibQmg;->qmgCheckSupportQmg()I

    move-result v2

    if-ne v2, v3, :cond_53

    iget-object v2, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_9e

    :cond_53
    new-instance v0, Lcom/android/server/power/shutdown/PngPlayer;

    const-string v2, ".png"

    invoke-direct {v0, p1, v2}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    iput-object p1, v0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    iget-object v5, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    iget-object v6, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    iget-object v7, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    iget-object v8, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Shutdown-PngPlayer"

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    if-nez v1, :cond_9e

    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    if-eqz v1, :cond_94

    goto :goto_9e

    :cond_94
    const-string/jumbo v0, "Shutdown-AnimationPlayer"

    const-string/jumbo v1, "createPlayer can not make available player"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    :cond_9e
    :goto_9e
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-nez v0, :cond_ab

    const-string/jumbo p1, "Shutdown-ShutdownDialog"

    const-string/jumbo v0, "can\'t find available animation player"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_ea

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "ShutdownDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7f95fa80

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/16 v1, 0x7e5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_ea
    return-void
.end method


# virtual methods
.method public final disableWindowRotation()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    const-string/jumbo v1, "Shutdown-ShutdownDialog"

    if-nez v0, :cond_e

    const-string/jumbo p0, "disableWindowRotation can\'t get animationPlayer"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo p0, "disableWindowRotation can\'t get window"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iget-object v2, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    invoke-virtual {v2}, Lcom/android/server/power/shutdown/AnimationPlayer;->getAnimationResolutions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto/16 :goto_b8

    :cond_2b
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationPlayer;->getDisplayMode()Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    move-result-object p0

    sget-object v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, v3, :cond_3b

    sget-object v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->SUB_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    if-ne p0, v3, :cond_48

    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v4, :cond_48

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    goto :goto_4e

    :cond_48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    :goto_4e
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_67

    const-string/jumbo p0, "disableWindowRotation width and height are same as "

    invoke-static {v3, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v8, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le v3, v6, :cond_78

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_7a

    :cond_78
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_7a
    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-nez v6, :cond_8a

    const-string v6, "LANDSCAPE"

    goto :goto_8d

    :cond_8a
    const-string/jumbo v6, "PORTRAIT"

    :goto_8d
    const-string/jumbo v7, "disableWindowRotation window(W:"

    const-string v8, "/H:"

    const-string v9, "), image(W:"

    invoke-static {v0, v3, v7, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] orientation["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-static {v0, v6, p0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b8
    :goto_b8
    const-string/jumbo p0, "disableWindowRotation can\'t get imageResolutions"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_27
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    iget-object v3, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->logHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz p1, :cond_92

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    invoke-virtual {p1, p0}, Lcom/android/server/power/shutdown/AnimationPlayer;->setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V

    :cond_92
    return-void
.end method

.method public final onStart()V
    .registers 3

    const-string/jumbo v0, "Shutdown-ShutdownDialog"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/ShutdownDialog;->disableWindowRotation()V

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/android/server/power/shutdown/PlayerInterface;->start()V

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog$1;-><init>(Lcom/android/server/power/shutdown/ShutdownDialog;)V

    iput-object v1, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->dialogListener:Lcom/android/server/power/shutdown/ShutdownDialog$1;

    :cond_1f
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    invoke-virtual {p0}, Lcom/android/server/power/shutdown/SoundPlayer;->start()V

    return-void
.end method

.method public final onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const-string/jumbo p0, "Shutdown-ShutdownDialog"

    const-string/jumbo v0, "onStop"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
