.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->$r8$classId:I

    packed-switch v0, :pswitch_data_3a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-nez v2, :cond_1f

    const-class v2, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_28

    :cond_1f
    :goto_1f
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1d

    if-eqz v0, :cond_27

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->accept(Ljava/lang/Object;)V

    :cond_27
    return-void

    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1d

    throw p0

    :pswitch_2a  #0x0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a  #00000000
    .end packed-switch
.end method
