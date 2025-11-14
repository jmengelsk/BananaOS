.class public final synthetic Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PageSizeMismatchDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PageSizeMismatchDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PageSizeMismatchDialog;

    iput-object p2, p0, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PageSizeMismatchDialog;

    iget-object p0, p0, Lcom/android/server/wm/PageSizeMismatchDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    iget p2, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    const/16 v0, 0x10

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    return-void
.end method
