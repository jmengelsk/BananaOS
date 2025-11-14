.class public final Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

.field public mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mInheritedAppCompatState:I

.field public mInheritedMaxAspectRatio:F

.field public mInheritedMinAspectRatio:F

.field public mInheritedOrientation:I

.field public mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;


# direct methods
.method public static -$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2b
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_d

    goto :goto_14

    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    :cond_19
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-void
.end method

.method public final isPolicyEnabled()Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    goto :goto_27

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0

    :cond_27
    :goto_27
    return v1
.end method

.method public final isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
