.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;
.super Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPing()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updating hotword UID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionConnection"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    new-instance v2, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-direct {v2, v0, v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;-><init>(II)V

    iput-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p0}, Landroid/media/AudioManagerInternal;->addAssistantServiceUid(II)V

    :cond_0
    return-void
.end method
