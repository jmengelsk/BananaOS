.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

.field public final synthetic f$1:Lcom/android/server/searchui/SearchUiPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/searchui/SearchUiPerUserService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/searchui/SearchUiPerUserService;

    check-cast p1, Landroid/app/search/ISearchCallback;

    iget-object v0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void
.end method
