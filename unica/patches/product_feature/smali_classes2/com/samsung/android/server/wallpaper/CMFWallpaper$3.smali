.class public final Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/CMFWallpaper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "CMFWallpaper"

    const-string v1, "ColorCodePollingThread run()"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    const-string/jumbo v2, "ril.product_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    :goto_12
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    if-lez v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ColorCodePollingThread sleep(1000) count="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget v4, v4, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    :try_start_3a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_43

    :catch_3e
    const-string v1, "InterruptedException occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget v4, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    goto :goto_12

    :cond_51
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_61

    goto :goto_6c

    :cond_61
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_6c
    :goto_6c
    move-object v1, v2

    :goto_6d
    if-eqz v1, :cond_df

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Color code ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") retrieved!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/android/server/wallpaper/CMFWallpaper$1;

    const/16 v4, 0x3f5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_df

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5, v2, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_df

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_df

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d2

    goto :goto_df

    :cond_d2
    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_df
    :goto_df
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iput-object v2, p0, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Lcom/samsung/android/server/wallpaper/CMFWallpaper$3;

    return-void
.end method
