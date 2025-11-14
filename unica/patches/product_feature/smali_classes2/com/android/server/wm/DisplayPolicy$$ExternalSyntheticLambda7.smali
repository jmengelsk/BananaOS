.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:[Lcom/android/internal/statusbar/LetterboxDetails;


# direct methods
.method public synthetic constructor <init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V
    .locals 0

    iput p9, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->$r8$classId:I

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$3:Z

    iput p5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$4:I

    iput p6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$5:I

    iput-object p7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$0:I

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$1:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$3:Z

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$4:I

    iget v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$5:I

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$6:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p0

    iput v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    iput v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    iput v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    iput-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v10, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo p0, "StatusBarManagerService"

    const-string/jumbo p1, "RemoteException for onSystemBarAttributesChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    :try_start_3
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/carlife/IStatusBarCarLife;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_4
    const-string/jumbo p0, "StatusBarManagerService"

    const-string/jumbo p1, "RemoteException for onSystemBarAttributesChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v10

    return-void

    :goto_1
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_0
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$0:I

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$1:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$3:Z

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$4:I

    iget v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$5:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$6:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;->f$7:[Lcom/android/internal/statusbar/LetterboxDetails;

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p0

    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    iput v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    iput v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    iput-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
