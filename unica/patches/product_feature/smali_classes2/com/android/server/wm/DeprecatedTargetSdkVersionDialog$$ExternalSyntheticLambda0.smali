.class public final synthetic Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_24

    iget-object p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_11  #0x0
    iget-object p1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iget-object p0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/AppWarnings;

    iget p2, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method
