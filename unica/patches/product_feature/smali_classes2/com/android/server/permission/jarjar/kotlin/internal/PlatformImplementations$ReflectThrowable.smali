.class public abstract Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final addSuppressed:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const/4 v5, 0x0

    if-ge v4, v2, :cond_39

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "addSuppressed"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getParameterTypes(...)"

    invoke-static {v8, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    aget-object v5, v7, v3

    :cond_2e
    invoke-static {v5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move-object v5, v6

    goto :goto_39

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_39
    :goto_39
    sput-object v5, Lcom/android/server/permission/jarjar/kotlin/internal/PlatformImplementations$ReflectThrowable;->addSuppressed:Ljava/lang/reflect/Method;

    array-length v0, v1

    :goto_3c
    if-ge v3, v0, :cond_51

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "getSuppressed"

    invoke-static {v2, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    return-void

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_51
    return-void
.end method
