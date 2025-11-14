.class public final Lcom/android/server/texttospeech/TextToSpeechManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 4

    new-instance p2, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public final onStart()V
    .registers 3

    new-instance v0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V

    const-string/jumbo v1, "texttospeech"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
