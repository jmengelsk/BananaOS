.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .registers 5

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_32

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:J

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void

    :pswitch_11  #0x2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:J

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_1c  #0x1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:J

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_27  #0x0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;->f$1:J

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1c  #00000001
        :pswitch_11  #00000002
    .end packed-switch
.end method
