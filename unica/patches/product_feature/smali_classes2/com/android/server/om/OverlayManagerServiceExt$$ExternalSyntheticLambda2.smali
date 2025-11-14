.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroid/content/om/OverlayInfo;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExt(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "android"

    :goto_0
    return-object p0

    :pswitch_0
    invoke-static {p1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
