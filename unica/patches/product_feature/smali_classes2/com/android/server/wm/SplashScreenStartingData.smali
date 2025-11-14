.class public final Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTheme:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    return-void
.end method


# virtual methods
.method public final createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v2, v0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    invoke-virtual {v2, v1, p1, p0, v3}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    return-object p0

    :cond_0
    return-object v3
.end method

.method public final needRevealAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
