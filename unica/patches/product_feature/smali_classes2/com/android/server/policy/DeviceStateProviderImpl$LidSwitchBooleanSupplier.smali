.class public final Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final mExpectedOpen:Z

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    iput-boolean p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    iget-object v1, v1, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;->mExpectedOpen:Z

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Have not received lid switch value."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
