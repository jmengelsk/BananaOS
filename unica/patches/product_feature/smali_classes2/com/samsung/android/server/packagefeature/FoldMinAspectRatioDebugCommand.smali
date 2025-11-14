.class public final Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const-string p0, "16:9"

    return-object p0
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7

    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    array-length p0, p2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_d

    :cond_9
    aget-object p0, p2, v0

    if-nez p0, :cond_14

    :cond_d
    const-string/jumbo p0, "longSize:shortSize"

    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_14
    return v1
.end method
