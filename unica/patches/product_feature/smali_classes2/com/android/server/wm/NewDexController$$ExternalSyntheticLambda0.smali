.class public final synthetic Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/NewDexController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NewDexController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NewDexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NewDexController;

    packed-switch v0, :pswitch_data_16

    iget-object p0, p0, Lcom/android/server/wm/NewDexController;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService$LocalService;->setNewDexMode(Z)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/server/wm/NewDexController;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService$LocalService;->setNewDexMode(Z)V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method
