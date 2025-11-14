.class public final Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;
.super Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

.field public final synthetic val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-direct {p0, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final clientAttached(Landroid/os/IBinder;)V
    .registers 5

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clientDetached(Landroid/os/IBinder;)V
    .registers 5

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final detach()V
    .registers 5

    sget-object v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$ExecutorHolder;->INJECTION_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->val$session:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
