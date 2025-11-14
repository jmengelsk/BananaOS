.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayAddSystemDecorations(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catch_0
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onDisplayAddSystemDecorations(I)V

    :cond_3
    return-void
.end method
