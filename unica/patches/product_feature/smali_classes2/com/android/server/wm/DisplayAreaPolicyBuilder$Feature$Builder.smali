.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mId:I

.field public final mLayers:[Z

.field public final mName:Ljava/lang/String;

.field public mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x25

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x24

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    invoke-direct {v1, v3, p0, v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    return-object v1
.end method

.method public final varargs except([I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final layerFromType(IZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0
.end method

.method public final set(IZ)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    aput-boolean p2, v2, v1

    const/16 v1, 0x7f6

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p1

    aput-boolean p2, v2, p1

    const/16 p1, 0x7d3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p1

    aput-boolean p2, v2, p1

    const/16 p1, 0x7d6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p1

    aput-boolean p2, v2, p1

    const/16 p1, 0x7da

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result p0

    aput-boolean p2, v2, p0

    :cond_0
    return-void
.end method
