.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v0, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v2, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    const-string/jumbo v2, "optical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v3, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    :goto_1
    iget v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    iget v2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    if-eq v1, v2, :cond_5

    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DisplayListener onDisplayChanged. mAlwaysOnDisplayEnabled : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mDisplayOn : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mDisplayState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mWorkBlueFilter : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mNightModeBlock : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    const-string/jumbo v2, "SemMdnieManagerService"

    invoke-static {v2, p1, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-object p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez p1, :cond_2

    const-string/jumbo p1, "SemDisplaySolutionManager is null"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isBlueLightFilterScheduledTime()Z

    move-result p1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, -0x2

    const-string/jumbo v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget-boolean v0, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    if-nez v0, :cond_3

    iput-boolean v3, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    if-ne p1, v3, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(IZ)Z

    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    :cond_5
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
