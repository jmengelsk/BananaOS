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
    .locals 0

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$0:I

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    const-string/jumbo v1, "WallpaperManagerService"

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$0:I

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;->f$2:Landroid/os/Bundle;

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    sget-boolean p0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    packed-switch v0, :pswitch_data_0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.wallpaper.goingtosleep"

    const/4 v6, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to dispatch COMMAND_GOING_TO_SLEEP"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo v3, "android.wallpaper.wakingup"

    const/4 v6, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "Failed to dispatch COMMAND_WAKING_UP"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
