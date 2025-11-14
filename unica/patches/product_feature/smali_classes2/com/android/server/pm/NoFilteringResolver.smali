.class public final Lcom/android/server/pm/NoFilteringResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
    .locals 0

    return-object p2
.end method

.method public final resolveIntent(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object p8, p3

    move p11, p5

    move-wide p9, p6

    move-object p5, p0

    move-object p6, p1

    move-object p7, p2

    invoke-interface/range {p5 .. p11}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    move-object p5, p0

    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-ge p3, p6, :cond_0

    new-instance p6, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/ResolveInfo;

    invoke-direct {p6, p5, p2, p11}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p4, p1}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    return-object p1
.end method
