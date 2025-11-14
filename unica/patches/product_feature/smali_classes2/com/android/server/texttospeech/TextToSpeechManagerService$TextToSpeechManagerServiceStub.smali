.class public final Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;
.super Landroid/speech/tts/ITextToSpeechManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_26

    :try_start_7
    const-string p0, "Engine cannot be null"

    invoke-interface {p2, p0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_24

    goto :goto_22

    :catch_d
    move-exception p0

    :try_start_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed running callback method: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TextToSpeechManagerPerUserService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    monitor-exit v0

    goto :goto_5d

    :catchall_24
    move-exception p0

    goto :goto_5e

    :cond_26
    iget-object p0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    if-eqz p0, :cond_40

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v1, p0, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->start(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_24

    goto :goto_5c

    :cond_40
    :try_start_40
    const-string/jumbo p0, "Service is not available for user"

    invoke-interface {p2, p0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_46} :catch_47
    .catchall {:try_start_40 .. :try_end_46} :catchall_24

    goto :goto_5c

    :catch_47
    move-exception p0

    :try_start_48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed running callback method: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TextToSpeechManagerPerUserService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    monitor-exit v0

    :goto_5d
    return-void

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_24

    throw p0
.end method
