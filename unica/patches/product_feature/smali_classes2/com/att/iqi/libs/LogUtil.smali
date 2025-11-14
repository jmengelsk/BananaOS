.class public Lcom/att/iqi/libs/LogUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "IQIConcierge"

.field private static sDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLog()Z
    .registers 1

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return v0
.end method

.method public static enableLogging(Z)V
    .registers 1

    sput-boolean p0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method
