.class public abstract Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final REASON_SHARED_INDEX:I

.field public static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-string/jumbo v13, "boot-after-mainline-update"

    const-string/jumbo v14, "shared"

    const-string/jumbo v0, "first-boot"

    const-string/jumbo v1, "boot-after-ota"

    const-string/jumbo v2, "post-boot"

    const-string/jumbo v3, "install"

    const-string/jumbo v4, "install-fast"

    const-string/jumbo v5, "install-bulk"

    const-string/jumbo v6, "install-bulk-secondary"

    const-string/jumbo v7, "install-bulk-downgraded"

    const-string/jumbo v8, "install-bulk-secondary-downgraded"

    const-string/jumbo v9, "bg-dexopt"

    const-string/jumbo v10, "ab-ota"

    const-string/jumbo v11, "inactive"

    const-string/jumbo v12, "cmdline"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    const/16 v2, 0xf

    array-length v3, v0

    if-ne v2, v3, :cond_52

    const-string/jumbo v2, "shared"

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    return-void

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "REASON_STRINGS not correct because of shared index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "REASON_STRINGS not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndCheckValidity(I)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const-string/jumbo v3, "Value \""

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    const-string/jumbo v4, "skip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_26
    sget v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    if-ne p0, v4, :cond_43

    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_43

    :cond_31
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "\" not allowed (reason "

    invoke-static {v3, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p0, v2, p0

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_43
    :goto_43
    return-object v0

    :cond_44
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "\" not valid (reason "

    invoke-static {v3, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p0, v2, p0

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getSystemPropertyName(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x15

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    const-string/jumbo v3, "pm.dexopt."

    if-ne p0, v0, :cond_19

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 v0, 0x16

    if-ne p0, v0, :cond_2c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const/16 v0, 0x17

    if-ne p0, v0, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    const/16 v0, 0x18

    if-ne p0, v0, :cond_52

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_52
    const/16 v0, 0x19

    if-ne p0, v0, :cond_67

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x9

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    if-ltz p0, :cond_7c

    const/16 v0, 0xf

    if-ge p0, v0, :cond_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, v2, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reason "

    const-string v2, " invalid"

    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
