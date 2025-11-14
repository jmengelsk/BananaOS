.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_38

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/InputTarget;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/InputTarget;

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->handlePointerDownOutsideFocus(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    return-void

    :pswitch_15  #0x1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/InputTarget;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/InputTarget;

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->handlePointerDownOutsideFocus(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    return-void

    :pswitch_25  #0x0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_15  #00000001
    .end packed-switch
.end method
