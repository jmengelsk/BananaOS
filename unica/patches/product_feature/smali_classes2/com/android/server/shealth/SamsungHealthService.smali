.class public final Lcom/android/server/shealth/SamsungHealthService;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HEALTH_KEY_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "14aafbdad4dd99765346a1de191320328465b8420713bc22cc4f8b211b87cd3a"

    const-string/jumbo v1, "c88c9048f6d0fe9d8561926240f2ccc1982e24721150929350384659aa54aef6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/shealth/SamsungHealthService;->HEALTH_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method public static backgroundAllowlist(Landroid/content/Context;)V
    .registers 6

    const-string/jumbo v0, "SamsungHealthService"

    const-string/jumbo v1, "backgroundAllowlist: bad uid: "

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.shealth"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_3c

    if-nez v3, :cond_1f

    goto :goto_3c

    :cond_1f
    invoke-static {p0}, Lcom/android/server/shealth/SamsungHealthService;->hasValidSignature(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string/jumbo p0, "backgroundAllowlist: invalied signature"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2c
    move-exception p0

    goto :goto_54

    :cond_2e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    const-string/jumbo p0, "backgroundAllowlist successfully called"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uidString: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_53} :catch_2c

    return-void

    :goto_54
    const-string/jumbo v1, "backgroundAllowlist exception "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static hasValidSignature(Landroid/content/Context;)Z
    .registers 14

    const-string/jumbo v0, "SamsungHealthService"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_9
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v4, "com.sec.android.app.shealth"

    const/16 v5, 0x40

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, p0

    move v5, v2

    :goto_21
    if-ge v5, v4, :cond_6f

    aget-object v6, p0, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_38
    if-ge v9, v8, :cond_5f

    aget-byte v10, v6, v9

    shr-int/lit8 v11, v10, 0x4

    and-int/lit8 v11, v11, 0xf

    const/16 v12, 0xa

    if-lt v11, v12, :cond_47

    add-int/lit8 v11, v11, 0x57

    goto :goto_49

    :cond_47
    add-int/lit8 v11, v11, 0x30

    :goto_49
    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v10, v10, 0xf

    if-lt v10, v12, :cond_54

    add-int/lit8 v10, v10, 0x57

    goto :goto_56

    :cond_54
    add-int/lit8 v10, v10, 0x30

    :goto_56
    int-to-char v10, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :catch_5d
    move-exception p0

    goto :goto_69

    :cond_5f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_66} :catch_5d

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :goto_69
    const-string/jumbo v3, "hasValidSignature : "

    invoke-static {p0, v3, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    sget-object p0, Lcom/android/server/shealth/SamsungHealthService;->HEALTH_KEY_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const-string/jumbo p0, "key matched"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_8f
    return v2
.end method
