.class public final Lcom/samsung/android/server/pm/role/RoleLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final LOGGING_PERIOD:J

.field public static final ROLES_TO_LOG:[Ljava/lang/String;

.field public static final sRoleLoggingServiceName:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$mgetEachRoleHolder(Lcom/samsung/android/server/pm/role/RoleLogger;Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    const-class p0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Unavailable"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "None"

    goto :goto_1

    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    const-string/jumbo v13, "android.app.role.SYSTEM_CONTACTS"

    const-string/jumbo v14, "android.app.role.SYSTEM_DOCUMENT_MANAGER"

    const-string/jumbo v3, "android.app.role.BROWSER"

    const-string/jumbo v4, "android.app.role.CALL_SCREENING"

    const-string/jumbo v5, "android.app.role.ASSISTANT"

    const-string/jumbo v6, "android.app.role.HOME"

    const-string/jumbo v7, "android.app.role.DIALER"

    const-string/jumbo v8, "android.app.role.SMS"

    const-string/jumbo v9, "android.app.role.CALL_REDIRECTION"

    const-string/jumbo v10, "android.app.role.EMERGENCY"

    const-string/jumbo v11, "android.app.role.NOTES"

    const-string/jumbo v12, "android.app.role.SYSTEM_GALLERY"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/role/RoleLogger;->ROLES_TO_LOG:[Ljava/lang/String;

    return-void
.end method
