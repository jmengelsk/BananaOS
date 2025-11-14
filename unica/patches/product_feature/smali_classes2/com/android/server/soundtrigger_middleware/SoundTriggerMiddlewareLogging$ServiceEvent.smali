.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mPackageName:Ljava/lang/String;

.field public final mParams:[Ljava/lang/Object;

.field public final mReturnValue:Ljava/lang/Object;

.field public final mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mReturnValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mParams:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mType:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [client= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    const-string/jumbo v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mParams:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ") -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_2

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mReturnValue:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print$1(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->eventToString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->mException:Ljava/lang/Exception;

    const-string/jumbo v1, "SoundTriggerMiddlewareLogging"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    invoke-static {v1, p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_0
    invoke-static {v1, p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_1
    invoke-static {v1, p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_2
    invoke-static {v1, p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method
