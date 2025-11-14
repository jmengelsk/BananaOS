.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$4;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received camera open event from: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ProfcollectForwardingService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "client.pid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_60

    :cond_1f
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$4;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1070148

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_60

    :cond_3b
    const-string/jumbo p0, "camera_trace_freq"

    const/16 p1, 0xa

    invoke-static {p1, p0}, Lcom/android/server/profcollect/Utils;->withFrequency(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_60

    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_60

    :cond_4f
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/IProfCollectd;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_60
    :goto_60
    return-void
.end method
