.class public final Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const/16 v4, -0x2710

    if-ne v5, v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v5, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result v6

    const-string/jumbo v9, "switchWallpaperByDisplayChanged   prevFolderState : "

    const-string v10, " curFolderState : "

    const-string v11, " oldMode : "

    invoke-static {v0, p1, v9, v10, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " newMode : "

    const-string v10, " mCurrentUserId : "

    invoke-static {v2, v3, v9, v10, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mOldUserId : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v9, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " userId : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "WallpaperManagerService"

    invoke-static {v9, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mcheckSameComponentSetOtherDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p0, v10, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forceRebindWallpaper(II)V

    goto :goto_1

    :cond_3
    move v10, v7

    :cond_4
    :goto_1
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v11

    if-nez v11, :cond_5

    or-int/lit8 v11, v2, 0x2

    invoke-virtual {p0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-static {p0, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mcheckSameComponentSetOtherDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {p0, v11, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forceRebindWallpaper(II)V

    goto :goto_2

    :cond_5
    move v11, v7

    :cond_6
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "switchWallpaperByDisplayChanged  sameWallpaperWithPrevSystem : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sameWallpaperWithPrevLock : "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v9, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    iget-object v9, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v10, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-nez v10, :cond_7

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget v9, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v5, v9, v7}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    :goto_3
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v9, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-nez v9, :cond_8

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget v6, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    :goto_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    move v1, v7

    :goto_5
    const-string/jumbo p1, "isFolded"

    invoke-virtual {v5, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "switch_display"

    if-eq v2, v3, :cond_a

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->isSystemAndLockPaired(II)Z

    move-result v0

    if-nez v0, :cond_a

    or-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    or-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->isSystemAndLockPaired(II)Z

    move-result v0

    if-nez v0, :cond_b

    or-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    :goto_6
    return-void
.end method
