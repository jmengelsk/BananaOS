.class public Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;
.super Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    new-instance v1, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;-><init>(Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    const-string/jumbo p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    return-object p0
.end method

.method public final setCurrentUserHandle(Landroid/os/UserHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-void
.end method
