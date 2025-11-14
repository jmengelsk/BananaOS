.class public final Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .registers 2

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: dismiss cancelled"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissError()V
    .registers 2

    const-string p0, "ActivityTaskManager"

    const-string/jumbo v0, "setKeyguardState: failed to dismiss keyguard"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissSucceeded()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
