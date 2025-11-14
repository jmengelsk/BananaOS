.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;
.super Landroid/os/FileObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    const/16 p1, 0x688

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 13

    iget v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v4, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    :goto_3
    return-void

    :pswitch_0
    move v2, p1

    move-object v3, p2

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    new-instance v10, Ljava/io/File;

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-direct {v10, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {p1, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    invoke-virtual {p1, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    invoke-virtual {p1, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget-object v7, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v2

    move-object v9, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
