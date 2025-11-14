.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DexController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iput p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->updateDualViewMode(I)V

    return-void

    :pswitch_11  #0x0
    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->updateDualViewMode(I)V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method
