.class public final synthetic Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;

    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    move-result v3

    if-nez v3, :cond_3d

    sget v3, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    if-eqz v1, :cond_3d

    array-length v3, v1

    if-nez v3, :cond_16

    goto :goto_3d

    :cond_16
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_19
    if-ltz v3, :cond_29

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_3d

    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_29
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object v0

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    iget-object v2, v2, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    if-eqz v2, :cond_38

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-interface {v0, v1, v2, p0}, Landroid/window/IBackAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/os/IBinder;Landroid/window/IBackAnimationFinishedCallback;)V

    return-void

    :cond_3d
    :goto_3d
    iget-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    const-string/jumbo v1, "cancelAnimation"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    invoke-virtual {p0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    move-result-object p0

    invoke-interface {p0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
