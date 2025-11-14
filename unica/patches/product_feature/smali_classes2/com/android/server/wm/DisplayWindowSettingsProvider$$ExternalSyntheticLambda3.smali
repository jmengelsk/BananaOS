.class public final synthetic Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
