.class public final Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;
.super Landroid/app/appsearch/GenericDocument$Builder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final bridge synthetic build()Landroid/app/appsearch/GenericDocument;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;
    .registers 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;

    invoke-super {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;-><init>(Landroid/app/appsearch/GenericDocument;)V

    return-object v0
.end method
