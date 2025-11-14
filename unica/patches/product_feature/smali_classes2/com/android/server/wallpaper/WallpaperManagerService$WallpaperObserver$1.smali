.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field public final synthetic val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo p1, "onWallpaperChanged threw an exception"

    const-string/jumbo v0, "WallpaperManagerService"

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v0, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
