.class public final Lcom/android/server/wm/WmScreenshotController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic val$info:Lcom/android/server/wm/WmScreenshotInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13

    iget-object p1, p0, Lcom/android/server/wm/WmScreenshotController$1;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$1;->val$info:Lcom/android/server/wm/WmScreenshotInfo;

    const-string/jumbo v1, "Send screenshot message failed, "

    const-string v2, "Get screenshot display failed, "

    iget-object v3, p1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v4, p1, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    monitor-exit v3

    return-void

    :catchall_16
    move-exception p0

    goto/16 :goto_12d

    :cond_19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v5, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Messenger;

    new-instance v6, Lcom/android/server/wm/WmScreenshotController$2;

    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p1, v7, p0}, Lcom/android/server/wm/WmScreenshotController$2;-><init>(Lcom/android/server/wm/WmScreenshotController;Landroid/os/Looper;Lcom/android/server/wm/WmScreenshotController$1;)V

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance p0, Lcom/android/internal/util/ScreenshotRequest$Builder;

    iget v5, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object p0

    iput-object p0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "sweepDirection"

    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "capturedDisplay"

    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "capturedOrigin"

    iget v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "captureSharedBundle"

    iget-object v6, v0, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v5, p1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_16

    :try_start_6e
    iget-object v6, p1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v7, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_ef

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8a

    move v2, v8

    goto :goto_8b

    :cond_8a
    move v2, v7

    :goto_8b
    iput v2, v4, Landroid/os/Message;->arg1:I

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_99

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v9

    if-nez v9, :cond_b1

    :cond_99
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    iget-object v2, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_a8

    iget-boolean v9, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v9, :cond_a6

    goto :goto_a8

    :cond_a6
    move v9, v8

    goto :goto_a9

    :cond_a8
    :goto_a8
    move v9, v7

    :goto_a9
    if-eqz v9, :cond_b2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_b2

    :cond_b1
    move v7, v8

    :cond_b2
    iput v7, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_c1

    :cond_c0
    const/4 v2, 0x0

    :goto_c1
    if-eqz v2, :cond_db

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-nez v7, :cond_ca

    goto :goto_db

    :cond_ca
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    const-string/jumbo v2, "stackBounds"

    iget-object v7, p1, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_db
    :goto_db
    invoke-static {p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V

    iget v0, v0, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_103

    invoke-virtual {p1, p0, v6}, Lcom/android/server/wm/WmScreenshotController;->putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-nez p1, :cond_103

    iput v8, v4, Landroid/os/Message;->what:I

    goto :goto_103

    :catchall_ed
    move-exception p0

    goto :goto_128

    :cond_ef
    const-string/jumbo p1, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    :goto_103
    monitor-exit v5
    :try_end_104
    .catchall {:try_start_6e .. :try_end_104} :catchall_ed

    :try_start_104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v4, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_10a
    .catchall {:try_start_104 .. :try_end_10a} :catchall_16

    :try_start_10a
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_112} :catch_113
    .catchall {:try_start_10a .. :try_end_112} :catchall_16

    goto :goto_126

    :catch_113
    move-exception p0

    :try_start_114
    const-string/jumbo p1, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_126
    monitor-exit v3
    :try_end_127
    .catchall {:try_start_114 .. :try_end_127} :catchall_16

    return-void

    :goto_128
    :try_start_128
    monitor-exit v5
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_ed

    :try_start_129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_12d
    monitor-exit v3
    :try_end_12e
    .catchall {:try_start_129 .. :try_end_12e} :catchall_16

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
