.class public final synthetic Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;->run()V

    const/4 p0, 0x0

    throw p0
.end method
