.class public final Lcom/android/server/wm/TransparentPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mDestroyListeners:Ljava/util/List;

.field public final mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

.field public final mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-direct {p2, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p2, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v1

    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    sget-object v3, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v3, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;)V

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)Lcom/android/server/wm/WindowContainerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    return-void

    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_6
    :goto_1
    return-void
.end method
