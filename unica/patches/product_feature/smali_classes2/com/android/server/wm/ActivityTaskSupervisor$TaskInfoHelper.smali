.class public final Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mInfo:Landroid/app/TaskInfo;

.field public mTopRunning:Lcom/android/server/wm/ActivityRecord;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_APP_TO_WEB:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    if-nez v0, :cond_3a

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_3a

    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iput-object v0, v1, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    iput-wide v2, v1, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    :cond_3a
    :goto_3a
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    :cond_43
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_48

    goto :goto_5a

    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iget v1, v0, Landroid/app/TaskInfo;->numActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/TaskInfo;->numActivities:I

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5a

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    :cond_5a
    :goto_5a
    return-void
.end method
