.class public final Lcom/samsung/android/server/wallpaper/LegibilityColor$2;
.super Landroid/os/AsyncTask;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

.field public final synthetic val$landscape:Z

.field public final synthetic val$which:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iput p2, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    iput-boolean p3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/Void;

    const-string/jumbo p1, "LegibilityColor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "extractColor start which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", landscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const/16 v2, 0x5a

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Landroid/app/SemWallpaperColors;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/app/SemWallpaperColors;

    iget-object v3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v3, v3, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v4, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v2, v2, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    const/16 v4, 0x10e

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_1

    :cond_2
    new-array p1, v0, [Landroid/app/SemWallpaperColors;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v2, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    move-result-object v0

    aput-object v0, p1, v1

    :goto_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "LegibilityColor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doInBackground: this task is cancelled, which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string/jumbo v0, "LegibilityColor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "extractColor end which = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, v1

    if-nez v0, :cond_4

    const-string/jumbo p0, "LegibilityColor"

    const-string/jumbo p1, "colors == null, return"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v2, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    iget-boolean v3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    const-string/jumbo v4, "saveSemWallpaperColors "

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v6

    if-nez v6, :cond_5

    const-string/jumbo p1, "WallpaperManagerService"

    const-string/jumbo v0, "saveSemWallpaperColors, wallpaper == null"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-eqz v3, :cond_6

    iput-object p1, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    goto :goto_2

    :cond_6
    aget-object v8, p1, v1

    iput-object v8, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget v0, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v6, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v0, v6, v3}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    const-string/jumbo p1, "LegibilityColor"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyColor end which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;->val$which:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method
