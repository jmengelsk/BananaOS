.class public final synthetic Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ScreenCurtainController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenCurtainController;ZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/ScreenCurtainController;

    iput-boolean p2, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$3:Z

    iput p5, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/ScreenCurtainController;

    iget-boolean v1, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$3:Z

    iget p0, p0, Lcom/android/server/power/ScreenCurtainController$$ExternalSyntheticLambda2;->f$4:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/ScreenCurtainController;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto :goto_0

    :cond_0
    const/16 v3, 0x16

    :goto_0
    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTspEnabled(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/ScreenCurtainController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mDslToken:Landroid/os/IBinder;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateOverride(Landroid/os/IBinder;II)V

    return-void
.end method
