.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 9

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;-><init>()V

    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    invoke-direct {v2, v0}, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    filled-new-array {v1, v2}, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    new-instance v8, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v7, v1, v8}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    invoke-direct {v6, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/content/Context;)V

    invoke-static {v4}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;-><init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/function/Supplier;Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerInjection;)V

    const-string/jumbo v0, "soundtrigger_middleware"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
