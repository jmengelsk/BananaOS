.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBindingFlags:I

.field public final mDetectionServiceType:I

.field public final mIntent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    sget-boolean p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    return-void
.end method


# virtual methods
.method public final createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;
    .locals 9

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mIntent:Landroid/content/Intent;

    new-instance v6, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRestartCount:I

    rem-int/lit8 v7, v4, 0xa

    iget v8, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mDetectionServiceType:I

    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->mBindingFlags:I

    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    invoke-direct/range {v0 .. v8}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;Landroid/content/Context;Landroid/content/Intent;IILcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory$$ExternalSyntheticLambda0;II)V

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    iget-object p0, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAudioFlinger:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    const-string/jumbo p0, "content_capture"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object p0

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    const-string/jumbo p0, "speech_recognition"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object p0

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    new-instance p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    new-instance p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-object v0
.end method
