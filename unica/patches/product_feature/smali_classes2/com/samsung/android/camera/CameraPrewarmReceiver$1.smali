.class public final Lcom/samsung/android/camera/CameraPrewarmReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraPrewarmReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver$1;->this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION***"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPrewarmReceiver"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver$1;->this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J

    :cond_2a
    return-void
.end method
