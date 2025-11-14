.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    if-eq v0, v1, :cond_25

    const/4 p1, 0x2

    if-eq v0, p1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    const-string v0, "AccessibilityWindowsPopulator"

    const-string/jumbo v1, "Windows change within in 2 frames continuously over 500 ms and notify windows changed immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    return-void

    :cond_21
    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    return-void

    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void
.end method
