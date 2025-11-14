.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field public final mCurrentMagnificationSpec:Landroid/util/SparseArray;

.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

.field public final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

.field public final mPreviousMagnificationSpec:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempFloat1:[F

.field public final mTempFloat2:[F

.field public final mTempFloat3:[F

.field public final mTempMatrix1:Landroid/graphics/Matrix;

.field public final mTempMatrix2:Landroid/graphics/Matrix;

.field public final mVisibleWindows:Ljava/util/List;

.field public mWindowsNotificationEnabled:Z

.field public final mWindowsTransformMatrixMap:Ljava/util/Map;


# direct methods
.method public static -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_24

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_24

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .registers 5

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    return-void
.end method

.method public static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityWindowsPopulator"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :cond_33
    return-void
.end method


# virtual methods
.method public final notifyWindowsChanged(Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public final onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public final onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_37

    aget-object v4, p1, v3

    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-nez v6, :cond_15

    move v6, v7

    goto :goto_16

    :cond_15
    move v6, v2

    :goto_16
    const/high16 v8, 0x10000

    and-int/2addr v5, v8

    if-nez v5, :cond_1c

    goto :goto_1d

    :cond_1c
    move v7, v2

    :goto_1d
    iget-object v5, v4, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    iget-object v8, v4, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v6, :cond_34

    if-eqz v7, :cond_34

    if-nez v5, :cond_34

    if-nez v8, :cond_34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_37
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_3f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :cond_49
    :goto_49
    if-ge v4, v3, :cond_7d

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/view/InputWindowHandle;

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_66

    iget-object v6, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    goto :goto_67

    :catchall_64
    move-exception p0

    goto :goto_d1

    :cond_66
    const/4 v6, 0x0

    :goto_67
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v7

    if-eqz v7, :cond_49

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    sget-object v8, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_3f .. :try_end_7e} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_84
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    array-length p1, p2

    :goto_a6
    if-ge v2, p1, :cond_b6

    aget-object v0, p2, v2

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    iget v4, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    :catchall_b4
    move-exception p0

    goto :goto_cf

    :cond_b6
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_cd

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_ca

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_ca
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    :cond_cd
    monitor-exit v3

    return-void

    :goto_cf
    monitor-exit v3
    :try_end_d0
    .catchall {:try_start_84 .. :try_end_d0} :catchall_b4

    throw p0

    :goto_d1
    :try_start_d1
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_33

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/InputWindowHandle;

    iget v7, v6, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v8, v6, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2f
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_33
    move v2, v4

    :goto_34
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v2, v3, :cond_171

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MagnificationSpec;

    if-nez v8, :cond_52

    goto/16 :goto_16d

    :cond_52
    new-instance v9, Landroid/view/MagnificationSpec;

    invoke-direct {v9}, Landroid/view/MagnificationSpec;-><init>()V

    invoke-virtual {v9, v8}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MagnificationSpec;

    if-nez v8, :cond_73

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v9, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    iget-object v6, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_16d

    :cond_73
    new-instance v3, Landroid/view/MagnificationSpec;

    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_80
    if-ltz v8, :cond_16d

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/InputWindowHandle;

    invoke-virtual {v10}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    if-eqz v11, :cond_9b

    iget-object v12, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Matrix;

    goto :goto_9c

    :cond_9b
    const/4 v11, 0x0

    :goto_9c
    if-nez v11, :cond_a1

    add-int/lit8 v8, v8, -0x1

    goto :goto_80

    :cond_a1
    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    iget v11, v9, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v11, v9, Landroid/view/MagnificationSpec;->offsetX:F

    iget v12, v9, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v11, Landroid/graphics/Matrix;

    iget-object v12, v10, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {v11, v12}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v11, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v11, v7}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    iget-object v11, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    iget v12, v3, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v11, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v12, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v13, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v12, Landroid/graphics/Matrix;

    iget-object v13, v10, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {v12, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v11, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    sget-object v12, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->getValues([F)V

    aget v12, v11, v4

    aget v13, v7, v4

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aget v13, v11, v4

    aget v14, v8, v4

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    aget v14, v11, v6

    aget v15, v7, v6

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    aget v15, v11, v6

    aget v6, v8, v6

    sub-float/2addr v15, v6

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v15, 0x5

    aget v16, v11, v15

    aget v7, v7, v15

    sub-float v16, v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aget v11, v11, v15

    aget v8, v8, v15

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v14, v7

    add-float/2addr v6, v8

    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_147

    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_143

    invoke-static {v6, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_143

    goto :goto_147

    :cond_143
    invoke-static {v3, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    goto :goto_166

    :cond_147
    :goto_147
    invoke-static {v9, v5}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    iget v6, v10, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_166

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    iget v5, v10, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget v5, v10, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16d

    :cond_166
    :goto_166
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget v6, v10, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16d
    :goto_16d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_34

    :cond_171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    move v7, v4

    :goto_179
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1dc

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_1d1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_19c

    goto :goto_1d1

    :cond_19c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v12, v4

    :goto_1a1
    if-ge v12, v11, :cond_1d8

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InputWindowHandle;

    invoke-virtual {v13}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/InputWindowHandle;

    invoke-virtual {v14}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    if-eqz v13, :cond_1bb

    move v15, v5

    goto :goto_1bc

    :cond_1bb
    move v15, v4

    :goto_1bc
    if-eqz v14, :cond_1bf

    move v4, v5

    :cond_1bf
    if-eq v15, v4, :cond_1c2

    goto :goto_1d1

    :cond_1c2
    if-eqz v15, :cond_1cd

    if-eqz v4, :cond_1cd

    invoke-interface {v13, v14}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cd

    goto :goto_1d1

    :cond_1cd
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1a1

    :cond_1d1
    :goto_1d1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d8
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_179

    :cond_1dc
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    :goto_1e2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_1fa

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e2

    :cond_1fa
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_212

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_211

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_211
    return-void

    :cond_212
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "The displayInfo of this displayId ("

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_14
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2a

    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v5

    return-void

    :catchall_27
    move-exception v0

    goto/16 :goto_25c

    :cond_2a
    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v7, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/WindowInfosListener$DisplayInfo;

    if-eqz v7, :cond_45

    iget-object v2, v7, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_5b

    :cond_45
    const-string v7, "AccessibilityWindowsPopulator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") called back from the surface fligner is null"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_14 .. :try_end_5c} :catchall_27

    iget-object v2, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ShellRoot;

    const/4 v5, 0x0

    if-eqz v1, :cond_79

    iget-object v1, v1, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    if-eqz v1, :cond_79

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_7a

    :cond_79
    move-object v1, v5

    :goto_7a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputWindowHandle;

    iget-object v8, v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_9b

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    goto :goto_9c

    :cond_9b
    move-object v8, v5

    :goto_9c
    new-instance v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    invoke-direct {v10}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    iput-object v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    iget v11, v7, Landroid/view/InputWindowHandle;->displayId:I

    iput v11, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iget v11, v7, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v11, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    iget v11, v7, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v11, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/4 v11, 0x0

    if-eqz v9, :cond_ba

    invoke-interface {v9, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ba

    move v9, v2

    goto :goto_bb

    :cond_ba
    move v9, v11

    :goto_bb
    iput-boolean v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-eqz v8, :cond_c4

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_c5

    :cond_c4
    move v9, v11

    :goto_c5
    iput v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    if-eqz v8, :cond_d1

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_d1

    move v9, v2

    goto :goto_d2

    :cond_d1
    move v9, v11

    :goto_d2
    iput-boolean v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    if-eqz v8, :cond_df

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v9

    if-eqz v9, :cond_dd

    goto :goto_df

    :cond_dd
    move v9, v11

    goto :goto_e0

    :cond_df
    :goto_df
    move v9, v2

    :goto_e0
    iput-boolean v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    new-instance v9, Landroid/graphics/Rect;

    iget-object v12, v7, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-boolean v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v13, v7, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v14, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    new-instance v15, Landroid/graphics/Region;

    invoke-direct {v15}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v15, v13}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-object v13, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v15, v9, v13}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    if-eqz v12, :cond_104

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_10e

    :cond_104
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_10e

    invoke-virtual {v14, v15}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_116

    :cond_10e
    new-instance v9, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {v9, v4, v3, v14}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {v15, v9}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    :goto_116
    iget-boolean v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v12, v7, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    if-eqz v9, :cond_124

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_12e

    :cond_124
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_12e

    invoke-virtual {v13, v12}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_136

    :cond_12e
    new-instance v9, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {v9, v4, v3, v13}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {v12, v9}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    :goto_136
    if-eqz v8, :cond_1c9

    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    iput v12, v9, Landroid/view/WindowInfo;->displayId:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v12, v9, Landroid/view/WindowInfo;->type:I

    iput v11, v9, Landroid/view/WindowInfo;->layer:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iput-object v12, v9, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_15a

    iget-object v12, v12, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object v12, v9, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    :cond_15a
    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v12, v12, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v12, v9, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v12

    iput-boolean v12, v9, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_174

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_174

    move v13, v2

    goto :goto_175

    :cond_174
    move v13, v11

    :goto_175
    iput-boolean v13, v9, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-nez v12, :cond_17b

    const/4 v12, -0x1

    goto :goto_17d

    :cond_17b
    iget v12, v12, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_17d
    iput v12, v9, Landroid/view/WindowInfo;->taskId:I

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_18a

    move v12, v2

    goto :goto_18b

    :cond_18a
    move v12, v11

    :goto_18b
    iput-boolean v12, v9, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v12, v8, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v12, :cond_19d

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iput-object v12, v9, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    :cond_19d
    iget-object v12, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1e8

    iget-object v13, v9, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v13, :cond_1b0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v13, v9, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    :cond_1b0
    move v13, v11

    :goto_1b1
    if-ge v13, v12, :cond_1e8

    iget-object v14, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget-object v15, v9, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b1

    :cond_1c9
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v9

    iget v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iput v12, v9, Landroid/view/WindowInfo;->displayId:I

    iget v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    iput v12, v9, Landroid/view/WindowInfo;->type:I

    iget-object v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/os/IBinder;

    iput-object v12, v9, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v12, v12, 0x200

    if-eqz v12, :cond_1e1

    move v12, v2

    goto :goto_1e2

    :cond_1e1
    move v12, v11

    :goto_1e2
    iput-boolean v12, v9, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v12, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    iput-boolean v12, v9, Landroid/view/WindowInfo;->inPictureInPicture:Z

    :cond_1e8
    iput-object v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget-object v7, v7, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v7, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object v7, v7, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v9, v7}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v9, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    if-eqz v9, :cond_233

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v9

    if-nez v9, :cond_233

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v9

    if-eqz v9, :cond_22b

    sget-object v9, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v7, v9}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v7, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object v7, v7, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    aget v12, v9, v11

    iput v12, v7, Landroid/view/MagnificationSpec;->scale:F

    const/4 v12, 0x2

    aget v12, v9, v12

    iput v12, v7, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v12, 0x5

    aget v9, v9, v12

    iput v9, v7, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_233

    :cond_22b
    const-string v7, "AccessibilityWindowsPopulator"

    const-string/jumbo v9, "can\'t find spec"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_233
    :goto_233
    if-eqz v8, :cond_252

    iget v7, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v9, 0x7e3

    if-eq v7, v9, :cond_23c

    goto :goto_242

    :cond_23c
    iget-object v7, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v11

    :goto_242
    if-eqz v11, :cond_252

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v7

    if-eqz v7, :cond_252

    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v10, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    :cond_252
    move-object/from16 v7, p2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7e

    :cond_25b
    return-void

    :goto_25c
    :try_start_25c
    monitor-exit v5
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_27

    throw v0
.end method

.method public final releaseResources()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final setWindowsNotification(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-ne v1, p1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_27

    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object p1

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    goto :goto_25

    :cond_1f
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    :goto_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_9

    throw p0
.end method
