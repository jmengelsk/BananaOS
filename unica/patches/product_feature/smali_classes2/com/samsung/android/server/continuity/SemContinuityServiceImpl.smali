.class public Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
.super Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    new-instance v1, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;-><init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    const-string/jumbo p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final cancelDownload(Ljava/lang/String;I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clearLocalClip(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    return-object p0
.end method

.method public final registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final setCurrentUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public final setLocalClip(Landroid/os/Bundle;I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final unregisterContinuityCopyListener(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
