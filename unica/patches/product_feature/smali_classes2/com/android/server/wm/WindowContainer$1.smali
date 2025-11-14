.class public final Lcom/android/server/wm/WindowContainer$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# instance fields
.field public final synthetic val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$1;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$1;->val$configurationMerger:Lcom/android/server/wm/WindowContainer$ConfigurationMerger;

    if-eqz v1, :cond_60

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    check-cast v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;

    iget-object v2, v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v2}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    goto :goto_66

    :cond_18
    const/4 v3, 0x0

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object p1, v2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_66

    :cond_60
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$1;->val$supplier:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    :goto_66
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
