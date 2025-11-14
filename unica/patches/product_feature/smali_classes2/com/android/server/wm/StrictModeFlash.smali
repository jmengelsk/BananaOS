.class public final Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    const-string/jumbo v0, "StrictModeFlash"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    const v2, 0xf6950

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_3a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7 .. :try_end_3a} :catch_3a

    :catch_3a
    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    new-instance p2, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p2, v0, p1}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p2, v1, p1, p1, p1}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    invoke-virtual {p2}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final setVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    goto/16 :goto_80

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v1, :cond_b

    goto :goto_73

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    const/4 v0, 0x0

    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1f} :catch_1f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19 .. :try_end_1f} :catch_1f

    :catch_1f
    if-nez v0, :cond_22

    goto :goto_73

    :cond_22
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x14

    invoke-direct {v4, v1, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v2, -0x14

    invoke-direct {v5, v6, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v3, -0x14

    invoke-direct {v5, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :goto_73
    if-eqz p2, :cond_7b

    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_80

    :cond_7b
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_80
    return-void
.end method
