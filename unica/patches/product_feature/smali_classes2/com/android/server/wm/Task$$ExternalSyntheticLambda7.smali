.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    packed-switch p0, :pswitch_data_12a

    check-cast p2, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p3, :cond_21

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :pswitch_23  #0x2
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/modules/utils/TypedXmlSerializer;

    const-string/jumbo p0, "activity"

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x2000

    if-ne v0, v1, :cond_46

    if-eq p1, p2, :cond_46

    goto :goto_55

    :cond_46
    const/4 p2, 0x0

    :try_start_47
    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_52

    const/4 p0, 0x0

    goto :goto_56

    :catch_52
    move-exception p0

    sput-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    :cond_55
    :goto_55
    const/4 p0, 0x1

    :goto_56
    return p0

    :pswitch_57  #0x1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Landroid/os/IBinder;

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq p2, p0, :cond_71

    iget-object p0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq p0, p3, :cond_71

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_71

    const/4 p0, 0x1

    goto :goto_72

    :cond_71
    const/4 p0, 0x0

    :goto_72
    return p0

    :pswitch_73  #0x0
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Landroid/app/ActivityManager$TaskDescription;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_126

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p0, :cond_126

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8e

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    :cond_8e
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_9b

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_9b
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a8

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_a8
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getColorsAreDetermined()Z

    move-result v2

    if-nez v2, :cond_126

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    if-nez v2, :cond_bb

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    :cond_bb
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    if-nez v2, :cond_c8

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :cond_c8
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    if-nez v2, :cond_dc

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    :cond_dc
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    if-nez v2, :cond_e9

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    :cond_e9
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result v2

    if-nez v2, :cond_fc

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-eqz v2, :cond_fc

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setTopOpaqueSystemBarsAppearance(I)V

    :cond_fc
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    if-nez v2, :cond_110

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    :cond_110
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v2

    if-nez v2, :cond_11d

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_11d
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    if-eqz p0, :cond_126

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->setColorsAreDetermined()V

    :cond_126
    if-ne p1, p2, :cond_129

    move v0, v1

    :cond_129
    return v0

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_57  #00000001
        :pswitch_23  #00000002
    .end packed-switch
.end method
