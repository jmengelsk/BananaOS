.class public final Lcom/android/server/soundtrigger_middleware/FakeHalFactory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# instance fields
.field public final mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 5

    new-instance v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    iget-object v1, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;->mGlobalEventSession:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;-><init>(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;-><init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;Lcom/android/server/soundtrigger_middleware/FakeHalFactory$$ExternalSyntheticLambda0;Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V

    return-object v2
.end method
