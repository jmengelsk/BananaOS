.class public final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

.field public mActiveRecentsTask:Ljava/lang/ref/WeakReference;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayRemoved:Z

.field public mDisplayWidth:I

.field public mFreezeExceptionPkg:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputConsumers:Ljava/util/ArrayList;

.field public mInputFocus:Landroid/os/IBinder;

.field public mInputFocusRequestTimeMillis:J

.field public final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field public final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field public mUpdateInputWindowsImmediately:Z

.field public mUpdateInputWindowsNeeded:Z

.field public mUpdateInputWindowsPending:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-void
.end method

.method public static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v1, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v3, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v3, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput v4, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_1
    iget v3, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iput v4, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_2
    const/16 v1, 0x10

    invoke-static {v4, v1, v2}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v1

    sget v3, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    sget v4, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    or-int/2addr v3, v4

    or-int/lit8 v3, v3, 0x40

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v1, v0}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    iput-boolean v2, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .locals 1

    iget-boolean v0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    iput-boolean p0, p2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :cond_0
    return-void
.end method

.method public static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    iget p2, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    const/4 p3, 0x1

    const/16 v2, 0x7df

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput-boolean p3, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_0
    invoke-virtual {v1, p1, p0, p3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;)V

    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    return-void
.end method


# virtual methods
.method public final createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .locals 13

    move-object/from16 v6, p5

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iget v11, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    const-string v12, ", display: "

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Landroid/os/IBinder;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Replacing existing input consumer found with name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "wallpaper_input_consumer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "pip_input_consumer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v9

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "recents_animation_input_consumer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v10

    :goto_0
    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal input consumer : "

    invoke-static {v11, p1, p2, v12}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v1, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    goto :goto_1

    :pswitch_1
    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v1, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    :goto_1
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-interface {p1, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    iget-object v3, v0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v9}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5af18033 -> :sswitch_2
        0x3d13fc73 -> :sswitch_1
        0x5463dca8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final destroyInputConsumer(Landroid/os/IBinder;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v2, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, v2, Lcom/android/server/wm/InputConsumerImpl;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v2, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "  InputConsumers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    const-string v3, "    name="

    const-string v4, " pid="

    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/wm/InputConsumerImpl;->mClientPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mClientUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final layoutInputConsumers(IIZ)V
    .locals 8

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    if-ne v0, p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mOldPosition:Landroid/graphics/Point;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Point;->set(II)V

    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v4, Lcom/android/server/wm/InputConsumerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .locals 10

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v4, v3, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    const/4 v5, 0x1

    if-ne v4, v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, v3, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_1
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-wide v3, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    goto :goto_2

    :cond_2
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v3, v0

    :goto_2
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-wide v6, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iput-wide v3, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_3
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    move v0, v5

    goto :goto_5

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p2, v3, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_5
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v6, v4, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    if-ne v6, v0, :cond_7

    goto :goto_6

    :cond_7
    iput v0, v4, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_6
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_8

    move v0, v5

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    iget v6, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_8

    :cond_9
    move v6, v2

    :goto_8
    if-ne v6, v0, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v4, v7, v0}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_9
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v4, v0}, Landroid/view/InputWindowHandle;->setWindowToken(Landroid/os/IBinder;)V

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v0

    if-eqz v0, :cond_c

    or-int/lit8 v4, v4, 0x20

    :cond_c
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v6, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    if-ne v6, v4, :cond_d

    goto :goto_b

    :cond_d
    iput v4, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_b
    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v8, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    if-ne v8, v7, :cond_e

    goto :goto_c

    :cond_e
    iput v7, v0, Landroid/view/InputWindowHandle;->layoutParamsSamsungFlags:I

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_c
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-static {v0, v4, v6}, Lcom/android/server/wm/InputConfigAdapter;->getInputConfigFromWindowParams(III)I

    move-result v0

    sget v4, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    sget v6, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    or-int/2addr v4, v6

    or-int/lit8 v4, v4, 0x40

    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasOwnFocus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move v0, v5

    goto :goto_d

    :cond_10
    move v0, v2

    :goto_d
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_TOUCH_TO_KEYGUARD_WALLPAPER:Z

    if-eqz v0, :cond_12

    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mKeyguardWallpaperTouchAllowed:Z

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->areWallpaperTouchEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v5

    goto :goto_e

    :cond_12
    move v0, v2

    :goto_e
    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v7, v6, Landroid/view/InputWindowHandle;->inputConfig:I

    const/16 v8, 0x20

    and-int/2addr v7, v8

    if-eqz v7, :cond_13

    move v7, v5

    goto :goto_f

    :cond_13
    move v7, v2

    :goto_f
    if-ne v7, v0, :cond_14

    goto :goto_10

    :cond_14
    invoke-virtual {v6, v8, v0}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_10
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v7, v6, Landroid/view/InputWindowHandle;->surfaceInset:I

    if-ne v7, v0, :cond_15

    goto :goto_11

    :cond_15
    iput v0, v6, Landroid/view/InputWindowHandle;->surfaceInset:I

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_11
    iget v0, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v7

    if-eqz v8, :cond_16

    div-float v0, v7, v0

    goto :goto_12

    :cond_16
    move v0, v7

    :goto_12
    iget v8, v6, Landroid/view/InputWindowHandle;->scaleFactor:F

    cmpl-float v8, v8, v0

    if-nez v8, :cond_17

    goto :goto_13

    :cond_17
    iput v0, v6, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_13
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v0, :cond_18

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v6, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float v0, v7, v0

    invoke-virtual {p1, v4, v6, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v7}, Lcom/android/server/wm/InputWindowHandleWrapper;->setOneHandSpecs(FFF)V

    :cond_19
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-eq v4, v5, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v4, :cond_1d

    :cond_1a
    iget v0, p2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-eq v0, v3, :cond_1b

    move v0, v5

    goto :goto_15

    :cond_1b
    move v0, v2

    :goto_15
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    goto :goto_16

    :cond_1c
    move-object v4, v1

    :goto_16
    if-eqz v4, :cond_1f

    iget-object v1, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_17

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_1e
    move v0, v2

    :cond_1f
    :goto_17
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-boolean v6, v4, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    if-ne v6, v0, :cond_20

    goto :goto_18

    :cond_20
    iput-boolean v0, v4, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_18
    iget-object v4, v4, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_21

    goto :goto_19

    :cond_21
    iget-object v4, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v4, v1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_19
    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_24

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1a

    :cond_22
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    :cond_23
    :goto_1a
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowState;->adjustRegionInFreeformWindowMode(Landroid/graphics/Rect;)V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    goto :goto_1b

    :cond_24
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    neg-int v8, v4

    neg-int v9, v6

    add-int/2addr v4, v4

    add-int/2addr v6, v6

    invoke-virtual {v0, v8, v9, v4, v6}, Landroid/graphics/Region;->set(IIII)Z

    :goto_1b
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_1c

    :cond_25
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    :goto_1c
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_26

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-eqz v8, :cond_27

    :cond_26
    neg-int v6, v6

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Region;->translate(II)V

    :cond_27
    if-eqz v1, :cond_28

    iget v1, p2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-ne v1, v3, :cond_28

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_28
    iget p2, p2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    cmpl-float v1, p2, v7

    if-eqz v1, :cond_29

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->scale(F)V

    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object p2, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p2, p2, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    goto :goto_1d

    :cond_2a
    iget-object p2, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p2, p2, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput-boolean v5, p1, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :cond_2b
    :goto_1d
    return-void
.end method

.method public final requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Focus request "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "reason=UpdateInputWindows"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0xf231

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v3, -0x5813e9ef756bcbafL

    invoke-static {v1, v3, v4, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    add-int/2addr p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFreezeExceptionPkg:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public final setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setActiveRecents, recents="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    const-string/jumbo v2, "WindowManager"

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsTask:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_2
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mActiveRecentsLayerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    :cond_5
    return-void
.end method

.method public final setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x76b2d1fda8b0c6dfL    # -7.239606803961096E-264

    const/4 v5, 0x4

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateInputWindowsLw(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    iget-object p1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
