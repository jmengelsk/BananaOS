.class public abstract Lcom/android/server/sensors/mocca/MoccaLoader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    invoke-direct {v0}, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;-><init>()V

    sput-object v0, Lcom/android/server/sensors/mocca/MoccaLoader;->sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    return-void
.end method

.method public static getMoccaService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 4

    const-string/jumbo v0, "com.samsung.android.mocca"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.mocca.MoccaSystemService"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0

    :cond_0
    const-string/jumbo p0, "MoccaLoader"

    const-string/jumbo v0, "Why Mocca service class is null?"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static systemReady(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "systemReady"

    const-string/jumbo v1, "com.samsung.android.mocca"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string/jumbo v1, "com.samsung.android.mocca.MoccaSystemService"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "MoccaLoader"

    const-string/jumbo p1, "Why Mocca service class is null?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mocca/IMoccaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaService;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lcom/android/server/sensors/mocca/MoccaLoader;->sServiceBridge:Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
