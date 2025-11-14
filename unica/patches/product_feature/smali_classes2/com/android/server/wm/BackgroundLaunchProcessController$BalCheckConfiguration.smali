.class public final Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;
.super Ljava/lang/Record;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "isCheckingForFgsStart",
        "checkVisibility",
        "checkOtherExemptions"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Z,
        Z,
        Z
    }
.end annotation


# instance fields
.field public final checkOtherExemptions:Z

.field public final checkVisibility:Z

.field public final isCheckingForFgsStart:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iput-boolean p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iput-boolean p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iget-boolean p1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    const/4 v2, 0x2

    aput-object p0, v4, v2

    const-class p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const-string/jumbo v2, "isCheckingForFgsStart;checkVisibility;checkOtherExemptions"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-array v2, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length p0, v2

    if-ge v0, p0, :cond_2

    aget-object p0, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v4, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length p0, v2

    sub-int/2addr p0, v1

    if-eq v0, p0, :cond_1

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
