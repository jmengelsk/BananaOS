.class public final Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeferringAddStartActivities:Ljava/util/ArrayList;

.field public mDeferringAddStartingWindow:Z

.field public mInitNewTask:Z

.field public mInitProcessRunning:Z

.field public mInitTaskSwitch:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    return-void
.end method


# virtual methods
.method public final endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-string/jumbo v1, "WindowManager"

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    iget-object v3, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No task exists: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, p1

    goto :goto_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    iget-boolean v7, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    iget-object v9, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x1

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    iget-object p1, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    move-object p1, v10

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p0, "deferringAddStartActivities clear"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
