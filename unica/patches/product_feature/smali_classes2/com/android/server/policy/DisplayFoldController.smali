.class public final Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field public mFocusedApp:Ljava/lang/String;

.field public mFolded:Ljava/lang/Boolean;

.field public final mFoldedArea:Landroid/graphics/Rect;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOverrideFoldedArea:Landroid/graphics/Rect;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;Landroid/graphics/Rect;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p4, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance p5, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    invoke-direct {p4, p1, p5}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, p3, p4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method
