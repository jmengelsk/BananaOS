.class public final Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public final mDeltaX:I

.field public final mDeltaY:I

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mText:Ljava/lang/String;

.field public final mTextHeight:I

.field public final mTextPaint:Landroid/graphics/Paint;

.field public final mTextWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 11

    const-string/jumbo v0, "WatermarkSurface"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p3, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v6, p3, v2

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    const/16 v8, 0x41

    const/16 v9, 0x66

    const/16 v10, 0x61

    if-lt v5, v10, :cond_0

    if-gt v5, v9, :cond_0

    add-int/lit8 v5, v5, -0x57

    goto :goto_1

    :cond_0
    if-lt v5, v8, :cond_1

    if-gt v5, v7, :cond_1

    add-int/lit8 v5, v5, -0x37

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x30

    :goto_1
    if-lt v6, v10, :cond_2

    if-gt v6, v9, :cond_2

    add-int/lit8 v6, v6, -0x57

    goto :goto_2

    :cond_2
    if-lt v6, v8, :cond_3

    if-gt v6, v7, :cond_3

    add-int/lit8 v6, v6, -0x37

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x30

    :goto_2
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v6

    rsub-int v5, v5, 0xff

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-static {p3, v4, v4, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    invoke-static {p3, v3, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    const/4 v1, 0x3

    mul-int/2addr v6, v1

    invoke-static {p3, v1, v2, v6, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v1, 0x4

    const/high16 v3, -0x50000000

    invoke-static {p3, v1, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v1

    const/4 v3, 0x5

    const v6, 0x60ffffff

    invoke-static {p3, v3, v2, v6, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v3

    const/4 v6, 0x6

    const/4 v7, 0x7

    invoke-static {p3, v6, v2, v7, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v6

    const/16 v7, 0x8

    invoke-static {p3, v7, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v7

    const/16 v8, 0x9

    invoke-static {p3, v8, v2, v2, p2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result p2

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, v6

    int-to-float v2, v7

    int-to-float p2, p2

    invoke-virtual {v5, p3, v2, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p2, 0x0

    :try_start_0
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    const/4 v1, -0x3

    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    const p3, 0xf4240

    invoke-virtual {p4, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {p2, p4, p1, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object p2, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p1, v0, v4}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {p1, p2, v4, v4, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final drawIfNeeded()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v2, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v4, v0, v2

    iget v5, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    div-int v6, v4, v5

    mul-int/2addr v6, v5

    sub-int v6, v4, v6

    div-int/lit8 v7, v5, 0x4

    if-lt v6, v7, :cond_1

    sub-int v7, v5, v7

    if-le v6, v7, :cond_2

    :cond_1
    div-int/lit8 v6, v5, 0x3

    add-int/2addr v5, v6

    :cond_2
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v7, v6

    neg-int v2, v2

    :cond_3
    :goto_0
    add-int v8, v1, v6

    if-ge v7, v8, :cond_4

    int-to-float v8, v2

    int-to-float v9, v7

    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v3, v11, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v2, v5

    if-lt v2, v0, :cond_3

    sub-int/2addr v2, v4

    iget v8, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    add-int/2addr v7, v8

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method
