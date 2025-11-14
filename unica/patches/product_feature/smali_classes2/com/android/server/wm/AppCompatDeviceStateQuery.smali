.class public final Lcom/android/server/wm/AppCompatDeviceStateQuery;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final isDisplayFullScreenAndInPosture(Z)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDisplayFullScreenAndSeparatingHinge()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v1, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
