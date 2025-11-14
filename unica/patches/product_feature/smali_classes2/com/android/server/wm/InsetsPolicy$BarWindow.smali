.class public final Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mId:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public static -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .registers 5

    if-eqz p1, :cond_b

    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x0

    :goto_c
    iget p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq p2, p1, :cond_36

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    iget-object p2, p2, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p2

    if-eqz p2, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    iget-object v0, v0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    iget-object v1, p2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_36

    :cond_2d
    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p2, :cond_36

    :try_start_33
    invoke-interface {p2, v0, p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(III)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    :goto_36
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    return-void
.end method
