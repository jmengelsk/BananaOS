.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper$1;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final func()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v2

    goto :goto_16

    :catchall_13
    move-exception p0

    goto :goto_2d

    :cond_15
    const/4 v2, -0x1

    :goto_16
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    if-eqz p0, :cond_24

    if-eqz v2, :cond_22

    const/4 p0, 0x2

    if-eq v2, p0, :cond_22

    const/4 p0, 0x3

    if-ne v2, p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
