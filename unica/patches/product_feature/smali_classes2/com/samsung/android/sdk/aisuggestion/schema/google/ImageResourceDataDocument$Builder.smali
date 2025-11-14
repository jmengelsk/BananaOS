.class public final Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ContextualInsightData"

    const-string v1, "ContextualInsightData:ImageResource"

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method
