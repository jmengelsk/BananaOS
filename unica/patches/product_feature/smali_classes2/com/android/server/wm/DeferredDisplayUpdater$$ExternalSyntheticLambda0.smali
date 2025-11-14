.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# virtual methods
.method public final setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V
    .registers 3

    iget-object p0, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object p0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object p0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-boolean p0, p2, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-boolean p0, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget p0, p2, Landroid/view/DisplayInfo;->appWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->appHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput p0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget p0, p2, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput p0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget p0, p2, Landroid/view/DisplayInfo;->rotation:I

    iput p0, p1, Landroid/view/DisplayInfo;->rotation:I

    iget-object p0, p2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object p0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget p0, p2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object p0, p2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object p0, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object p0, p2, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object p0, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    return-void
.end method
