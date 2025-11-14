.class Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field private final mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

.field private mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    return-void
.end method

.method public static canBeWindowingLayer(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method private static containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    return v3

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method

.method private validate()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    if-eqz v0, :cond_af

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1d

    move v3, v4

    goto :goto_1e

    :cond_1d
    move v3, v5

    :goto_1e
    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v2

    move v6, v5

    :goto_23
    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_76

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-static {v7, v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v8, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6e

    if-eqz v3, :cond_4e

    iget-object v8, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    if-nez v8, :cond_45

    goto :goto_55

    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Only one DisplayArea hierarchy can contain the IME container"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    iget-object v3, v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    if-eqz v3, :cond_54

    move v3, v4

    goto :goto_55

    :cond_54
    move v3, v5

    :goto_55
    if-eqz v2, :cond_67

    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v7

    if-nez v7, :cond_5e

    goto :goto_6b

    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Only one TaskDisplayArea can have the feature id of FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    invoke-static {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->containsDefaultTaskDisplayArea(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Z

    move-result v2

    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "DisplayAreaGroup must contain at least one TaskDisplayArea."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    if-eqz v3, :cond_a7

    if-eqz v2, :cond_9e

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    move-result p0

    if-eqz p0, :cond_95

    return-void

    :cond_95
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "WindowingLayer must exist at the top level index"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "There must be a default TaskDisplayArea with id of FEATURE_DEFAULT_TASK_CONTAINER."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IME container must be set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_af
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Root must be set for the display area policy."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateIds(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/Set;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " is not unique."

    if-eqz v1, :cond_c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    const/16 v1, 0x4e21

    if-gt v0, v1, :cond_b7

    const/4 v0, 0x0

    move v3, v0

    :goto_20
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    iget v4, v4, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    if-gt v4, v1, :cond_4b

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "TaskDisplayArea declared in the policy should nothave an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "TaskDisplayArea must have unique id, but id="

    invoke-static {v4, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    :goto_66
    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_b3

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget v4, v4, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    if-gt v4, v1, :cond_91

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_91
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Feature should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Feature below the same root must have unique id, but id="

    invoke-static {v4, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Feature must not have same id with any RootDisplayArea or TaskDisplayArea, but id="

    const-string p2, " is used"

    invoke-static {v4, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_b7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "RootDisplayArea should not have an id greater than FEATURE_VENDOR_LAST."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "RootDisplayArea must have unique id, but id="

    invoke-static {v0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDisplayAreaGroupHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v2, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_47

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x25

    new-array p1, p1, [Z

    const/4 v3, 0x1

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    const-string/jumbo v4, "WindowingLayer"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5, p1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_47
    :goto_47
    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->validate()V

    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5c
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mDisplayAreaGroupHierarchyBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    if-nez v0, :cond_87

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectRootForWindowFunction;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    :cond_87
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/List;Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mRootHierarchyBuilder:Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    return-object p0
.end method

.method public setSelectRootForWindowFunc(Ljava/util/function/BiFunction;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public setSelectTaskDisplayAreaFunc(Ljava/util/function/Function;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    return-object p0
.end method
