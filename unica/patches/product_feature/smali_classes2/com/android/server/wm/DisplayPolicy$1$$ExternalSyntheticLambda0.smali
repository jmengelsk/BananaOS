.class public final synthetic Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy$1;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayPolicy$1;

    packed-switch v0, :pswitch_data_18

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    return-void

    :pswitch_b  #0x2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void

    :pswitch_f  #0x1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    return-void

    :pswitch_13  #0x0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_f  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
