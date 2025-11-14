.class public final Lcom/android/server/policy/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const-string v2, "End Call - Long Press - Show Global Actions"

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
