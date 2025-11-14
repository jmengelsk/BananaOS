.class public final Lcom/android/server/usb/PowerBoostSetter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPreviousTimeout:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-void
.end method


# virtual methods
.method public final boostPower()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_1c

    const-string/jumbo p0, "PowerBoostSetter"

    const-string/jumbo v0, "PowerManagerInternal null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    if-eqz v0, :cond_34

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    const-wide/16 v2, 0x1d4c

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    return-void

    :cond_34
    :goto_34
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPreviousTimeout:Ljava/time/Instant;

    iget-object p0, p0, Lcom/android/server/usb/PowerBoostSetter;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x0

    const/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    return-void
.end method
