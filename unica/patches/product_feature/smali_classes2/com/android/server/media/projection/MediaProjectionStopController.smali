.class public Lcom/android/server/media/projection/MediaProjectionStopController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final STOP_REASON_CALL_END:I = 0x2

.field static final STOP_REASON_KEYGUARD:I = 0x1

.field static final STOP_REASON_UNKNOWN:I


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mIsInCall:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastCallStartTimeMillis:J

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

.field public final mStopReasonConsumer:Ljava/util/function/Consumer;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    return-void
.end method


# virtual methods
.method public callStateChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    if-eqz v1, :cond_21

    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_21
    iput-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    return-void
.end method

.method public final isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z
    .registers 14

    const/4 v0, 0x1

    if-eqz p1, :cond_92

    iget-object v1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_92

    :cond_9
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "disable_screen_share_protections_for_apps_and_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "MediaProjectionStopController"

    if-eqz v1, :cond_1e

    const-string p0, "Continuing MediaProjection as screenshare protections are disabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.permission.RECORD_SENSITIVE_CONTENT"

    iget-object v5, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_31

    const-string p0, "Continuing MediaProjection for package with RECORD_SENSITIVE_CONTENT permission"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_31
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v7, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "recording lockscreen"

    const/16 v5, 0x2e

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_49

    const-string p0, "Continuing MediaProjection for package with OP_PROJECT_MEDIA AppOp "

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_49
    iget-object v1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    invoke-interface {v4, v1}, Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;->getRoleHoldersAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string p0, "Continuing MediaProjection for package holding app streaming role."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5f
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    iget-object v4, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string p0, "Continuing MediaProjection for package allowlisted for bugreporting."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_73
    if-nez p3, :cond_80

    iget p3, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mVirtualDisplayId:I

    const/4 v1, -0x1

    if-ne p3, v1, :cond_80

    const-string p0, "Continuing MediaProjection as current projection has no VirtualDisplay."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_80
    const/4 p3, 0x2

    if-ne p2, p3, :cond_91

    iget-wide p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCreateTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    cmp-long p0, p1, v4

    if-gez p0, :cond_91

    const-string p0, "Continuing MediaProjection as (phone) call started after MediaProjection was created."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_91
    return v3

    :cond_92
    :goto_92
    return v0
.end method

.method public onKeyguardLockedStateChanged(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
