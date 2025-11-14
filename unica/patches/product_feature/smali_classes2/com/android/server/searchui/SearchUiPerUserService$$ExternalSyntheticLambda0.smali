.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Landroid/app/search/Query;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    iput-object p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .registers 4

    iget v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_22

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/ISearchCallback;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, v0, v1, p0}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    return-void

    :pswitch_13  #0x0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/app/search/SearchTargetEvent;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, v0, v1, p0}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13  #00000000
    .end packed-switch
.end method
