.class public final synthetic Lcom/android/server/notification/NotificationClassifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "result : ID = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    const-string/jumbo v2, "NotificationClassifier"

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    iget-wide p0, p1, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
