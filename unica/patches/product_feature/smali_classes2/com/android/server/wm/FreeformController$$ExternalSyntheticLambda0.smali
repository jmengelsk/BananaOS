.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    packed-switch v0, :pswitch_data_86

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_80

    :cond_3a
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_55

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_55

    const-string/jumbo v5, "com.samsung.android.app.smartcapture"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    :cond_55
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_5b

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    :cond_5b
    iget-object v4, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_60

    goto :goto_75

    :cond_60
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_65

    goto :goto_73

    :cond_65
    if-eqz v0, :cond_68

    goto :goto_73

    :cond_68
    if-eqz v3, :cond_6b

    goto :goto_73

    :cond_6b
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_75

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mRequestFreeformForceHiding:Z

    if-eqz v0, :cond_75

    :goto_73
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_80

    const/high16 v0, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_80

    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    :cond_80
    :goto_80
    return-void

    :pswitch_81  #0x0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_81  #00000000
    .end packed-switch
.end method
