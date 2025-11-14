.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(II[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$0:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;->f$3:Z

    check-cast p1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->topAppWindowChanged(IZZ)V

    return-void
.end method
