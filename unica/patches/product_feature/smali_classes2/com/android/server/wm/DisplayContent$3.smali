.class public final Lcom/android/server/wm/DisplayContent$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$targetWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$3;->this$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$3;->val$targetWin:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final onVisibleRequestedChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$3;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$3;->val$targetWin:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, p1, p0, v0}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZI)V

    return-void
.end method
