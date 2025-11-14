.class public final Lcom/samsung/android/server/packagefeature/CoverLauncherWidgetDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    array-length p0, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    aget-object p0, p2, v1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    aget-object p2, p2, p0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "Properties"

    invoke-static {p3, p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
