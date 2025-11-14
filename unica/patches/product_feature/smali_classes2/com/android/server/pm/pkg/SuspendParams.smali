.class public final Lcom/android/server/pm/pkg/SuspendParams;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppExtras:Landroid/os/PersistableBundle;

.field public final mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field public final mLauncherExtras:Landroid/os/PersistableBundle;

.field public final mQuarantined:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iput-object p2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    iput-boolean p4, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/server/pm/pkg/SuspendParams;

    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    iget-boolean p1, p1, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    if-eq p0, p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    :cond_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v1, "quarantined"

    iget-boolean v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "dialog-info"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->mDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    const-string v2, "FrameworkPackageUserState"

    if-eqz v1, :cond_36

    const-string/jumbo v1, "app-extras"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_27
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v3

    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_36
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_4f

    const-string/jumbo v1, "launcher-extras"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :try_start_40
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->mLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_4c

    :catch_46
    move-exception p0

    const-string v3, "Exception while trying to write launcherExtras. Will be lost on reboot"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4f
    return-void
.end method
