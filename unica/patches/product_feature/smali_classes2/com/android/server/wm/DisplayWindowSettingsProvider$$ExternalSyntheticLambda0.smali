.class public final synthetic Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_58

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->getPossibleDisplayInfos(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, p1, :cond_2f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2f
    return-void

    :pswitch_30  #0x1
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_44  #0x0
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_44  #00000000
        :pswitch_30  #00000001
    .end packed-switch
.end method
