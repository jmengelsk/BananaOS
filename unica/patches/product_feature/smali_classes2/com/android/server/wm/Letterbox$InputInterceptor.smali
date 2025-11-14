.class public final Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

.field public final mToken:Landroid/os/IBinder;

.field public final mWindowHandle:Landroid/view/InputWindowHandle;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    move-object v2, p3

    :goto_17
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    new-instance v3, Lcom/android/server/wm/Letterbox$TapEventReceiver;

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/android/server/wm/Letterbox$TapEventReceiver;-><init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p3

    invoke-direct {v0, v1, p3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object p2, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p0, 0x7e6

    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long p0, p0

    iput-wide p0, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p0, 0x3f800000  # 1.0f

    iput p0, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const/16 p0, 0x404

    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/Letterbox$TapEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method
