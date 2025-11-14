.class public final Lcom/android/server/wm/ActivityManagerPerformance$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDisplayFoldChanged: state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManagerPerformance"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
