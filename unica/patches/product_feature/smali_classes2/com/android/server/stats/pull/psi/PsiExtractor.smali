.class public abstract Lcom/android/server/stats/pull/psi/PsiExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
    .locals 8

    const-string/jumbo v0, "full"

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p2, v1, :cond_0

    const-string/jumbo p2, "some"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    return-object v0

    :cond_0
    const-string p2, ".*{0} avg10=(\\d+.\\d+) avg60=(\\d+.\\d+) avg300=(\\d+.\\d+) total=(\\d+).*"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    const/4 v0, 0x0

    const-string/jumbo v1, "PsiExtractor"

    if-nez p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Returning null: the line \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not in expected pattern."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Returning null: some value in line \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" cannot be parsed as numeric."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
