.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p3, :cond_0

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/modules/utils/TypedXmlSerializer;

    const-string/jumbo p0, "activity"

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x2000

    if-ne v0, v1, :cond_1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_2

    :catch_0
    move-exception p0

    sput-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Landroid/os/IBinder;

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq p2, p0, :cond_3

    iget-object p0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq p0, p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_2
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Landroid/app/ActivityManager$TaskDescription;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_e

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p0, :cond_e

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_5
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getColorsAreDetermined()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    :cond_7
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :cond_8
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    :cond_9
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    :cond_a
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setTopOpaqueSystemBarsAppearance(I)V

    :cond_b
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    :cond_c
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_d
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->setColorsAreDetermined()V

    :cond_e
    if-ne p1, p2, :cond_f

    move v0, v1

    :cond_f
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
