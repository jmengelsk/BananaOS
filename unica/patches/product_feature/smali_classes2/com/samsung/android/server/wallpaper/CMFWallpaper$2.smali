.class public final Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/CMFWallpaper;Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "cmf_color_code"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDeviceColor:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMFWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$2;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;

    const/16 p1, 0x3f0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_52
    return-void
.end method
