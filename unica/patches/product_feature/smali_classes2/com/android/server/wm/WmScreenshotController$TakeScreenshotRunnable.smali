.class public final Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final info:Lcom/android/server/wm/WmScreenshotInfo;

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    new-instance p1, Lcom/android/server/wm/WmScreenshotInfo;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "Too many screenshot service connection: "

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    const-string/jumbo p0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/PersonaActivityHelper;->getCurrentScreenUserId()Landroid/os/UserHandle;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v4, "Secure folder visible, update user handle to secure folder user"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeScreenshot: info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "TakeScreenshot"

    const/16 v4, 0x15

    const/16 v5, 0xa

    invoke-static {v4, v5, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.systemui"

    const-string/jumbo v6, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/wm/WmScreenshotController$1;

    invoke-direct {v4, v0, p0}, Lcom/android/server/wm/WmScreenshotController$1;-><init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V

    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v4, v2}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V

    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
