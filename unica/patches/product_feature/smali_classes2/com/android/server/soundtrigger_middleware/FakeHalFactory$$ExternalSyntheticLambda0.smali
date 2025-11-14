.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;->f$0:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;->f$0:Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    :try_start_0
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;->triggerRestart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "FakeHalFactory"

    const-string/jumbo v0, "Unexpected RemoteException from same process"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
