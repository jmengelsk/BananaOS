.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChildren:Ljava/util/ArrayList;

.field public mExisting:Lcom/android/server/wm/DisplayArea;

.field public final mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

.field public mMaxLayer:I

.field public final mMinLayer:I

.field public final mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

.field public mSkipTokens:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    return-void
.end method


# virtual methods
.method public final computeMaxLayer()I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    return p0
.end method

.method public final instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b7

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iget v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    iget-object v4, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v2

    :goto_33
    iget v5, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-gt v3, v5, :cond_3c

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_3c
    iget-object v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    goto :goto_97

    :cond_3f
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x0

    goto :goto_97

    :cond_45
    const/4 v2, 0x2

    if-le v3, v2, :cond_4b

    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_54

    :cond_4b
    iget v5, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-ge v5, v2, :cond_52

    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_54

    :cond_52
    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    :goto_54
    const-string v6, ":"

    if-nez v4, :cond_7a

    new-instance v7, Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v8, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v9, "Leaf:"

    invoke-static {v3, v9, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v5, v6, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    :goto_6f
    iget v2, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-gt v3, v2, :cond_78

    aput-object v7, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_78
    move-object v2, v7

    goto :goto_97

    :cond_7a
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mName:Ljava/lang/String;

    invoke-static {v3, v8, v6, v6, v7}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    iget v7, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-interface {v6, v2, v5, v3, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    :goto_97
    if-nez v2, :cond_9a

    goto :goto_b3

    :cond_9a
    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    if-eqz v4, :cond_ae

    move-object v3, p4

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ae
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    :goto_b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_b7
    return-void
.end method
