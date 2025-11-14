.class public final synthetic Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/StateNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverManager_"

    const-string/jumbo v1, "goToSleep by cover close after boot complete : mLcdOffDisabledByApp is false"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method
