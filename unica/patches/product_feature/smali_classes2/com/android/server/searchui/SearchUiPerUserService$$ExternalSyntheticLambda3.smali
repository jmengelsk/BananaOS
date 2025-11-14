.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/app/search/SearchContext;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/ISearchCallback;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/ISearchCallback;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
