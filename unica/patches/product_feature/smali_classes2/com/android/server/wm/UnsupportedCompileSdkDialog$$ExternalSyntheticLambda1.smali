.class public final synthetic Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    iput-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AppWarnings;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    iget-object p0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AppWarnings;

    xor-int/lit8 p2, p2, 0x1

    iget v0, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    return-void
.end method
