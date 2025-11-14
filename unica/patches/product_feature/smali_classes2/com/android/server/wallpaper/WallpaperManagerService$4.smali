.class public final Lcom/android/server/wallpaper/WallpaperManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_6a

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    sget-boolean p1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColorIfSeedColorEmpty(I)V

    return-void

    :pswitch_f  #0x1
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_21
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    monitor-exit p2

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit p2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-void

    :pswitch_2b  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ge p2, p1, :cond_49

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_68

    :cond_49
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4c
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda23;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda23;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit p1

    goto :goto_68

    :catchall_65
    move-exception p0

    monitor-exit p1
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_65

    throw p0

    :cond_68
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_f  #00000001
    .end packed-switch
.end method
