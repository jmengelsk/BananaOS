.class public final Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;
.super Landroid/speech/IRecognitionService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic val$clientToken:Landroid/os/IBinder;

.field public final synthetic val$creatorCallingUid:I

.field public final synthetic val$deathRecipient:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

.field public final synthetic val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;Landroid/os/IBinder;ILcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    iput-object p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iput-object p5, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iget v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->handleClientDeath(Landroid/os/IBinder;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public final checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method

.method public final startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 2

    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0, p3}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->associateClientWithActiveListener(Landroid/os/IBinder;Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method public final stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method public final triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    return-void
.end method
