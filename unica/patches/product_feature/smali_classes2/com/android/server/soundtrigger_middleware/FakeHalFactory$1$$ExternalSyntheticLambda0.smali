.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FakeHalFactory"

    const-string/jumbo v0, "Unexpected RemoteException from same process"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "FakeHalFactory"

    const-string/jumbo v0, "Unexpected RemoteException from same process"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
