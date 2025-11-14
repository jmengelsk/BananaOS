.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/ActivityManagerInternal;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/ActivityManagerInternal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/app/ActivityManagerInternal;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 11

    iget v5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;->f$0:I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;->f$1:Landroid/app/ActivityManagerInternal;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo p0, "package"

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v2, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x4000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v7, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method
