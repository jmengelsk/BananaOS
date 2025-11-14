.class public final synthetic Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;


# virtual methods
.method public final valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p1, 0x1

    if-eq p0, p1, :cond_16

    const/4 p1, 0x2

    if-eq p0, p1, :cond_13

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "HideCameraCutout"

    return-object p0

    :cond_16
    const-string/jumbo p0, "OverlapWithTheCameraCutout"

    return-object p0

    :cond_1a
    const-string p0, "AppDefault"

    return-object p0
.end method
