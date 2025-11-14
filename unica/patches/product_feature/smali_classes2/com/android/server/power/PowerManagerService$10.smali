.class public final Lcom/android/server/power/PowerManagerService$10;
.super Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCoverAttachStateChanged(Z)V
    .locals 4

    const-string/jumbo v0, "onCoverAttachStateChanged: attach: "

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PowerManagerService"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, v3, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  mCoverType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p1, p1, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p1, "onCoverAttachStateChanged: mCoverManager returns NULL."

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCoverAttachStateChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 0

    return-void
.end method
