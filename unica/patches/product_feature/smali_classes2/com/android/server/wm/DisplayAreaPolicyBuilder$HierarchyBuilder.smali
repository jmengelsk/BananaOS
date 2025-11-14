.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFeatures:Ljava/util/ArrayList;

.field public mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field public final mRoot:Lcom/android/server/wm/DisplayContent;

.field public final mTaskDisplayAreas:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final build(Ljava/util/List;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x25

    new-array v4, v3, [Lcom/android/server/wm/DisplayArea$Tokens;

    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_1e
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_39

    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_39
    new-array v7, v3, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    new-instance v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    :goto_4b
    if-ge v11, v10, :cond_81

    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move v13, v6

    move-object v14, v9

    :goto_57
    if-ge v13, v3, :cond_7d

    iget-object v15, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mWindowLayers:[Z

    aget-boolean v15, v15, v13

    if-eqz v15, :cond_78

    if-eqz v14, :cond_67

    iget-object v15, v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v6, v7, v13

    if-eq v15, v6, :cond_75

    :cond_67
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v6, v7, v13

    invoke-direct {v14, v12, v13, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    aget-object v6, v7, v13

    iget-object v6, v6, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    aput-object v14, v7, v13

    goto :goto_79

    :cond_78
    move-object v14, v9

    :goto_79
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_57

    :cond_7d
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_4b

    :cond_81
    move-object v10, v9

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_84
    if-ge v6, v3, :cond_11f

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-ne v6, v13, :cond_8c

    move v14, v12

    goto :goto_a0

    :cond_8c
    const/16 v14, 0x7db

    invoke-static {v14}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v14

    if-eq v6, v14, :cond_9f

    const/16 v14, 0x7dc

    invoke-static {v14}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v14

    if-ne v6, v14, :cond_9d

    goto :goto_9f

    :cond_9d
    const/4 v14, 0x0

    goto :goto_a0

    :cond_9f
    :goto_9f
    move v14, v13

    :goto_a0
    if-eqz v10, :cond_aa

    iget-object v15, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v3, v7, v6

    if-ne v15, v3, :cond_aa

    if-eq v14, v11, :cond_116

    :cond_aa
    new-instance v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v3, v7, v6

    invoke-direct {v10, v9, v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    aget-object v3, v7, v6

    iget-object v3, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v14, v12, :cond_10c

    aget-object v3, v7, v6

    iget-object v11, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x0

    :goto_c3
    if-ge v15, v11, :cond_e0

    new-instance v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-direct {v12, v9, v13, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    iget-object v9, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayArea;

    iput-object v9, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput v13, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_c3

    :cond_e0
    aget-object v3, v7, v6

    if-nez v1, :cond_e6

    :cond_e4
    const/4 v3, 0x1

    goto :goto_109

    :cond_e6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_eb
    if-ge v11, v9, :cond_e4

    new-instance v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v15, 0x0

    invoke-direct {v12, v15, v13, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v15, v15, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    iput-object v15, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput v13, v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v15, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_eb

    :goto_109
    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    goto :goto_115

    :cond_10c
    move v3, v12

    if-ne v14, v13, :cond_115

    iget-object v9, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v9, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput-boolean v3, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    :cond_115
    :goto_115
    move v11, v14

    :cond_116
    iput v6, v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x25

    const/4 v9, 0x0

    goto/16 :goto_84

    :cond_11f
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v4, v1, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    return-void
.end method
