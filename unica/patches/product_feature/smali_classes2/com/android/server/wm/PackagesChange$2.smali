.class public final Lcom/android/server/wm/PackagesChange$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayCutoutController;

.field public final synthetic val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayCutoutController;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChange$2;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    iput-object p2, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PackagesChange$2;->this$0:Lcom/android/server/wm/DisplayCutoutController;

    iget-object v0, v0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSystemReady()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    :cond_0
    return-void
.end method
