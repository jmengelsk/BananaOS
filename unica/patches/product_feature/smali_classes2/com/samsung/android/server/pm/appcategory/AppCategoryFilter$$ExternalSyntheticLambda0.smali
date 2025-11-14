.class public final synthetic Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v0, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
