.class public final Lcom/android/server/wm/ActivityTaskManagerService$7;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic val$enterPipRunnable:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

.field public final synthetic val$transition:Lcom/android/server/wm/Transition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->val$transition:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->val$enterPipRunnable:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->val$transition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->val$enterPipRunnable:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$7;->val$enterPipRunnable:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$7;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    return-void
.end method
