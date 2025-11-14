.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->$r8$classId:I

    packed-switch p0, :pswitch_data_ac

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_19

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "awakeFromSleeping: previously pausing activity didn\'t pause"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    :cond_19
    return-void

    :pswitch_1a  #0x4
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_45

    :cond_23
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragments:Lcom/android/server/wm/TaskFragment$AdjacentSet;

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->clear()V

    :cond_2a
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    sget-object p0, Landroid/window/TaskFragmentAnimationParams;->DEFAULT:Landroid/window/TaskFragmentAnimationParams;

    iput-object p0, p1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    const/4 p0, 0x1

    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_45

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    sget-object p0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    :cond_45
    :goto_45
    return-void

    :pswitch_46  #0x3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo p0, "exit_pip"

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    return-void

    :pswitch_4f  #0x2
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setSecureLocked(Z)V

    return-void

    :pswitch_59  #0x1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    return-void

    :pswitch_68  #0x0
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 p0, -0x1

    if-ne v1, p0, :cond_70

    goto :goto_ab

    :cond_70
    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v7, 0x3

    if-eqz p0, :cond_96

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_ab

    if-eq p0, v7, :cond_ab

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    goto :goto_ab

    :cond_96
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-string/jumbo v6, "attempt-to-be-visible"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_a7

    if-ne p0, v7, :cond_ab

    :cond_a7
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_ab
    :goto_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_59  #00000001
        :pswitch_4f  #00000002
        :pswitch_46  #00000003
        :pswitch_1a  #00000004
    .end packed-switch
.end method
