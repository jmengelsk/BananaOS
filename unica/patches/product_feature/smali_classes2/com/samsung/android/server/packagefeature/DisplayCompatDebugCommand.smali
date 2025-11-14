.class public final Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final adjustExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string/jumbo p0, "blocklist"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string/jumbo p0, "b"

    return-object p0

    :cond_d
    const-string/jumbo p0, "w"

    return-object p0
.end method

.method public final assertValidOptions(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7

    array-length p0, p2

    const/4 v0, 0x2

    const-string/jumbo v1, "blocklist|allowlist"

    const/4 v2, 0x0

    if-ne p0, v0, :cond_29

    aget-object p0, p2, v2

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    aget-object p2, p2, p0

    if-nez p2, :cond_12

    goto :goto_29

    :cond_12
    const-string/jumbo v0, "allowlist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "blocklist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    invoke-static {p3, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    return p0

    :cond_29
    :goto_29
    invoke-static {p3, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
