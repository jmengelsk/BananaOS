.class public Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

.field public mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field public mAnimationCancelledCallback:Ljava/lang/Runnable;

.field public mAnimationFinished:Z

.field public mAnimationType:I

.field final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mLeash:Landroid/view/SurfaceControl;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    new-instance p1, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda8;)V

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-void
.end method

.method public static animationTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_54

    const/4 v0, 0x1

    if-eq p0, v0, :cond_50

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_48

    const/16 v0, 0x10

    if-eq p0, v0, :cond_44

    const/16 v0, 0x20

    if-eq p0, v0, :cond_40

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x80

    if-eq p0, v0, :cond_38

    const/16 v0, 0x100

    if-eq p0, v0, :cond_34

    const/16 v0, 0x200

    if-eq p0, v0, :cond_24

    goto :goto_2c

    :cond_24
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v0, :cond_2c

    const-string/jumbo p0, "remote_wallpaper"

    return-object p0

    :cond_2c
    :goto_2c
    const-string/jumbo v0, "unknown type:"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const-string/jumbo p0, "predict_back"

    return-object p0

    :cond_38
    const-string/jumbo p0, "starting_reveal"

    return-object p0

    :cond_3c
    const-string/jumbo p0, "token_transform"

    return-object p0

    :cond_40
    const-string/jumbo p0, "insets_animation"

    return-object p0

    :cond_44
    const-string/jumbo p0, "window_animation"

    return-object p0

    :cond_48
    const-string/jumbo p0, "dimmer"

    return-object p0

    :cond_4c
    const-string/jumbo p0, "screen_rotation"

    return-object p0

    :cond_50
    const-string/jumbo p0, "app_transition"

    return-object p0

    :cond_54
    const-string/jumbo p0, "none"

    return-object p0
.end method


# virtual methods
.method public final cancelAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    return-void
.end method

.method public final cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_21

    const-string v0, "Cancelling animation restarting="

    const-string v1, ", leash="

    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_21
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x4a87df5aea48cd64L  # -4.030448831919004E-51

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    if-eqz v1, :cond_69

    if-eqz p3, :cond_5b

    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    if-eqz v4, :cond_5b

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_5b
    if-nez p2, :cond_69

    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz p2, :cond_64

    invoke-interface {p2, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_64
    if-eqz v3, :cond_69

    invoke-interface {v3, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_69
    if-eqz p3, :cond_75

    if-eqz v0, :cond_75

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_75
    return-void
.end method

.method public final hasLeash()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v3, :cond_17

    goto/16 :goto_9a

    :cond_17
    iput-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v4, :cond_34

    if-eqz v6, :cond_32

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_32
    move v6, v7

    goto :goto_35

    :cond_34
    move v6, v2

    :goto_35
    if-eqz v6, :cond_74

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Reparenting to original parent: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", destroy="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", surface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-eqz v8, :cond_74

    if-eqz v5, :cond_74

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move v4, v7

    goto :goto_75

    :cond_74
    move v4, v2

    :goto_75
    if-eqz p2, :cond_7b

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move v4, v7

    :cond_7b
    if-eqz v6, :cond_81

    invoke-interface {v1, p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    move v4, v7

    :cond_81
    iput-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    if-eqz v4, :cond_9a

    iget-object p2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget p2, p2, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    if-nez p2, :cond_97

    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    if-ne p1, p0, :cond_97

    iget-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput v7, p0, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    :cond_97
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_9a
    :goto_9a
    return-void
.end method
