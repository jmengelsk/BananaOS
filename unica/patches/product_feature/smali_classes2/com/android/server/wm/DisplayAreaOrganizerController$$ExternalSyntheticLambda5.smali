.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;I)V
    .registers 6

    iput p5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_6a

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget v3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->isTrusted()Z

    move-result p0

    if-nez p0, :cond_35

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_3e

    iget p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long p0, p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v1, -0x2a8def86e341c7bfL  # -4.0459528513661465E103

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3e

    :cond_35
    new-instance v1, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;ILjava/util/List;Landroid/window/IDisplayAreaOrganizer;I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    :cond_3e
    :goto_3e
    return-void

    :pswitch_3f  #0x0
    iget v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$1:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda5;->f$3:Landroid/window/IDisplayAreaOrganizer;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    iget v2, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-eq v2, v0, :cond_4c

    goto :goto_69

    :cond_4c
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    new-instance p0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    new-instance v2, Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    const-string v3, "DisplayAreaOrganizerController.registerOrganizer"

    invoke-direct {v2, p1, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Landroid/window/DisplayAreaAppearedInfo;-><init>(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3f  #00000000
    .end packed-switch
.end method
