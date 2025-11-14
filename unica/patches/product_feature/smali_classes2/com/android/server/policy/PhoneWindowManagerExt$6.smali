.class public final Lcom/android/server/policy/PhoneWindowManagerExt$6;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x18

    const/16 p2, 0x1a

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0xbb

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkAccessibilityShortcutVolupPowerTriggered()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptStopLockTaskModePinnedChord()V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public preCondition()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
