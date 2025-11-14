.class public final Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;
.super Landroid/speech/IRecognitionServiceManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final setTemporaryComponent(Landroid/content/ComponentName;)V
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "SpeechRecognitionManagerService"

    if-nez p1, :cond_21

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Reset temporary service for user "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xea60

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SpeechRecognition temporarily set to "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for 60000ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
