.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public final nativeForceSuspend()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeForceSuspend()Z

    move-result p0

    return p0
.end method

.method public final nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method public final nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method public final nativeSetAutoSuspend(Z)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetAutoSuspend(Z)V

    return-void
.end method

.method public final nativeSetInteractiveAsync(ZI)V
    .registers 3

    invoke-static {p2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetInteractiveAsync(IZ)V

    return-void
.end method

.method public final nativeSetPowerBoost(II)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    return-void
.end method

.method public final nativeSetPowerMode(IZ)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerMode(IZ)Z

    move-result p0

    return p0
.end method
