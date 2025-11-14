.class public final Lcom/samsung/android/camera/CameraPrewarmReceiver$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraPrewarmReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver$2;->this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 3

    const-string p1, "CameraPrewarmReceiver"

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver$2;->this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;

    iget-object v0, v0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    if-ne p2, v0, :cond_0

    const-string/jumbo p2, "onProcessDied - reset prewarm camera id "

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver$2;->this$0:Lcom/samsung/android/camera/CameraPrewarmReceiver;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/camera/CameraPrewarmReceiver;->mPrewarmCameraId:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not find package info"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
