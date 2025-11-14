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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;->f$3:Z

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_26

    :cond_19
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_26

    :try_start_1f
    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayAddSystemDecorations(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_26

    goto :goto_26

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catch_26
    :cond_26
    :goto_26
    if-eqz p0, :cond_35

    const-class p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    if-eqz p0, :cond_35

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onDisplayAddSystemDecorations(I)V

    :cond_35
    return-void
.end method
