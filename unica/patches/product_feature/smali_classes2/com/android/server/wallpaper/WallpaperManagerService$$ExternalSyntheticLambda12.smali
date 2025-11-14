.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    const-string/jumbo v0, "WallpaperManagerService"

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v1, :pswitch_data_76

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/WallpaperColors;

    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    :try_start_12
    invoke-interface {p1, v1, p0}, Landroid/app/ILocalWallpaperColorConsumer;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    const-string p1, "Failed to notify local color callbacks"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void

    :pswitch_1d  #0x2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :pswitch_2d  #0x1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3c
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v3, :cond_5b

    invoke-interface {v3, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVisibleWhichWhenKeyguardLocked(I)Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p0

    const-string p1, "Failed to update wallpaper engine flags"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    :goto_5b
    return-void

    :pswitch_5c  #0x0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v1, :cond_74

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_2d  #00000001
        :pswitch_1d  #00000002
    .end packed-switch
.end method
