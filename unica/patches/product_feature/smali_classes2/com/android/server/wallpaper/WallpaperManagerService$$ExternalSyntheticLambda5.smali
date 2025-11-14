.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;III)V
    .registers 5

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$0:I

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    const-string/jumbo v1, "WallpaperManagerService"

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$0:I

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Bundle;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    packed-switch v0, :pswitch_data_3a

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_25

    :try_start_16
    const-string/jumbo v3, "android.wallpaper.goingtosleep"

    const/4 v6, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to dispatch COMMAND_GOING_TO_SLEEP"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void

    :pswitch_26  #0x0
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_39

    :try_start_2a
    const-string/jumbo v3, "android.wallpaper.wakingup"

    const/4 v6, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_39

    :catch_32
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to dispatch COMMAND_WAKING_UP"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_26  #00000000
    .end packed-switch
.end method
