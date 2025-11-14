.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    packed-switch v0, :pswitch_data_3e

    iget p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0

    :pswitch_11  #0x0
    iget v0, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    if-ne v0, p0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Removing overlay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " from settings because user was removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "OverlayManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    return p0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_11  #00000000
    .end packed-switch
.end method
