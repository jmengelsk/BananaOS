.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->sendAppCategoryBroadcast(ILjava/lang/String;)V

    return-void
.end method
