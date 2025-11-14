.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 3

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch p0, :pswitch_data_42

    iget p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eqz p0, :cond_19

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_19

    const/16 p0, 0x403

    if-ne p1, p0, :cond_16

    goto :goto_19

    :cond_16
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    goto :goto_21

    :cond_19
    :goto_19
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x2

    const-string v0, "Important callingUid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    :goto_21
    return-object p0

    :pswitch_22  #0x0
    iget-object p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2c

    goto :goto_30

    :cond_2c
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    if-eqz p0, :cond_3e

    :goto_30
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    if-eqz p0, :cond_3e

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x2

    const-string/jumbo v0, "realCallingUid is persistent system process AND intent sender forced to allow."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_40

    :cond_3e
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_40
    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_22  #00000000
    .end packed-switch
.end method
