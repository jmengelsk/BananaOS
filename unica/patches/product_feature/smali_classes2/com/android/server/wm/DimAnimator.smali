.class public final Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContainer:Lcom/android/server/wm/WindowContainer;

.field public final mContext:Landroid/content/Context;

.field mDimAnimationLayer:Landroid/view/SurfaceControl;

.field public mTransitType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createDimAnimationLayer(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_44

    iput p1, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DimAnimationLayer for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string/jumbo v0, "WindowContainer#createAnimatingDimLayer"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    :cond_44
    return-void
.end method

.method public final finishDimAnimation(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    const/4 p0, 0x2

    and-int/2addr p1, p0

    if-eqz p1, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    :goto_2f
    if-eqz p1, :cond_3b

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_2f

    :cond_3b
    return-void
.end method
