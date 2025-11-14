.class public final synthetic Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iput-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iget-object p0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iget v1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    return-void
.end method
